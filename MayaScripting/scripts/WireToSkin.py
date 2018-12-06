import maya.cmds as cmds
import Window
reload(Window)


class WireToSkin(Window.Window):
    ''' Transfers wire weights onto a skin cluster '''
    def __init__(self, name='Skin To Wire Window'):
        Window.Window.__init__(self, name)

    def CreateUI(self):
        ''' Creates a UI for this tool '''
        self.DelUI()

        self.mWin = cmds.window(self.mWin, title="Skin to Wire Tool")
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=100, rowSpacing=10, width=150)
        self.col = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout,
                                     rowSpacing=5)
        cmds.button(command=lambda *args: self.Skin(), height=25, label="Skin to Wire", parent=self.col)
        cmds.text(enable=False, height=50, parent=self.col, label='select the wire deformeres and the '
                                                                  'object to be skinned', ww=True)

        cmds.showWindow(self.mWin)

    def Skin(self):
        ''' Skins to joints based on wire deformer(s) skinning '''
        sel = cmds.ls(sl=True)
        cmds.select(cl=True)
        curves = []
        jnts = []
        skin = []
        masterJnts = []

        # gets the total number of curves in the selection
        for obj in sel:
            if cmds.nodeType((cmds.listRelatives(obj, shapes=True))) == 'nurbsCurve':
                curves.append(obj)
            else:
                skin.append(obj)

        # creates joints around each cv and the center of the curve
        for crv in curves:
            masterJnts = self.CreateJoint(0, crv, masterJnts)
            cv = len(cmds.ls(crv + '.cv[0:]', fl=True))
            jnts = self.CreateJoint(cv, crv, jnts)

        # unparents all the joints
        allJnts = jnts + masterJnts
        for obj in allJnts:
            if cmds.listRelatives(obj, parent=True) is not None:
                cmds.parent(obj, w=True)

        # skins the object
        cmds.skinCluster((allJnts + skin))
        verts = cmds.ls(skin[0] + '.vtx[0: ]', fl=True)
        sCluster = cmds.listConnections(cmds.listRelatives(skin, shapes=True)[0], t='skinCluster')[0]

        x = 0
        i = 0
        for crv in curves:
            cvs = cmds.ls(crv + '.cv[0: ]', fl=True)
            cmds.skinPercent(sCluster, skin, transformValue=[masterJnts[x], 1])

            # locks joints
            for jnt in jnts:
                cmds.skinCluster(skin, e=True, influence=jnt, lockWeights=True)

            # sets the weight for each vert
            for cv in cvs:
                pos = cmds.pointPosition(cv, w=True)

                for vert in verts:
                    # finds the skin weight by moving the vert
                    cmds.move((pos[0] - 1), pos[1], pos[2], cv, ws=True)
                    vPos1 = cmds.pointPosition(vert, w=True)
                    cmds.move(pos[0], pos[1], pos[2], cv, ws=True)
                    vPos2 = cmds.pointPosition(vert, w=True)
                    skinWeight = vPos1[0] - vPos2[0]
                    skinWeight = abs(skinWeight)
                    if skinWeight > 1:
                        skinWeight = 1.0

                    # edits the skin weight
                    cmds.skinCluster(skin, e=True, influence=jnts[i], lw=False)
                    mWeight = (cmds.skinPercent(sCluster, vert, transform=masterJnts[x], q=True)) - skinWeight
                    if mWeight < 0.000001:
                        mWeight = 0.0

                    cmds.skinPercent(sCluster, vert, transformValue=[masterJnts[x], mWeight])
                    cmds.skinPercent(sCluster, vert, transformValue=[jnts[i], skinWeight])
                    cmds.skinCluster(skin, e=True, influence=jnts[i], lw=True)
                i += 1
            x += 1

    def CreateJoint(self, length, obj, jnts):
        ''' creates joints along cvs of curve or at pivot based on provided length '''
        if length > 0:
            i = 0
            while i < length:
                jnt = cmds.joint()
                pos = cmds.pointPosition((obj + '.cv[' + str(i) + ']'), w=True)
                cmds.move(pos[0], pos[1], pos[2], jnt, ws=True)

                jnts.append(jnt)
                i += 1
        else:
            jnt = cmds.joint()
            cmds.matchTransform(jnt, obj)
            jnts.append(jnt)

        return jnts

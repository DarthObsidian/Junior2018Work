import maya.cmds as cmds
import Window
reload(Window)


class WireToSkin(Window.Window):
    def __init__(self, name='Wire To Skin Window'):
        Window.Window.__init__(self, name)

    def CreateUI(self):
        ''' Creates a UI for this tool '''
        self.DelUI()

        self.mWin = cmds.window(self.mWin, title="Wire to Skin Tool")
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=100, rowSpacing=10, width=150)
        self.col = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout,
                                     rowSpacing=5)
        cmds.button(command=lambda *args: self.Transfer(), height=25, label="Wire to Skin", parent=self.col)

        cmds.showWindow(self.mWin)

    def Transfer(self):
        sel = cmds.ls(sl=True)

        curves = []
        joints = []
        wires = []
        obj = None

        for obj in sel:
            if cmds.nodeType(cmds.listRelatives(obj, shapes=True)) == 'nurbsCurve':
                curves.append(obj)
            elif cmds.joint(obj, exists=obj):
                joints.append(obj)
            else:
                obj = obj

        if obj is not None:
            verts = cmds.ls(obj + '.vtx[0: ]', fl=True)
            clusters = cmds.listConnections(cmds.listRelatives(object, shapes=True)[0], t='skinCluster')[0]

            i = 1
            for curve in curves:
                wires.append(cmds.wire(object, dds=[i, 999999999], w=curve)[0])

            i = 0
            for jnt in joints:
                for vert in verts:
                    skinWeight = cmds.skinPercent(clusters, vert, transform=jnt, q=True, value=True)
                    cmds.percent(wires[i], vert, v=skinWeight)
                i += 1

        else:
            cmds.warning('Tool requires an object to be selected')

import maya.cmds as cmds


def Skin():
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
        masterJnts = CreateJoint(0, crv, masterJnts)
        cv = len(cmds.ls(crv + '.cv[0:]', fl=True))
        jnts = CreateJoint(cv, crv, jnts)

    # unparents all the joints
    allJnts = jnts + masterJnts
    for obj in allJnts:
        if cmds.listRelatives(obj, parent=True) is not None:
            cmds.parent(obj, w=True)

    # skins the object
    cmds.skinCluster((jnts + skin))
    verts = cmds.ls(skin[0] + '.vtx[0: ]', fl=True)

    for crv in curves:
        cvs = cmds.ls(crv + '.cv[0: ]', fl=True)

        i = 0
        for cv in cvs:
            pos = cmds.pointPosition(cv, w=True)
            cmds.move((pos[0] - 1), pos[1], pos[2], cv, ls=True)

            for vert in verts:
                vPos1 = cmds.pointPosition(vert, w=True)[0]
                cmds.move(pos[0], pos[1], pos[2], cv, ls=True)
                vPos2 = cmds.pointPosition(vert, w=True)[0]
                skinWeight = vPos1 - vPos2
                cmds.skinCluster(vert, e=True, influence=jnts[i], weight=skinWeight)
            i += 1


def CreateJoint(length, obj, jnts):
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


Skin()

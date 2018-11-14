import maya.cmds as cmds


def Skin():
    ''' Skins to joints based on wire deformer(s) skinning '''
    sel = cmds.ls(sl=True)
    cmds.select(cl=True)
    curves = []
    jnts = []

    # gets the total number of curves in the selection
    for obj in sel:
        if cmds.nodeType((cmds.listRelatives(obj, shapes=True))) == 'nurbsCurve':
            curves.append(obj)

    # creates joints around each cv and the center of the curve
    for crv in curves:
        jnts = CreateJoint(0, crv, jnts)
        cv = cmds.getAttr(crv + '.spans')
        jnts = CreateJoint(cv, crv, jnts)

    # unparents all the joints
    for obj in jnts:
        if cmds.listRelatives(obj, parent=True) is not None:
            cmds.parent(obj, w=True)


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

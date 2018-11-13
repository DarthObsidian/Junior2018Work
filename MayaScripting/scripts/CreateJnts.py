import maya.cmds as cmds


def CreateJoints():
    ''' Creates joints at selected objects positions in the order those objects were selected '''
    sels = cmds.ls(sl=True)
    cmds.select(cl=True)

    for sel in sels:
        jnt = cmds.joint(p=[0, 0, 0])
        cmds.matchTransform(jnt, sel, pos=True, rot=False, scl=False)

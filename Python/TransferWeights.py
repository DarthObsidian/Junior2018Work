import maya.cmds as cmds


def Transfer():
    sel = cmds.ls(sl=True)

    curves = []
    joints = []
    wires = []

    for obj in sel:
        if cmds.nodeType(cmds.listRelatives(obj, shapes=True)) == 'nurbsCurve':
            curves.append(obj)
        elif cmds.joint(obj, exists=obj):
            joints.append(obj)
        else:
            object = obj

    verts = cmds.ls(object + '.vtx[0: ]', fl=True)
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


Transfer()
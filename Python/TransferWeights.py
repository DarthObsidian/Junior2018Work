import maya.cmds as cmds


def Transfer():
    sel = cmds.ls(sl=True)

    curves = []
    joints = []

    for obj in sel:
        if cmds.nodeType(cmds.listRelatives(obj, shapes=True)) == 'nurbsCurve':
            curves.append(obj)
        elif cmds.joint(obj, exists=obj):
            joints.append(obj)
        else:
            object = obj

    verts = cmds.ls(object + '.vtx[0: ]', fl=True)
    clusters = cmds.listConnections(cmds.listRelatives(object, shapes=True)[0], t='skinCluster')[0]
    wire1 = cmds.wire(object, dds=[1, 999999999], w=curves[0])
    wire2 = cmds.wire(object, dds=[2, 999999999], w=curves[1])

    for vert in verts:
        skinWeight = cmds.skinPercent(clusters, vert, q=True, value=True)
        cmds.wire(vert, e=True, li=skinWeight[0], w=wire1[1])
        cmds.wire(vert, e=True, li=skinWeight[1], w=wire2[1])


Transfer()
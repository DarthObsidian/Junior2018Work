import maya.cmds as cmds


def CreateMDNode(opType):
    ''' Creates an Multipy Divide node with user defined operation, opType = int '''
    mdNode = cmds.createNode('multiplyDivide')
    cmds.setAttr(mdNode + '.operation', opType)
    return mdNode

def CreatePMANode(opType):
    ''' Creates a PlusMinusAverage node with user defined operation, opType = int '''
    pmaNode = cmds.createNode('plusMinusAverage')
    cmds.setAttr(pmaNode + '.operation', opType)
    return pmaNode

def Begin():
    ''' Selection order: Shoulder to Wrist, don't select Pole Vector control though '''
    sel = cmds.ls(sl=True)
    curves = []
    joints = []

    # separates joints from controls
    for obj in sel:
        if cmds.nodeType(cmds.listRelatives(obj, shapes=True)) == "nurbsCurve":
            curves.append(obj)
        else:
            joints.append(obj)

    # creates and constrains locators, in order for this to work you must select shoulder to wrist
    loc1 = cmds.spaceLocator(p=(cmds.xform(joints[0], q=True, t=True, ws=True)))[0]
    cmds.parentConstraint(curves[0], loc1, mo=True)
    loc2 = cmds.spaceLocator(p=(cmds.xform(joints[2], q=True, t=True, ws=True)))[0]
    cmds.parentConstraint(curves[1], loc2, mo=True)

    # creates distance node and connects the locators world positions to its points
    distNode = cmds.createNode('distanceBetween')
    cmds.connectAttr((loc1 + '.worldPosition'), (distNode + '.point1'))
    cmds.connectAttr((loc2 + '.worldPosition'), (distNode + '.point2'))

    # creates two MDNodes containing the original lengths of the joints
    length1MDNode = CreateMDNode(1)
    cmds.setAttr(length1MDNode + '.input1X', cmds.joint(joints[1], q=True, p=True, r=True)[0])
    length2MDNode = CreateMDNode(1)
    cmds.setAttr(length2MDNode + '.input1X', cmds.joint(joints[2], q=True, p=True, r=True)[0])

    # creates a plus minus average node and attaches the joint chain length
    totalLengthPMANode = CreatePMANode(1)
    cmds.connectAttr((length1MDNode + '.outputX'), (totalLengthPMANode + '.input1D[0]'))
    cmds.connectAttr((length2MDNode + '.outputX'), (totalLengthPMANode + '.input1D[1]'))

    # creates a MDNode that calculates if the distance is greater than the length
    scalarMDNode = CreateMDNode(2)
    cmds.connectAttr((distNode + '.distance'), (scalarMDNode + '.input1X'))
    cmds.connectAttr((totalLengthPMANode + '.output1D'), (scalarMDNode + '.input2X'))

Begin()

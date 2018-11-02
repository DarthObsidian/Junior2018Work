import maya.cmds as cmds


# gets the minimum transform value from a list of objects, requires specific direction: x=0, y=1, z=2
def FindMin(sels, direction):
    minValue = cmds.xform(sels[0], q=True, t=True, ws=True)[direction]
    for sel in sels:
        if cmds.xform(sel, q=True, t=True, ws=True)[direction] <= minValue:
            minValue = cmds.xform(sel, q=True, t=True, ws=True)[direction]
    return minValue


# gets the maximum transform value from a list of objects, requires specific direction: x=0, y=1, z=2
def FindMax(sels, direction):
    maxValue = cmds.xform(sels[0], q=True, t=True, ws=True)[direction]
    for sel in sels:
        if cmds.xform(sel, q=True, t=True, ws=True)[direction] >= maxValue:
            maxValue = cmds.xform(sel, q=True, t=True, ws=True)[direction]
    return maxValue


def CreateLoc(option=1):
    sels = cmds.ls(sl=True)

    if option == 1:
        minPivot = [FindMin(sels, 0), FindMin(sels, 1), FindMin(sels, 2)]
        maxPivot = [FindMax(sels, 0), FindMax(sels, 1), FindMax(sels, 2)]

        pivot = [(minPivot[0] + maxPivot[0]) / 2, (minPivot[1] + maxPivot[1]) / 2, (minPivot[2] + maxPivot[2]) / 2]

        loc = cmds.spaceLocator()[0]
        cmds.xform(loc, t=pivot, ws=True)

    elif option == 2:
        for sel in sels:
            pivot = cmds.xform(sel, q=True, t=True, ws=True)
            rot = cmds.xform(sel, q=True, ro=True, ws=True)
            loc = cmds.spaceLocator()[0]
            cmds.xform(loc, t=pivot, ws=True)
            cmds.xform(loc, ro=rot, ws=True)

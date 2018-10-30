import maya.cmds as cmds

def DupeAndMove(numDupe, minRange, maxRange):
    selections = None
    currentObj = cmds.ls(selection=True)[0]

    i=0
    while i < numDupe:
        temp = cmds.duplicate(currentObj, rr=True)
        selections[i] = temp[0]
        i += 1

    for objects in selections:
        pos = cmds.rand(minRange.x, maxRange.x), cmds.rand(minRange.y, maxRange.y), cmds.rand(minRange.z, maxRange.z)
        cmds.move(objects, pos.x, pos.y, pos.z, r=True)

    cmds.select(cl=True)

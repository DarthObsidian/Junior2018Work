import maya.cmds as cmds


def DupeAndMove(numDupe, minRange, maxRange):
    selections = []
    currentObj = cmds.ls(selection=True)[0]

    i = 0
    while i < numDupe:
        temp = cmds.duplicate(currentObj, rr=True)
        selections.append(temp[0])
        i += 1

    for objects in selections:
        pos = [cmds.rand(minRange[0], maxRange[0]), cmds.rand(minRange[1], maxRange[1]),
               cmds.rand(minRange[2], maxRange[2])]
        cmds.move(objects, pos[0], pos[1], pos[2], r=True)

    cmds.select(cl=True)

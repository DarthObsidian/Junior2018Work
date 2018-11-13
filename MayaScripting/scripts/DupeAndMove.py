import maya.cmds as cmds
import random as rand


def DupeAndMove(numDupe, minRange, maxRange):
    ''' Takes a selection and duplicates it and moves the duplicates to random places based on a given range '''
    selections = []
    currentObj = cmds.ls(selection=True)[0]

    i = 0
    while i < numDupe:
        temp = cmds.duplicate(currentObj, rr=True)
        selections.append(temp[0])
        i += 1

    for objects in selections:
        pos = [rand.randrange(minRange[0], maxRange[0]), rand.randrange(minRange[1], maxRange[1]),
               rand.randrange(minRange[2], maxRange[2])]
        cmds.move(pos[0], pos[1], pos[2], objects, r=True)

    cmds.select(cl=True)

import maya.cmds as cmds


def Rename(prefix, objectName, padding, suffix, num):
    temp = str(num)
    if padding is not "none":
        size = len(padding) - (len(temp) - 1)

        i = 0
        while i < size:
            temp = '0' + temp
            i += 1

    if prefix is "none" and suffix is "none":
        return objectName + "_" + temp
    elif prefix is "none" and suffix is not "none":
        return objectName + "_" + temp + "_" + suffix
    elif prefix is not "none" and suffix is "none":
        return prefix + "_" + objectName + "_" + temp
    else:
        return prefix + "_" + objectName + "_" + temp + "_" + suffix


def RenameSelection(prefix, objectName, padding, suffix):
    selections = cmds.ls(selection=True)
    number = 1
    for objects in selections:
        newName = Rename(prefix, objectName, padding, suffix, number)
        cmds.rename(objects, newName)
        number += 1

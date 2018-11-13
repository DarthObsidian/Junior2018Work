import maya.cmds as cmds


def Rename(prefix, objectName, padding, suffix, num):
    ''' Renames an object to user specified name '''
    temp = str(num)
    if padding is not "none":
        size = len(padding) - (len(temp) - 1)

        i = 0
        while i < size:
            temp = '0' + temp
            i += 1

    if prefix == "none" and suffix == "none":
        return objectName + "_" + temp
    elif prefix == "none" and suffix != "none":
        return objectName + "_" + temp + "_" + suffix
    elif prefix != "none" and suffix == "none":
        return prefix + "_" + objectName + "_" + temp
    else:
        return prefix + "_" + objectName + "_" + temp + "_" + suffix


def RenameSelection(prefix, objectName, padding, suffix):
    ''' Sequentially renames a selection of objects '''
    selections = cmds.ls(selection=True)
    number = 1
    for objects in selections:
        newName = Rename(prefix, objectName, padding, suffix, number)
        cmds.rename(objects, newName)
        number += 1

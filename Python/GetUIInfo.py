import maya.cmds as cmds


def GetFloatGrpValue(floatGrpName):
    value = cmds.floatFieldGrp(floatGrpName, q=True, v=True)
    return value


def GetIntGrpValue(intGrpName):
    value = cmds.intFieldGrp(intGrpName, q=True, v=True)
    return value


def GetOptionMenuValue(optionMnuName):
    value = cmds.optionMenu(optionMnuName, q=True, v=True)
    return value


def GetCheckBoxValue(checkBoxName):
    value = cmds.checkBox(checkBoxName, q=True, v=True)
    return value


def GetTextGrpValue(textGrpName):
    value = cmds.textFieldGrp(textGrpName, q=True, text=True)
    return value


def GetColorIndexSliderGrpValue(color):
    value = cmds.colorIndexSliderGrp(color, q=True, v=True)
    return value

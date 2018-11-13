import maya.cmds as cmds


def GetFloatGrpValue(floatGrpName):
    ''' Returns the value of a float field group '''
    value = cmds.floatFieldGrp(floatGrpName, q=True, v=True)
    return value


def GetIntGrpValue(intGrpName):
    ''' Returns the value of an int group '''
    value = cmds.intFieldGrp(intGrpName, q=True, v=True)
    return value


def GetOptionMenuValue(optionMnuName):
    ''' Returns the value of an option menu '''
    value = cmds.optionMenu(optionMnuName, q=True, v=True)
    return value


def GetCheckBoxValue(checkBoxName):
    ''' Returns the value of a check box '''
    value = cmds.checkBox(checkBoxName, q=True, v=True)
    return value


def GetTextGrpValue(textGrpName):
    ''' Returns the value of a text group '''
    value = cmds.textFieldGrp(textGrpName, q=True, text=True)
    return value


def GetColorIndexSliderGrpValue(color):
    ''' Returns the value of a color index slider group '''
    value = cmds.colorIndexSliderGrp(color, q=True, v=True)
    return value

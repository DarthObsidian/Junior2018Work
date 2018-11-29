import maya.cmds as cmds


class Window:
    ''' Base class used for creating Maya UI windows '''
    def __init__(self, name='Window'):
        self.mWin = name

    def CreateUI(self):
        ''' Creates a default UI with an error message '''
        self.DelUI()

        self.mWin = cmds.window(self.mWin, title='Default Window')
        mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn=True)
        cmds.textField(enable=False, parent=mCol, text='No Window was initialized')
        cmds.showWindow(self.mWin)

    def DelUI(self):
        ''' Checks if a UI exists and if so, deletes it '''
        if cmds.window(self.mWin, exists=True):
            cmds.deleteUI(self.mWin)

    def GetFloatGrpValue(self, floatGrpName):
        ''' Returns the value of a float field group '''
        value = cmds.floatFieldGrp(floatGrpName, q=True, v=True)
        return value

    def GetIntGrpValue(self, intGrpName):
        ''' Returns the value of an int group '''
        value = cmds.intFieldGrp(intGrpName, q=True, v=True)
        return value

    def GetOptionMenuValue(self, optionMnuName):
        ''' Returns the value of an option menu '''
        value = cmds.optionMenu(optionMnuName, q=True, v=True)
        return value

    def GetCheckBoxValue(self, checkBoxName):
        ''' Returns the value of a check box '''
        value = cmds.checkBox(checkBoxName, q=True, v=True)
        return value

    def GetTextGrpValue(self, textGrpName):
        ''' Returns the value of a text group '''
        value = cmds.textFieldGrp(textGrpName, q=True, text=True)
        return value

    def GetColorIndexSliderGrpValue(self, color):
        ''' Returns the value of a color index slider group '''
        value = cmds.colorIndexSliderGrp(color, q=True, v=True)
        return value

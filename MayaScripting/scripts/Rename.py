import maya.cmds as cmds
import Window
reload(Window)


class Rename(Window.Window):
    def __init__(self, name='Rename Window'):
        Window.Window.__init__(self, name)

    def CreateUI(self):
        ''' Creates a UI for this tool '''
        self.DelUI()

        window = cmds.window(self.mWin, height=150, title="Rename Objects", width=300)
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=150, parent=window, rowSpacing=10)
        column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout,
                                   rowSpacing=5)
        self.textGrp = cmds.textFieldGrp(adjustableColumn=True, columnAlign=[1, "left"], columnWidth=[2, 100],
                                         label="Name: ", parent=column)

        self.oMenuPrefix = cmds.optionMenu(label="Prefix", parent=column, width=100)
        cmds.menuItem(label="R", parent=self.oMenuPrefix)
        cmds.menuItem(label="L", parent=self.oMenuPrefix)
        cmds.menuItem(label="none", parent=self.oMenuPrefix)

        self.oMenuSuffix = cmds.optionMenu(label="Suffix", parent=column, width=100)
        cmds.menuItem(label="Geo", parent=self.oMenuSuffix)
        cmds.menuItem(label="Jnt", parent=self.oMenuSuffix)
        cmds.menuItem(label="Ctrl", parent=self.oMenuSuffix)
        cmds.menuItem(label="Grp", parent=self.oMenuSuffix)
        cmds.menuItem(label="Ctrl_Grp", parent=self.oMenuSuffix)
        cmds.menuItem(label="Loc", parent=self.oMenuSuffix)
        cmds.menuItem(label="none", parent=self.oMenuSuffix)

        self.oMenuPadding = cmds.optionMenu(label="Padding", parent=column, width=100)
        cmds.menuItem(label="#", parent=self.oMenuPadding)
        cmds.menuItem(label="##", parent=self.oMenuPadding)
        cmds.menuItem(label="none", parent=self.oMenuPadding)

        self.row1 = cmds.rowLayout(adjustableColumn=True, parent=self.mLayout)
        self.row2 = cmds.rowLayout(adjustableColumn=True, columnAttach1="both", columnOffset1=100, parent=self.row1)
        cmds.button(height=25, label="Rename", command=lambda *args: self.GetRename(self.oMenuPrefix, self.textGrp,
                    self.oMenuPadding, self.oMenuSuffix), parent=self.row2, width=100)

        cmds.showWindow(window)

    def GetRename(self, prefixName, objectName, paddingName, suffixName):
        ''' Gets the user input from the rename UI and sends it to the Rename script '''
        prefix = self.GetOptionMenuValue(prefixName)
        name = self.GetTextGrpValue(objectName)
        padding = self.GetOptionMenuValue(paddingName)
        suffix = self.GetOptionMenuValue(suffixName)
        self.RenameSelection(prefix, name, padding, suffix)

    def Rename(self, prefix, objectName, padding, suffix, num):
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

    def RenameSelection(self, prefix, objectName, padding, suffix):
        ''' Sequentially renames a selection of objects '''
        selections = cmds.ls(selection=True)
        number = 1
        for objects in selections:
            newName = self.Rename(prefix, objectName, padding, suffix, number)
            cmds.rename(objects, newName)
            number += 1

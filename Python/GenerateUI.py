import DupeAndMove
import Controls
import Rename
import GetUIInfo
import maya.cmds as cmds


def GetDupeMove(numDupeName, minFloatName, maxFloatName):
    duplicates = GetUIInfo.GetIntGrpValue(numDupeName)
    mini = GetUIInfo.GetFloatGrpValue(minFloatName)
    maxi = GetUIInfo.GetFloatGrpValue(maxFloatName)
    DupeAndMove.DupeAndMove(duplicates[0], mini, maxi)


def DupeAndMoveUI():
    mainWindow = "RandomPlacementWindow"
    if cmds.window(mainWindow, exists=True):
        cmds.deleteUI(mainWindow)

    mainWindow = cmds.window(mainWindow, title="Random Placement Generator")
    mainColumn = cmds.columnLayout(adjustableColumn=True, columnAttach=("both", 50), height=125, rowSpacing=5)
    myIntGrp = cmds.intFieldGrp(columnWidth2=[98, 75], label="Num Duplicates: ", parent=mainColumn)
    minFloatGrp = cmds.floatFieldGrp(columnWidth4=[75, 75, 75, 75], label="Min Range: ", numberOfFields=3,
                                     parent=mainColumn)
    maxFloatGrp = cmds.floatFieldGrp(columnWidth4=[75, 75, 75, 75], label="Max Range: ", numberOfFields=3,
                                     parent=mainColumn)
    myButton = cmds.button(command=GetDupeMove(myIntGrp, minFloatGrp, maxFloatGrp), label="Generate", parent=mainColumn)
    cmds.showWindow(mainWindow)


def GetRename(prefixName, objectName, paddingName, suffixName):
    prefix = GetUIInfo.GetOptionMenuValue(prefixName)
    name = GetUIInfo.GetTextGrpValue(objectName)
    padding = GetUIInfo.GetOptionMenuValue(paddingName)
    suffix = GetUIInfo.GetOptionMenuValue(suffixName)
    Rename.RenameSelection(prefix, name, padding, suffix)


def RenameUI():
    window = "RenameWindow"
    if cmds.window(window, exists=True):
        cmds.deleteUI(window)

    window = cmds.window(window, height=150, title="Rename Objects", width=300)
    mainLayout = cmds.columnLayout(adjustableColumn=True, height=150, parent=window, rowSpacing=10)
    column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=mainLayout, rowSpacing=5)
    textGrp = cmds.textFieldGrp(adjustableColumn=True, columnAlign=[1, "left"], columnWidth=[2, 100], label="Name: ",
                                parent=column)
    oMenuPrefix = cmds.optionMenu(label="Prefix", parent=column, width=100)
    cmds.menuItem(label="R")
    cmds.menuItem(label="L")
    cmds.menuItem(label="none")

    oMenuSuffix = cmds.optionMenu(label="Suffix", parent=column, width=100)
    cmds.menuItem(label="Geo")
    cmds.menuItem(label="Jnt")
    cmds.menuItem(label="Ctrl")
    cmds.menuItem(label="Grp")
    cmds.menuItem(label="Ctrl_Grp")
    cmds.menuItem(label="Loc")
    cmds.menuItem(label="none")

    oMenuPadding = cmds.optionMenu(label="Padding", parent=column, width=100)
    cmds.menuItem(label="#")
    cmds.menuItem(label="##")
    cmds.menuItem(label="none")

    row1 = cmds.rowLayout(adjustableColumn=True, parent=mainLayout)
    row2 = cmds.rowLayout(adjustableColumn=True, columnAttach1="both", columnOffset1=100, parent=row1)
    button = cmds.button(height=25, label="Rename", command=GetRename(oMenuPrefix, textGrp, oMenuPadding, oMenuSuffix),
                parent=row2, width= 100)
    cmds.showWindow(window)


def GetControlInfo(colorName, shapeName, constraintName, scaleName, separateName):
    ctrlColor = GetUIInfo.GetColorIndexSliderGrpValue(colorName)
    shape = GetUIInfo.GetOptionMenuValue(shapeName)
    doConstraint = GetUIInfo.GetCheckBoxValue(constraintName)
    scale = GetUIInfo.GetCheckBoxValue(scaleName)
    separate = GetUIInfo.GetCheckBoxValue(separateName)

    Controls.CreateControl(ctrlColor, shape, doConstraint, scale, separate)


def Enable(doConstrain, scale, separate):
    if not cmds.checkBox(doConstrain, query=True, v=True):
        cmds.checkBox(scale, e=True, enable=False, visible=False)
        cmds.checkBox(separate, e=True, enable=False, visible=False)
    else:
        cmds.checkBox(scale, e=True, enable=True, visible=True,)
        cmds.checkBox(separate, e=True, enable=True, visible=True)


def CreateControlsUI():
    window = "ControlsWindow"
    if cmds.window(window, exists=True):
        cmds.deleteUI(window)

    window = cmds.window(window, height=175, title="Create Controls", width=350)
    mainLayout = cmds.columnLayout(adjustableColumn=True, height=175, rowSpacing=10)
    column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=mainLayout, rowSpacing=5)

    oMenuShape = cmds.optionMenu(label="Control Shape", parent=column, width=100)
    cmds.menuItem(label="circle")
    cmds.menuItem(label="square")
    cmds.menuItem(label="flower")
    cmds.menuItem(label="diamond")

    color = cmds.colorIndexSliderGrp(maxValue=32, minValue=1, parent=column)
    scaleBox = "Scale"
    separateBox = "Separate";
    constrainBox = "Constrain";
    constrainBox = cmds.checkBox(constrainBox, cc=Enable(constrainBox, scaleBox, separateBox), label="Constrain",
                        parent=column)
    checkColumn = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 50], parent=column, rowSpacing=5)
    scaleBox = cmds.checkBox(scaleBox, enable=False, label="Scale", parent=checkColumn, visible=False)
    separateBox = cmds.checkBox(separateBox, enable=False, label="Separate Translate and Rotate", parent=checkColumn,
                        visible=False)
    row = cmds.rowLayout(adjustableColumn=True, columnAttach1="both", columnOffset1=100, parent=mainLayout)
    button = cmds.button(height=25, label="Create Controls", command=GetControlInfo(color, oMenuShape, constrainBox,
                        scaleBox, separateBox), parent=row,
                        width=100)
    cmds.showWindow(window)


def ToolBox():
    window = "Matthew's Toolbox"
    if cmds.window(window, exists=True):
        cmds.deleteUI(window)

    window = cmds.window(window, height=50, title="Matthew's Toolbox", width=275)
    mainLayout = cmds.columnLayout(adjustableColumn=True, height=100, rowSpacing=10, width=275)
    column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=mainLayout, rowSpacing=5)
    cmds.button(command=RenameUI, height=25, label="Rename", parent=column)
    cmds.button(command=CreateControlsUI, height=25, label="Controls", parent=column)
    cmds.button(command=DupeAndMoveUI, height=25, label="DupeAndMove", parent=column)
    cmds.showWindow(window)


ToolBox()

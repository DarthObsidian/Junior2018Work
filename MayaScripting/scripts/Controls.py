import maya.cmds as cmds
import Window
reload(Window)


class Controls(Window):
    def __init__(self, name='Control Window'):
        super(Controls, self).__init__(name)

    def CreateUI(self):
        ''' Creates the UI for control creation '''
        self.DelUI()

        self.mWin = cmds.window(self.mWin, height=175, title="Create Controls", width=350)
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=175, rowSpacing=10)
        column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout, rowSpacing=5)

        self.oMenuShape = cmds.optionMenu(label="Control Shape", parent=column, width=100)
        cmds.menuItem(label="circle", parent=self.oMenuShape)
        cmds.menuItem(label="square", parent=self.oMenuShape)
        cmds.menuItem(label="flower", parent=self.oMenuShape)
        cmds.menuItem(label="diamond", parent=self.oMenuShape)

        color = cmds.colorIndexSliderGrp(maxValue=32, minValue=1, parent=column)
        scaleBox = "Scale"
        separateBox = "Separate"
        constrainBox = "Constrain"
        constrainBox = cmds.checkBox(constrainBox, cc=lambda *args: self.Enable(constrainBox, scaleBox, separateBox),
                                     label="Constrain", parent=column)
        checkColumn = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 50], parent=column, rowSpacing=5)
        scaleBox = cmds.checkBox(scaleBox, enable=False, label="Scale", parent=checkColumn, visible=False)
        separateBox = cmds.checkBox(separateBox, enable=False, label="Separate Translate and Rotate",
                                    parent=checkColumn, visible=False)
        row = cmds.rowLayout(adjustableColumn=True, columnAttach1="both", columnOffset1=100, parent=self.mLayout)
        cmds.button(height=25, label="Create Controls", command=lambda *args: self.GetControlInfo(color,
                    self.oMenuShape, constrainBox, scaleBox, separateBox), parent=row, width=100)
        cmds.showWindow(self.mWin)

    def GetControlInfo(self, colorName, shapeName, constraintName, scaleName, separateName):
        ''' Gets user input from the control UI and sends it to the Controls script '''
        ctrlColor = self.GetColorIndexSliderGrpValue(colorName)
        shape = self.GetOptionMenuValue(shapeName)
        doConstraint = self.GetCheckBoxValue(constraintName)
        scale = self.GetCheckBoxValue(scaleName)
        separate = self.GetCheckBoxValue(separateName)

        self.CreateControl(ctrlColor, shape, doConstraint, scale, separate)

    def Enable(self, doConstrain, scale, separate):
        ''' Enables or disables constraint checkboxes based on user input '''
        if not cmds.checkBox(doConstrain, query=True, v=True):
            cmds.checkBox(scale, e=True, enable=False, visible=False)
            cmds.checkBox(separate, e=True, enable=False, visible=False)
        else:
            cmds.checkBox(scale, e=True, enable=True, visible=True, )
            cmds.checkBox(separate, e=True, enable=True, visible=True)

    def ColorControls(self, ctrlName, color):
        ''' Changes the color of a specified nurbsCurve using indexes '''
        shapes = cmds.listRelatives(ctrlName, shapes=True)

        for shape in shapes:
            if cmds.nodeType(shape) == "nurbsCurve":
                cmds.setAttr((shape + ".overrideEnabled"), 1)
                cmds.setAttr((shape + ".overrideColor"), color)

            else:
                cmds.warning("Selected object is not a curve")

    def CreateCtrlShape(self, shape):
        ''' Changes the look of the generated nurbesCurve based on input '''
        ctrl = None

        if shape == "circle":
            ctrl = cmds.circle(c=[0, 0, 0], nr=[0, 1, 0], sw=360, r=1, d=3, ut=0, tol=0.01, s=8, ch=1)[0]
        elif shape == "flower":
            points = [[-0.3, 0, 0.3], [0, 0, -1.2], [0.3, 0, 0.3], [-1.2, 0, 0], [0.3, 0, -0.3], [0, 0, 1.2],
                      [-0.3, 0, -0.3], [1.2, 0, 0]]
            knots = [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7]
            ctrl = cmds.curve(d=3, p=points, k=knots)
            cmds.closeCurve(ctrl, ch=1, ps=0, rpo=1, bb=0.5, bki=1, p=0)
        elif shape == "square":
            points = [[1, 0, -1], [-1, 0, -1], [-1, 0, 1], [1, 0, 1]]
            knots = [0, 1, 2, 3]
            ctrl = cmds.curve(d=1, p=points, k=knots)
            cmds.closeCurve(ctrl, ch=1, ps=1, rpo=1, bb=0.5, bki=0, p=0.1)
        elif shape == "diamond":
            points = [[0.2, 0, -0.2], [0, 0, -1.2], [-0.2, 0, -0.2], [-1.2, 0, 0], [-0.2, 0, 0.2], [0, 0, 1.2],
                      [0.2, 0, 0.2], [1.2, 0, 0]]
            knots = [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7]
            ctrl = cmds.curve(d=3, p=points, k=knots)
            cmds.closeCurve(ctrl, ch=1, ps=0, rpo=1, bb=0.5, bki=1, p=0)
        else:
            cmds.warning("Invalid shape")

        if ctrl is not None:
            cmds.move(0, 0, 0, ctrl)
        return ctrl

    def Constrain(self, constrainer, constrainee, doConstraint, scale, separate):
        ''' Contrains two specified objects together, parent(can be separated between scale and translate, and/or scale '''
        if doConstraint:
            cmds.select(constrainer, r=True)
            cmds.select(constrainee, tgl=True)
            if scale:
                cmds.scaleConstraint(offset=[1, 1, 1], weight=1)

            if separate:
                cmds.parentConstraint(mo=True, skipRotate=['x', 'y', 'z'], weight=1)
                cmds.parentConstraint(mo=True, skipTranslate=['x', 'y', 'z'], weight=1)
            else:
                cmds.parentConstraint(mo=True, weight=1)

    def CreateControl(self, ctrlColor, shape, doConstraint, scale, separate):
        ''' If objects are selected, creates and moves controls to those objects, otherwise creates a control at origin '''
        sels = cmds.ls(sl=True)

        if len(sels) > 0:
            for selection in sels:
                ctrl = self.CreateCtrlShape(shape)
                self.ColorControls(ctrl, ctrlColor)

                obj = cmds.rename(ctrl, (selection + "_Ctrl"))
                grp = cmds.group(obj, world=True, name=(obj + "_Grp"))

                cmds.matchTransform(grp, selection)
                self.Constrain(obj, selection, doConstraint, scale, separate)
        else:
            ctrl = self.CreateCtrlShape(shape)
            self.ColorControls(ctrl, ctrlColor)

            obj = cmds.rename(ctrl, "ctrl")
            cmds.group(obj, world=True, name=(obj + "_Grp"))
        cmds.select(cl=True)

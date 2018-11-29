import maya.cmds as cmds
import Window
reload(Window)


class Locator(Window):
    def __init__(self, name='Locator Window'):
        super(Locator, self).__init__(name)

    def CreateUI(self):
        ''' Creates UI for locator placement '''
        self.DelUI()

        self.mWin = cmds.window(self.mWin, height=175, title="Create Locator at Center", width=350)
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=100, rowSpacing=10, width=275)
        column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout,
                                   rowSpacing=5)
        cmds.button(command=lambda *args: self.CreateLoc(2), height=25, label='Rotated Pivot', parent=column)
        cmds.button(command=lambda *args: self.CreateLoc(1), height=25, label='Center Pivot', parent=column)
        cmds.showWindow(self.mWin)

    def FindMin(self, sels, direction):
        ''' gets the minimum transform value from a list of objects, requires specific direction: x=0, y=1, z=2 '''
        minValue = cmds.xform(sels[0], q=True, t=True, ws=True)[direction]
        for sel in sels:
            if cmds.xform(sel, q=True, t=True, ws=True)[direction] <= minValue:
                minValue = cmds.xform(sel, q=True, t=True, ws=True)[direction]
        return minValue

    def FindMax(self, sels, direction):
        ''' gets the maximum transform value from a list of objects, requires specific direction: x=0, y=1, z=2 '''
        maxValue = cmds.xform(sels[0], q=True, t=True, ws=True)[direction]
        for sel in sels:
            if cmds.xform(sel, q=True, t=True, ws=True)[direction] >= maxValue:
                maxValue = cmds.xform(sel, q=True, t=True, ws=True)[direction]
        return maxValue

    def CreateLoc(self, option=1):
        ''' Creates a locator at the center of selection, or the pivot of each object, defaults to former '''
        sels = cmds.ls(sl=True)

        if option == 1:
            minPivot = [self.FindMin(sels, 0), self.FindMin(sels, 1), self.FindMin(sels, 2)]
            maxPivot = [self.FindMax(sels, 0), self.FindMax(sels, 1), self.FindMax(sels, 2)]

            pivot = [(minPivot[0] + maxPivot[0]) / 2, (minPivot[1] + maxPivot[1]) / 2, (minPivot[2] + maxPivot[2]) / 2]

            loc = cmds.spaceLocator()[0]
            cmds.xform(loc, t=pivot, ws=True)

        elif option == 2:
            for sel in sels:
                pivot = cmds.xform(sel, q=True, t=True, ws=True)
                rot = cmds.xform(sel, q=True, ro=True, ws=True)
                loc = cmds.spaceLocator()[0]
                cmds.xform(loc, t=pivot, ws=True)
                cmds.xform(loc, ro=rot, ws=True)

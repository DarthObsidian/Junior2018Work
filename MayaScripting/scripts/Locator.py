import maya.cmds as cmds
import Window
reload(Window)


class Locator(Window.Window):
    def __init__(self, name='Locator Window'):
        Window.Window.__init__(self, name)

    def CreateUI(self):
        ''' Creates a UI for this tool '''
        self.DelUI()

        self.mWin = cmds.window(self.mWin, height=175, title="Create Locator at Center", width=350)
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=100, rowSpacing=10, width=275)
        column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout,
                                   rowSpacing=5)
        cmds.button(command=lambda *args: self.CreateLoc(2), height=25, label='Rotated Pivot', parent=column)
        cmds.button(command=lambda *args: self.CreateLoc(1), height=25, label='Center Pivot', parent=column)

        cmds.showWindow(self.mWin)

    def CreateLoc(self, option=1):
        ''' Creates a locator at the center of selection, or the pivot of each object, defaults to former '''
        sels = cmds.ls(sl=True)

        if option == 1:
            bbox = cmds.exactWorldBoundingBox(sels)
            pivot = [(bbox[0] + bbox[3]) / 2, (bbox[1] + bbox[4]) / 2, (bbox[2] + bbox[5]) / 2]

            loc = cmds.spaceLocator()[0]
            cmds.xform(loc, t=pivot, ws=True)

        elif option == 2:
            for sel in sels:
                pivot = cmds.xform(sel, q=True, t=True, ws=True)
                rot = cmds.xform(sel, q=True, ro=True, ws=True)
                loc = cmds.spaceLocator()[0]
                cmds.xform(loc, t=pivot, ws=True)
                cmds.xform(loc, ro=rot, ws=True)

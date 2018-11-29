import maya.cmds as cmds
import Window

reload(Window)







class ToolBox(Window):
    ''' Creates UI for access to Matthew's Toolbox '''
    def __init__(self, name='mmToolbox'):
        super(ToolBox, self).__init__(name)

    def CreateUI(self):
        self.DelUI()

        self.mWin = cmds.window(self.mWin, height=50, title="mmToolbox", width=275)
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=200, rowSpacing=10, width=275)
        column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout, rowSpacing=5)
        cmds.button(command=lambda *args: self.RenameTool(), height=25, label="Rename", parent=column)
        cmds.button(command=lambda *args: self.ControlsTool(), height=25, label="Controls", parent=column)
        cmds.button(command=lambda *args: self.RandomTool(), height=25, label="DupeAndMove", parent=column)
        cmds.button(command=lambda *args: self.LocatorTool(), height=25, label='Locator', parent=column)
        cmds.button(command=lambda *args: self.JointsTool(), height=25, label='Jnts', parent=column)
        cmds.showWindow(self.mWin)

    def RenameTool(self):
        import Rename
        reload(Rename)
        renameTool = Rename.Rename()
        renameTool.CreateUI()

    def ControlsTool(self):
        import Controls
        reload(Controls)
        controlsTool = Controls.Controls()
        controlsTool.CreateUI()

    def RandomTool(self):
        import DupeAndMove
        reload(DupeAndMove)
        randomTool = DupeAndMove.DupeAndMove()
        randomTool.CreateUI()

    def LocatorTool(self):
        import Locator
        reload(Locator)
        locatorTool = Locator.Locator()
        locatorTool.CreateUI()

    def JointsTool(self):
        import CreateJnts
        reload(CreateJnts)
        jointsTool = CreateJnts.CreateJnts()
        jointsTool.CreateUI()
import maya.cmds as cmds
import Window
reload(Window)


class ToolBox(Window.Window):
    ''' Creates UI for access to Matthew's Toolbox '''
    def __init__(self, name='mmToolbox'):
        Window.Window.__init__(self, name)

    def CreateUI(self):
        self.DelUI()

        self.mWin = cmds.window(self.mWin, height=50, title="mmToolbox", width=275)
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=300, rowSpacing=10, width=275)
        column = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout, rowSpacing=5)
        cmds.button(command=lambda *args: self.RenameTool(), height=25, label="Rename", parent=column)
        cmds.button(command=lambda *args: self.ControlsTool(), height=25, label="Controls", parent=column)
        cmds.button(command=lambda *args: self.RandomTool(), height=25, label="Rand Placement", parent=column)
        cmds.button(command=lambda *args: self.LocatorTool(), height=25, label='Locator', parent=column)
        cmds.button(command=lambda *args: self.JointsTool(), height=25, label='Joints', parent=column)
        cmds.button(command=lambda *args: self.StretchyIKTool(), height=25, label='StretchyIK', parent=column)
        cmds.button(command=lambda *args: self.WireToSkin(), height=25, label='WireToSkin', parent=column)
        cmds.button(command=lambda *args: self.SkinToWire(), height=25, label='SkinToWire', parent=column)

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
        import RandomPlacement
        reload(RandomPlacement)
        randomTool = RandomPlacement.RandomPlacement()
        randomTool.CreateUI()

    def LocatorTool(self):
        import Locator
        reload(Locator)
        locatorTool = Locator.Locator()
        locatorTool.CreateUI()

    def JointsTool(self):
        import CreateJnts
        reload(CreateJnts)
        jointsTool = CreateJnts.CreateJoints()
        jointsTool.CreateUI()

    def StretchyIKTool(self):
        import StretchyIK
        reload(StretchyIK)
        stretchyTool = StretchyIK.StretchyIK()
        stretchyTool.CreateUI()

    def WireToSkin(self):
        import WireToSkin
        reload(WireToSkin)
        wireToSkinTool = WireToSkin.WireToSkin()
        wireToSkinTool.CreateUI()

    def SkinToWire(self):
        import SkinToWire
        reload(SkinToWire)
        skinToWireTool = SkinToWire.SkinToWire()
        skinToWireTool.CreateUI()

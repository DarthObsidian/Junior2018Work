import maya.cmds as cmds
import Window
reload(Window)


class CreateJoints(Window.Window):
    def __init__(self, name='Create Joints'):
        Window.Window.__init__(self, name)

    def CreateUI(self):
        ''' Creates a UI for this tool '''
        self.DelUI()

        self.mWin = cmds.window(self.mWin, title="Joint Tool")
        self.mLayout = cmds.columnLayout(adjustableColumn=True, height=100, rowSpacing=10, width=150)
        self.col = cmds.columnLayout(adjustableColumn=True, columnAttach=["both", 25], parent=self.mLayout,
                                     rowSpacing=5)
        cmds.button(command=lambda *args: self.CreateJnts(), height=25, label="Create Joints", parent=self.col)

        cmds.showWindow(self.mWin)

    def CreateJnts(self):
        ''' Creates joints at selected objects positions in the order those objects were selected '''
        sels = cmds.ls(sl=True)
        cmds.select(cl=True)

        for sel in sels:
            jnt = cmds.joint(p=[0, 0, 0])
            cmds.matchTransform(jnt, sel, pos=True, rot=False, scl=False)

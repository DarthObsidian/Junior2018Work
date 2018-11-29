import maya.cmds as cmds
import random as rand
import Window
reload(Window)


class DupeAndMove(Window):
    def __init__(self, name='Random Placement Generator'):
        super(DupeAndMove, self).__init__(name)

    def GetDupeMove(self, numDupeName, minFloatName, maxFloatName):
        ''' Gets the user input from the random placement UI and sends it to DupeAndMove script '''
        duplicates = self.GetIntGrpValue(numDupeName)
        mini = self.GetFloatGrpValue(minFloatName)
        maxi = self.GetFloatGrpValue(maxFloatName)
        DupeAndMove.DupeAndMove(duplicates[0], mini, maxi)


    def DupeAndMoveUI(self):
        ''' Creates the UI for the random placement and duplication '''
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
        myButton = cmds.button(command=lambda *args: self.GetDupeMove(myIntGrp, minFloatGrp, maxFloatGrp),
                               label="Generate", parent=mainColumn)
        cmds.showWindow(mainWindow)

    def DupeAndMove(self, numDupe, minRange, maxRange):
        ''' Takes a selection and duplicates it and moves the duplicates to random places based on a given range '''
        selections = []
        currentObj = cmds.ls(selection=True)[0]

        i = 0
        while i < numDupe:
            temp = cmds.duplicate(currentObj, rr=True)
            selections.append(temp[0])
            i += 1

        for objects in selections:
            pos = [rand.randrange(minRange[0], maxRange[0]), rand.randrange(minRange[1], maxRange[1]),
                   rand.randrange(minRange[2], maxRange[2])]
            cmds.move(pos[0], pos[1], pos[2], objects, r=True)

        cmds.select(cl=True)

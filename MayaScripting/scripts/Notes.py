# import maya.cmds as cmds


# def Sum(x, y):
#     return x + y
#
# lambda x, y: x + y
# these two do the same thing

# print name + ' ' + lastName + ' ' + age
# print name, lastName, age
# these two do the same thing

# help(functionName): prints the contents of ''' statements for the specified function
# def Sum(x, y):
# ''' prints the sum of two values '''
#     return x + y
#
#
# help(Sum) would then print: prints the sum of two values

# Classes
# class Animal()
# class Dog(Animal)
# pete = Dog()
# pete.friendLevel()
# self is a keyword to reference the specific instance of the class
# contructors are defined as __init__(self):


# import maya.cmds as cmds

# class LocatorWindow:
#     def __init__(self):
#         self.mWin = 'LocWindow'

#     def create(self):
#         self.delUI()
#
#         self.mWin = cmds.window(self.mWin, title='Create Locator')
#         mCol = cmds.columnLayout(parent=self.mWin, adjustableColumn=True)
#         self.dropCtrl = cmds.optionMenu(parent=mCol, label='Type')
#         cmds.menuItem(parent=self.dropCtrl, label='Bounding Boc')
#         cmds.menuItem(parent=self.dropCtrl, label='Pivot')
#         cmds.button(parent=mCol, label='Create Locator')

#         cmds.showWindow(self.mWin)

#     def delUI(self):
#         if cmds.window(self.mWin, exists=True):
#             cmds.deleteUI(self.mWin)

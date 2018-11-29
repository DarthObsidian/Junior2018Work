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
#         self.mWin = 'LocWindow' (if you don't have anything to define write pass

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

# To use a parent's constructor:
# def __init__(self, name):
#     super(ChildClass, self).__init__(name)

# %s tells python that you are going to insert a string
# %i tells python that you are going to insert an integer
# 'My name is %s and I'm %i years old.' %(name, age)
# %03d pads a float with 0s so it is three characters long
# zfill python command also lets you pad things

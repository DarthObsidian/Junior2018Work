import maya.cmds as cmds

sphere = cmds.polySphere(r=1, sx=20, sy=20, ax=[0, 1, 0], cuv=2, ch=1)[0]
cmds.move(0, 1, 0, sphere, ws=True)

import maya.cmds as cmds

def ColorControls(ctrlName, color):
    shapes = cmds.listRelatives(ctrlName, shapes=True)

    for shape in shapes:
        if cmds.nodeType(shape) == "nurbsCurve":
            cmds.setAttr((shape + ".overrideEnabled"), 1)
            cmds.setAttr((shape + ".overrideColor"), color)

        else:
            cmds.warning("Selected object is not a curve")

def CreateCtrlShape(shape):

    if shape == "circle"
        ctrl = cmds.circle(c=[0, 0, 0], nr=[0, 1, 0], sw=360, r=1, d=3, ut=0, tol=0.01, s=8, ch=1)[0]
    elif shape == "flower":
        ctrl = cmds.curve(d=3, p=[-0.3, 0, 0.3], p=[0, 0, -1.2], p=[0.3, 0, 0.3], p=[-1.2, 0, 0], p=[0.3, 0, -0.3], p=[0, 0, 1.2], p=[-0.3, 0, -0.3], p=[1.2, 0, 0], k=-2, k=1, k=0, k=1, k=2, k=3, k=4, k=5, k=6, k=7)[0]
        cmds.closeCurve(ctrl, ch=1, ps=0, rpo=1, bb=0.5, bki=1, p=0)
    elif shape == "square":
        ctrl = cmds.curve(d=1, p=[1, 0, -1], p=[-1, 0, -1], p=[-1, 0, 1], p=[1, 0, 1], k=0, k=1, k=2, k=3)[0]
        cmds.closeCurve(ctrl, ch=1, ps=1, rpo=1, bb=0.5, bki=0, p=0.1)
    elif shape == "diamond":
        ctrl = cmds.curve(d=3, p=[0.2, 0, -0.2], p=[0, 0, -1.2], p=[-0.2, 0, -0.2], p=[-1.2, 0, 0], p=[-0.2, 0, 0.2], p=[0, 0, 1.2], p=[0.2, 0, 0.2], p=[1.2, 0, 0], k=-2, k=-1, k=0, k=1, k=2, k=3, k=4, k=5, k=6, k=7)[0]
        cmds.closeCurve(ctrl, ch=1, ps=0, rpo=1, bb=0.5, bki=1, p=0)
    else:
        cmds.warning("Invalid shape")
    cmds.objectMoveCommand;
    return ctrl;

def Constrain(constrainer, constrainee, doConstraint, scale, separate)
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

def CreateControl(ctrlColor, shape, doConstraint, scale, separate):
    sels = cmds.ls(sl=True)

    if (len(sels) > 0):
        for selection in sels:
            ctrl = CreateCtrlShape(shape)
        ColorControls(ctrl, ctrlColor)

        obj = cmds.rename(ctrl, (selection + "_Ctrl"))
        grp = cmds.group(obj, world=True, name=(obj + "_Grp"))

        cmds.matchTransform(grp, selection)
        Constrain(obj, selection, doConstraint, scale, separate)
    else:
        ctrl = CreateCtrlShape(shape)
        ColorControls(ctrl, ctrlColor)

        obj = cmds.rename(ctrl, "ctrl")
        cmds.group(obj, world=True, name=(obj + "_Grp"))
    cmds.select(cl=True)

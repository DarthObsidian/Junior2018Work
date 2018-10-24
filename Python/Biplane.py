import maya.cmds as cmds

bWing = cmds.polyCube(w=12.5, h=0.35, d=1.5, sx=1, sy=1, sz=3, ax=[0, 1, 0], cuv=4, ch=1, name='Bottom_Wing')[0]
edge = cmds.select(bWing+'.e[24:25]', r=True)
cmds.move(0.5, 0, 0, edge, os=True, r=True)
edge = cmds.select(bWing+'.e[26:27]', r=True)
cmds.move(-0.5, 0, 0, edge, os=True, r=True)
tWing = cmds.polyCube(w=12.5, h=0.35, d=1.5, sx=1, sy=1, sz=3, ax=[0, 1, 0], cuv=4, ch=1, name='Top_Wing')[0]
cmds.move( 0, 3, 0, tWing, os=True, r=True)
edge = cmds.select(tWing+'.e[24:25]', r=True)
cmds.move(0.5, 0, 0, edge, os=True, r=True)
edge = cmds.select(tWing+'.e[26:27]', r=True)
cmds.move(-0.5, 0, 0, edge, os=True, r=True)
body = cmds.polyCylinder(r=1, h=10, sx=8, sy=1, sz=1, ax=[0, 1, 90], rcp=0, cuv=3, ch=1, name='Body')[0]
cmds.move(0, 1, -3.5, body, os=True, r=True)
cmds.select(body+'.f[16:23]', r=True)
cmds.polyExtrudeFacet(body+'.f[16:23]', constructionHistory=1, keepFacesTogether=1, pvx=5.960464478e-08, pvy=1.055552095, pvz=1.49969101, divisions=1, twist=0, taper=1, off=0, thickness=0, smoothingAngle=30)
cmds.scale(0.27104, 0.27104, 0.27104, p=[5.96046e-08, 1.055552, 1.499691])
cmds.select(body+'.f[16:23]')
cmds.polyExtrudeFacet(body+'.f[16:23]', constructionHistory=1, keepFacesTogether=1, pvx=5.960464478e-08, pvy=1.055552125, pvz=1.49969101, divisions=1, twist=0, taper=1, off=0, thickness=0, smoothingAngle=30)
cmds.setAttr('polyExtrudeFace2.localTranslate', 0, 0, 0.251863, type='double3')
cmds.select(body+'.vtx[0:7]', body+'.vtx[16]', r=True)
cmds.scale(0.70947, 0.70947, 0.70947, r=True, p=[5.96046e-08, 0.944448, -8.499691])
cmds.move(0, 0.282791, 0, r=True)
propeller = cmds.polyCube(w=3, h=0.3, d=0.1, sx=1, sy=1, sz=1, ax=[0, 1, 0], cuv=4, ch=1, name='Propeller')[0]
cmds.move (0, 1.05, 1.65, propeller, r=True, ws=True)
strut1 = cmds.polyCylinder(r=0.1, h=3, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Strut_01')[0]
cmds.move(5.5, 1.5, 0.3, strut1, r=True, ws=True)
strut2 = cmds.polyCylinder(r=0.1, h=3, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Strut_02')[0]
cmds.move(5.5, 1.5, -0.3, strut2, r=True, ws=True)
strut3 = cmds.polyCylinder(r=0.1, h=3, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Strut_03')[0]
cmds.move(-5.5, 1.5, -0.3, strut3, r=True, ws=True)
strut4 = cmds.polyCylinder(r=0.1, h=3, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Strut_04')[0]
cmds.move(-5.5, 1.5, 0.3, strut4, r=True, ws=True)
strut5 = cmds.polyCylinder(r=0.1, h=2, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Strut_05')[0]
cmds.move(0.8, 2.3, 0, strut5, r=True, ws=True)
cmds.rotate(0, 0, -45, strut5, r=True, os=True, fo=True)
strut6 = cmds.polyCylinder(r=0.1, h=2, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Strut_06')[0]
cmds.move(-0.8, 2.3, 0, strut6, r=True, ws=True)
cmds.rotate(0, 0, 45, strut6, r=True, os=True, fo=True)
leg1 = cmds.polyCube(w=0.25, h=1, d=1, sx=1, sy=1, sz=1, ax=[0, 1, 0], cuv=4, ch=1, name='Leg_01')[0]
cmds.move(1.2, -0.5, 0, leg1, r=True, ws=True)
cmds.select(leg1+'.e[3]', r=True)
cmds.move(0, 0, 0.7, r=True, ws=True)
leg2 = cmds.polyCube(w=0.25, h=1, d=1, sx=1, sy=1, sz=1, ax=[0, 1, 0], cuv=4, ch=1, name='Leg_02')[0]
cmds.move(-1.2, -0.5, 0, leg2, r=True, ws=True)
cmds.select(leg2+'.e[3]', r=True)
cmds.move(0, 0, 0.7, r=True, ws=True)
wheel1 = cmds.polyCylinder(r=1, h=2, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Wheel_01')[0]
cmds.scale(0.45, 0.15, 0.45, wheel1, r=True)
cmds.rotate(0, 0, 90, wheel1, r=True, os=True, fo=True)
cmds.move(1.45, -0.8, 0.3, wheel1, r=True, ws=True)
wheel2 = cmds.polyCylinder(r=1, h=2, sx=8, sy=1, sz=1, ax=[0, 1, 0], rcp=0, cuv=3, ch=1, name='Wheel_02')[0]
cmds.scale(0.45, 0.15, 0.45, wheel2, r=True)
cmds.rotate(0, 0, 90, wheel2, r=True, os=True, fo=True)
cmds.move(-1.45, -0.8, 0.3, wheel2, r=True, ws=True)
backWing1 = cmds.polyCube(w=1, h=1, d=1, sx=2, sy=1, sz=1, ax=[0, 1, 0], cuv=4, ch=1, name='Back_Wing_01')[0]
cmds.move(0, 1.25, -7.5, backWing1, r=True, os=True)
cmds.scale(5, 0.25, 1, backWing1, r=True)
cmds.select(backWing1+'.e[9]', r=True)
cmds.move(0, 0, 1, r=True, ws=True)
backWing2 = cmds.polyCube(w=0.5, h=2, d=2, sx=1, sy=1, sz=1, ax=[0, 1, 0], cuv=4, ch=1, name='Back_Wing_02')[0]
cmds.move(0, 2.5, -7.5, backWing2, r=True, ws=True)
cmds.select(backWing2+'.e[1]', r=True)
cmds.move(0, 0, -1, r=True, ws=True)
cmds.select(cl=True)
cmds.group(em=True)
cmds.rename('null1', 'Struts')
cmds.parent('Strut_01', 'Struts')
cmds.parent('Strut_02', 'Struts')
cmds.parent('Strut_03', 'Struts')
cmds.parent('Strut_04', 'Struts')
cmds.parent('Strut_05', 'Struts')
cmds.parent('Strut_06', 'Struts')
cmds.select(cl=True)
cmds.group(em=True)
cmds.rename('null1', 'Geometry')
cmds.parent('Struts', 'Geometry')
cmds.parent('Back_Wing_02', 'Geometry')
cmds.parent('Back_Wing_01', 'Geometry')
cmds.parent('Wheel_02', 'Geometry')
cmds.parent('Wheel_01', 'Geometry')
cmds.parent('Leg_02', 'Geometry')
cmds.parent('Leg_01', 'Geometry')
cmds.parent('Propeller', 'Geometry')
cmds.parent('Body', 'Geometry')
cmds.parent('Top_Wing', 'Geometry')
cmds.parent('Bottom_Wing', 'Geometry')
cmds.select(cl=True)
cmds.group(em=True)
cmds.rename('null1', 'Biplane')
cmds.parent('Geometry', 'Biplane')
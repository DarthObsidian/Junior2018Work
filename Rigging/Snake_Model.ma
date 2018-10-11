//Maya ASCII 2018 scene
//Name: Snake_Model.ma
//Last modified: Thu, Oct 11, 2018 04:09:10 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "colorConstant" "lookdevKit" "1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "76B2A3A0-4192-294F-78E1-CFA1F23E97CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 82.784223830059446 30.44837270742763 -14.618706207389488 ;
	setAttr ".r" -type "double3" -17.738352729693442 87.799999999995109 -4.1426624194742812e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "642E4F6B-4166-6B3C-6E4A-4AAC04EB9EE1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 91.17679332434237;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "27A21DB9-4823-05AE-13BA-21ABF2C79882";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D0B69E7E-45DF-BFDA-A091-0B88878BB909";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B19D64E2-45EA-E891-F94E-EC934569C825";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3451F98E-4033-94B7-355B-90BFCC5E285F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "B1477F36-4C9A-6C07-8E1F-02B49C312716";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -0.073542492906297885 -31.650230577278176 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "971ED77B-46CC-1A22-17E6-239F40F94527";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 109.4432194278038;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Snake_IKSpline";
	rename -uid "A590A3D5-465A-496C-7486-93AA45D0E167";
createNode transform -n "Controls" -p "Snake_IKSpline";
	rename -uid "BC600718-47C1-8076-33B5-738CEABDA6FC";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "88131690-4516-C5B2-B001-FCA7DDFDB189";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "5F217FE1-448E-648B-0898-F1A2F397E4F1";
	addAttr -ci true -sn "Stretch" -ln "Stretch" -min 0 -max 1 -at "double";
	setAttr -k on ".Stretch";
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "0B7827BD-427D-DD9C-CB61-E89869F34D5D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Snake_IKSpline_01_Ctrl_Grp" -p "Controls";
	rename -uid "A9DF2000-4A97-2397-F04A-6881F87E89D8";
createNode transform -n "Snake_IKSpline_01_Ctrl" -p "Snake_IKSpline_01_Ctrl_Grp";
	rename -uid "209005D6-4F32-A314-9707-0BA93BF8156A";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Snake_IKSpline_01_CtrlShape" -p "Snake_IKSpline_01_Ctrl";
	rename -uid "411A6F16-4D95-2F3A-F082-EFBD1676C475";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode parentConstraint -n "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1" -p "Snake_IKSpline_01_Ctrl_Grp";
	rename -uid "71D0018F-45B4-5E63-BAB7-E8AD0CEB773F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Transform_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0.85000002384185791 10.44843864440918 ;
	setAttr ".rst" -type "double3" 0 0.85000002384185791 10.44843864440918 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2" -p "Snake_IKSpline_01_Ctrl_Grp";
	rename -uid "F33430C3-4D4C-E812-3AD3-7FBFC384389F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Transform_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0.85000002384185791 10.44843864440918 ;
	setAttr ".rst" -type "double3" 0 0.85000002384185791 10.44843864440918 ;
	setAttr -k on ".w0";
createNode transform -n "Snake_IKSpline_02_Ctrl_Grp" -p "Controls";
	rename -uid "26DC0E9F-4B21-0EFE-198E-F193BA422FB0";
createNode transform -n "Snake_IKSpline_02_Ctrl" -p "Snake_IKSpline_02_Ctrl_Grp";
	rename -uid "3CBE53C4-4C21-D9FE-4578-1E9640A1FF16";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Snake_IKSpline_02_CtrlShape" -p "Snake_IKSpline_02_Ctrl";
	rename -uid "FE068C6B-4704-E263-C34A-3BB75395AB96";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		-2.2163883751087763 1.1489796475049661e-16 -1.8477001951702138e-32
		-1.567223249782449 -1.567223249782449 2.5202872050749809e-16
		-2.220171393920645e-16 -2.2163883751087767 3.5642243464924211e-16
		1.567223249782449 -1.5672232497824488 2.5202872050749804e-16
		2.2163883751087763 -3.022481001559918e-16 4.8605201568258292e-32
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		;
createNode parentConstraint -n "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1" -p "Snake_IKSpline_02_Ctrl_Grp";
	rename -uid "3721CB0C-4D2B-48CC-754F-A2ABB4BDDA6C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.333338685771332e-13 -0.29418784379959106 
		-14.044865131378174 ;
	setAttr ".rst" -type "double3" 1.333338685771332e-13 0.55581218004226685 -3.5964264869689941 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2" -p "Snake_IKSpline_02_Ctrl_Grp";
	rename -uid "396ADDD8-4090-5899-B0C4-1788E4BDA27C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.333338685771332e-13 -0.29418784379959106 
		-14.044865131378174 ;
	setAttr ".rst" -type "double3" 1.333338685771332e-13 0.55581218004226685 -3.5964264869689941 ;
	setAttr -k on ".w0";
createNode transform -n "Snake_IKSpline_03_Ctrl_Grp" -p "Controls";
	rename -uid "0A323A47-42C6-C231-9160-A392DDF88039";
createNode transform -n "Snake_IKSpline_03_Ctrl" -p "Snake_IKSpline_03_Ctrl_Grp";
	rename -uid "0649ECBF-4A99-8ED6-621F-A48D34870846";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Snake_IKSpline_03_CtrlShape" -p "Snake_IKSpline_03_Ctrl";
	rename -uid "B5B775B6-45AF-7955-DD31-15A2EE068101";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		-2.2163883751087763 1.1489796475049661e-16 -1.8477001951702138e-32
		-1.567223249782449 -1.567223249782449 2.5202872050749809e-16
		-2.220171393920645e-16 -2.2163883751087767 3.5642243464924211e-16
		1.567223249782449 -1.5672232497824488 2.5202872050749804e-16
		2.2163883751087763 -3.022481001559918e-16 4.8605201568258292e-32
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		;
createNode parentConstraint -n "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1" -p "Snake_IKSpline_03_Ctrl_Grp";
	rename -uid "A22B7F09-48C3-74A0-48C7-DAB037CDF3E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.2225199071707979e-16 -0.049041271209716797 
		-14.048715114593502 ;
	setAttr ".rst" -type "double3" 1.3301161658641612e-13 0.50677090883255005 -17.645141601562496 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2" -p "Snake_IKSpline_03_Ctrl_Grp";
	rename -uid "70E32096-4062-B102-08F3-608BB8E2F9F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.2225199071715552e-16 -0.049041271209716797 
		-14.048715114593499 ;
	setAttr ".rst" -type "double3" 1.3301161658641604e-13 0.50677090883255005 -17.645141601562493 ;
	setAttr -k on ".w0";
createNode transform -n "Snake_IKSpline_04_Ctrl_Grp" -p "Controls";
	rename -uid "94157AAC-482D-D3EB-D145-B39F2058F99F";
createNode transform -n "Snake_IKSpline_04_Ctrl" -p "Snake_IKSpline_04_Ctrl_Grp";
	rename -uid "AB0F76F7-46E1-65BD-7112-1CAD2D939C7D";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Snake_IKSpline_04_CtrlShape" -p "Snake_IKSpline_04_Ctrl";
	rename -uid "B7981E1A-4793-05F5-62FB-4D8309834367";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		-2.2163883751087763 1.1489796475049661e-16 -1.8477001951702138e-32
		-1.567223249782449 -1.567223249782449 2.5202872050749809e-16
		-2.220171393920645e-16 -2.2163883751087767 3.5642243464924211e-16
		1.567223249782449 -1.5672232497824488 2.5202872050749804e-16
		2.2163883751087763 -3.022481001559918e-16 4.8605201568258292e-32
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		;
createNode parentConstraint -n "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1" -p "Snake_IKSpline_04_Ctrl_Grp";
	rename -uid "6D869207-4045-6D48-5A41-969A1FC9C54F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_03_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4097077335145876e-15 0.049041271209716797 
		-16.859573364257816 ;
	setAttr ".rst" -type "double3" 1.374213243199307e-13 0.55581218004226685 -34.504714965820313 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2" -p "Snake_IKSpline_04_Ctrl_Grp";
	rename -uid "8B84AD36-4A2B-732F-645D-419BED562524";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_03_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4097077335145876e-15 0.049041271209716797 
		-16.859573364257816 ;
	setAttr ".rst" -type "double3" 1.374213243199307e-13 0.55581218004226685 -34.504714965820313 ;
	setAttr -k on ".w0";
createNode transform -n "Snake_IKSpline_05_Ctrl_Grp" -p "Controls";
	rename -uid "D694ED44-4811-C308-72BC-989FF598C541";
createNode transform -n "Snake_IKSpline_05_Ctrl" -p "Snake_IKSpline_05_Ctrl_Grp";
	rename -uid "05E2FBD8-4DAF-C5D4-CFE1-D7A0B3D04610";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Snake_IKSpline_05_CtrlShape" -p "Snake_IKSpline_05_Ctrl";
	rename -uid "BD610F32-41D5-3A19-375D-DE94E1A5862E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		-2.2163883751087763 1.1489796475049661e-16 -1.8477001951702138e-32
		-1.567223249782449 -1.567223249782449 2.5202872050749809e-16
		-2.220171393920645e-16 -2.2163883751087767 3.5642243464924211e-16
		1.567223249782449 -1.5672232497824488 2.5202872050749804e-16
		2.2163883751087763 -3.022481001559918e-16 4.8605201568258292e-32
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		;
createNode parentConstraint -n "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1" -p "Snake_IKSpline_05_Ctrl_Grp";
	rename -uid "ED07DDD6-4396-E4FE-838A-26BA530E25CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_04_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8507082522323613e-15 0 -16.860000610351563 ;
	setAttr ".rst" -type "double3" 1.4627203257216307e-13 0.55581218004226685 -51.364715576171875 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2" -p "Snake_IKSpline_05_Ctrl_Grp";
	rename -uid "11834838-44AD-ACB1-FFA1-8FAD92C959F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_04_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8507082522323361e-15 0 -16.860000610351563 ;
	setAttr ".rst" -type "double3" 1.4627203257216304e-13 0.55581218004226685 -51.364715576171875 ;
	setAttr -k on ".w0";
createNode transform -n "Snake_IKSpline_06_Ctrl_Grp" -p "Controls";
	rename -uid "F07565DB-49CD-5C46-8409-DCBCEC0C4CB8";
createNode transform -n "Snake_IKSpline_06_Ctrl" -p "Snake_IKSpline_06_Ctrl_Grp";
	rename -uid "63462D02-4310-CC34-8E08-4F89FD7C37D4";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Snake_IKSpline_06_CtrlShape" -p "Snake_IKSpline_06_Ctrl";
	rename -uid "84B1756F-474C-AAAA-A134-D8B9B0A1C37D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		-2.2163883751087763 1.1489796475049661e-16 -1.8477001951702138e-32
		-1.567223249782449 -1.567223249782449 2.5202872050749809e-16
		-2.220171393920645e-16 -2.2163883751087767 3.5642243464924211e-16
		1.567223249782449 -1.5672232497824488 2.5202872050749804e-16
		2.2163883751087763 -3.022481001559918e-16 4.8605201568258292e-32
		1.567223249782449 1.5672232497824492 -2.5202872050749814e-16
		1.3571464646221824e-16 2.2163883751087754 -3.5642243464924191e-16
		-1.567223249782449 1.5672232497824488 -2.5202872050749804e-16
		;
createNode parentConstraint -n "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1" -p "Snake_IKSpline_06_Ctrl_Grp";
	rename -uid "F960E28C-4F9F-4FFE-9F75-55A575CED8C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_05_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.110223345890008e-14 -0.53936423547565937 
		-19.6610107421875 ;
	setAttr ".rst" -type "double3" 1.6737426603106315e-13 0.016447944566607475 -71.025726318359375 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2" -p "Snake_IKSpline_06_Ctrl_Grp";
	rename -uid "957A941A-430B-1815-9E5A-63B1EA5E4C94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_05_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.110223345890008e-14 -0.53936423547565937 
		-19.6610107421875 ;
	setAttr ".rst" -type "double3" 1.6737426603106315e-13 0.016447944566607475 -71.025726318359375 ;
	setAttr -k on ".w0";
createNode transform -n "Skeleton" -p "Snake_IKSpline";
	rename -uid "7AE0CCA8-4278-0948-7445-E3B1B5B4FBEA";
createNode joint -n "Snake_IKSpline_01_Jnt" -p "Skeleton";
	rename -uid "C23EB084-4828-2222-5979-26BEA53D983A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 0.85000002384195406 10.448438644410359 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 90 0 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-16 0
		 0 0.85000002384195406 10.448438644410359 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_02_Jnt" -p "Snake_IKSpline_01_Jnt";
	rename -uid "42C4FE68-4DAF-B39E-4400-4F95BF1E5841";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.809999942779541 0 -8.3266726846885163e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.0000000000000004 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2174030051104717e-16 -0.052335956242943855 -0.99862953475457383 0
		 1.1620916727338194e-17 0.99862953475457383 -0.052335956242943855 0 1 0 2.2204460492503131e-16 0
		 5.4067861299245282e-16 0.85000002384195406 7.6384386444103587 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_03_Jnt" -p "Snake_IKSpline_02_Jnt";
	rename -uid "C9CB8BBD-49C2-499D-A01C-10813A1613D3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.809999942779541 0 -2.0816681711721527e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 2 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 9.5560204031128019e-16 0.70293598679928182 4.8322896517500062 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_04_Jnt" -p "Snake_IKSpline_03_Jnt";
	rename -uid "C8F912C8-4262-8DB7-4DCA-BDBDF7862CEA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.3322676295501894e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 2.9117199798034032e-15 0.65389472471051502 2.0227176283605468 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_05_Jnt" -p "Snake_IKSpline_04_Jnt";
	rename -uid "4106CED2-42CA-C0E4-BF8B-62BF4D7F9F8F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.809999942779541 0 -8.8817841970012365e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 2.647391870045213e-15 0.60485346262174822 -0.78685439502891263 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_06_Jnt" -p "Snake_IKSpline_05_Jnt";
	rename -uid "08D06A3A-4D40-1D77-0E4F-E583014D9BF4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.3006262733483711e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 1.3333386951482426e-13 0.55581220053298142 -3.5964264184183721 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_07_Jnt" -p "Snake_IKSpline_06_Jnt";
	rename -uid "24DE2413-46D5-0856-C477-228EF9ED37DB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.776356839400252e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 1.3573407666416645e-13 0.50677093844421461 -6.4059984418078315 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_08_Jnt" -p "Snake_IKSpline_07_Jnt";
	rename -uid "252DED5A-42F4-02CE-149A-87A7076955D5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.809999942779541 0 -1.7763568394002489e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.3458157013470814e-13 0.45772967635544787 -9.2155704651972918 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_09_Jnt" -p "Snake_IKSpline_08_Jnt";
	rename -uid "37FE0747-4FEA-A156-8FF8-3DBAB775654A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 2.809999942779541 0 -1.3322676295501863e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.338732478449973e-13 0.45772967635544776 -12.025570465197292 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_10_Jnt" -p "Snake_IKSpline_09_Jnt";
	rename -uid "B59CD60F-435F-F560-2E65-C988C8C12CAE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.809999942779541 0 -8.8817841970012365e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 0.017452406437283477 -0.99984769515639127 0
		 -3.8752126923576828e-18 0.99984769515639127 0.017452406437283477 0 1 0 2.2204460492503131e-16 0
		 1.3360901476513652e-13 0.45772967635544765 -14.835570465197293 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_11_Jnt" -p "Snake_IKSpline_10_Jnt";
	rename -uid "0C536071-4885-B944-1053-96AF426D569D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.809999942779541 0 -1.2212453270876706e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 0.017452406437283477 -0.99984769515639127 0
		 -3.8752126923576828e-18 0.99984769515639127 0.017452406437283477 0 1 0 2.2204460492503131e-16 0
		 1.3301161974799079e-13 0.50677093844421417 -17.645142488586753 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_12_Jnt" -p "Snake_IKSpline_11_Jnt";
	rename -uid "4A6D3B95-439F-BCBE-D884-78813147420F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.809999942779541 0 5.7731597280508156e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.3940862978598354e-13 0.55581220053298075 -20.454714511976213 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_13_Jnt" -p "Snake_IKSpline_12_Jnt";
	rename -uid "06E72E5D-4273-9775-D1EC-C2BAA78B242C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.3322676295501894e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.4136484275537308e-13 0.55581220053298064 -23.264714511976212 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_14_Jnt" -p "Snake_IKSpline_13_Jnt";
	rename -uid "09779E0C-4BFA-9796-192F-359CB0B7921B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.5777218104420236e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.4198878809521243e-13 0.55581220053298053 -26.074714511976211 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_15_Jnt" -p "Snake_IKSpline_14_Jnt";
	rename -uid "D985969F-4A7D-85A1-503C-97A53CE23935";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.809999942779541 0 -2.6645352591003741e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.3994819817595141e-13 0.55581220053298042 -28.88471451197621 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_16_Jnt" -p "Snake_IKSpline_15_Jnt";
	rename -uid "160BF9C4-4D1A-BACC-D709-63A6FBBD9BE9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.809999942779541 0 -2.6645352591003741e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.3790760825669038e-13 0.55581220053298031 -31.694714511976208 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_17_Jnt" -p "Snake_IKSpline_16_Jnt";
	rename -uid "EEA30A71-4F43-1CA7-C1BF-A6A93FEBDEB4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 2.809999942779541 0 -1.110223024625155e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.3742133057190458e-13 0.55581220053298019 -34.504714511976211 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_18_Jnt" -p "Snake_IKSpline_17_Jnt";
	rename -uid "8312AD4A-488B-707B-21DC-6F82F07BBBA4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.809999942779541 0 4.4408920985006277e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.4248616801024455e-13 0.55581220053298008 -37.314714511976213 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_19_Jnt" -p "Snake_IKSpline_18_Jnt";
	rename -uid "8B7B44E1-4A29-1B93-51B5-CA8B5D8902E3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.809999942779541 0 -1.0658141036401501e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.324519723136824e-13 0.55581220053297997 -40.124714511976215 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_20_Jnt" -p "Snake_IKSpline_19_Jnt";
	rename -uid "3617A00E-4048-B637-7F31-AD8D705146AE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.809999942779541 0 -1.7763568394002489e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.312995608141215e-13 0.55581220053297986 -42.934714511976217 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_21_Jnt" -p "Snake_IKSpline_20_Jnt";
	rename -uid "01B6D1B5-40AF-A55B-888F-3DBEF4832871";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.5777218104420236e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.3192350615396085e-13 0.55581220053297975 -45.74471451197622 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_22_Jnt" -p "Snake_IKSpline_21_Jnt";
	rename -uid "1970FD0C-4032-986D-C14F-5D83E4D492CE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.809999942779541 0 9.1038288019262852e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -3.4694469519536142e-17 -1 0
		 7.7037197775489434e-33 1 -3.4694469519536142e-17 0 1 0 2.2204460492503131e-16 0 1.4165128029572649e-13 0.55581220053297964 -48.554714511976222 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_23_Jnt" -p "Snake_IKSpline_22_Jnt";
	rename -uid "E80B4264-4F06-950E-8075-27BFA884E775";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.809999942779541 0 3.9968028886505651e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 1.462720285242164e-13 0.55581220053297953 -51.364714511976224 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_24_Jnt" -p "Snake_IKSpline_23_Jnt";
	rename -uid "ADE85717-44BA-F553-35B4-D48384970AFA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.809999942779541 0 8.3266726846888318e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 1.4697914556100523e-13 0.50677093844421273 -54.174286535365681 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_25_Jnt" -p "Snake_IKSpline_24_Jnt";
	rename -uid "16776CC3-4604-D0FF-699F-26B5B57A9692";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.5777218104420236e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 1.4760299587094717e-13 0.45772967635544598 -56.983858558755138 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_26_Jnt" -p "Snake_IKSpline_25_Jnt";
	rename -uid "E1B609C5-4CBE-DE47-3F23-299A0E71CE77";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.9984014443252834e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2190934135115542e-16 -0.034899496702501004 -0.99939082701909576 0
		 7.7492449573892683e-18 0.99939082701909576 -0.034899496702501004 0 1 0 2.2204460492503131e-16 0
		 1.5022524762521438e-13 0.40868841426667923 -59.793430582144595 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_27_Jnt" -p "Snake_IKSpline_26_Jnt";
	rename -uid "F5EC7F5D-443D-7A09-1FDD-FA89E2D3659F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.0214051826551442e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2174030051104719e-16 -0.052335956242943862 -0.99862953475457394 0
		 1.1620916727338196e-17 0.99862953475457394 -0.052335956242943862 0 1 0 2.2204460492503131e-16 0
		 1.6106286470096258e-13 0.31062082853265138 -62.601718806068256 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_28_Jnt" -p "Snake_IKSpline_27_Jnt";
	rename -uid "985272AA-4763-9117-335E-63B6381C113C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.809999942779541 0 4.8849813083506904e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2190934135115542e-16 -0.034899496702501004 -0.99939082701909576 0
		 7.7492449573892683e-18 0.99939082701909576 -0.034899496702501004 0 1 0 2.2204460492503131e-16 0
		 1.6657093625374931e-13 0.16355679148997912 -65.407867798728603 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_29_Jnt" -p "Snake_IKSpline_28_Jnt";
	rename -uid "02824160-4B82-2696-DE62-B190EA5B1BC1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.809999942779541 0 -1.7763568394002489e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 1.6541814466354582e-13 0.065489205755951296 -68.216156022652257 1;
	setAttr ".radi" 0.5;
createNode joint -n "Snake_IKSpline_30_Jnt" -p "Snake_IKSpline_29_Jnt";
	rename -uid "AB57D0A7-4050-8221-669C-40B3F49BFD72";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.809999942779541 0 1.3322676295501894e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 2.2201078645620404e-16 -0.017452406437283546 -0.99984769515639127 0
		 3.8752126923576982e-18 0.99984769515639127 -0.017452406437283546 0 1 0 2.2204460492503131e-16 0
		 1.6737426260303794e-13 0.016447943667184529 -71.025728046041721 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector1" -p "Snake_IKSpline_29_Jnt";
	rename -uid "C003D4E2-484B-C5A9-AB1D-8FB37B9F25B1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Snake_IKSpline_Ctrl_Jnts" -p "Skeleton";
	rename -uid "402FB4DF-4D34-D2E0-4FC0-6BBD321459ED";
createNode joint -n "Snake_IKSpline_Ctrl_06_Jnt" -p "Snake_IKSpline_Ctrl_Jnts";
	rename -uid "D4E4338D-4DC0-C32F-D225-708A0C8CCDF9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6737426603106315e-13 0.016447944566607475 -71.025726318359375 1;
createNode parentConstraint -n "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1" -p "Snake_IKSpline_Ctrl_06_Jnt";
	rename -uid "64ACC8B2-4C06-4CC2-93A3-3DA48B442B9D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_06_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.6737426603106315e-13 0.016447944566607475 -71.025726318359375 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1" -p "Snake_IKSpline_Ctrl_06_Jnt";
	rename -uid "9823B859-415C-17E7-21A8-24B747BA2FE9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_06_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Snake_IKSpline_Ctrl_05_Jnt" -p "Snake_IKSpline_Ctrl_Jnts";
	rename -uid "40A082E9-4EA3-93E8-A913-91A948637768";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.4627203257216309e-13 0.55581218004226685 -51.364715576171875 1;
createNode parentConstraint -n "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1" -p "Snake_IKSpline_Ctrl_05_Jnt";
	rename -uid "574FA34E-49DE-B334-0871-FC936BD0E68A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_05_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.4627203257216309e-13 0.55581218004226685 -51.364715576171875 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1" -p "Snake_IKSpline_Ctrl_05_Jnt";
	rename -uid "7421B0E5-4DD7-F102-7012-B982CEC2F249";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_05_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Snake_IKSpline_Ctrl_04_Jnt" -p "Snake_IKSpline_Ctrl_Jnts";
	rename -uid "B60186D8-4CF0-1312-ACF1-4EBBA22120D2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.374213243199307e-13 0.55581218004226685 -34.504714965820313 1;
createNode parentConstraint -n "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1" -p "Snake_IKSpline_Ctrl_04_Jnt";
	rename -uid "F1A40C29-42F3-B59D-A763-4C88500C96EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_04_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.5243548967072378e-29 0 0 ;
	setAttr ".rst" -type "double3" 1.3742132431993068e-13 0.55581218004226685 -34.504714965820313 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1" -p "Snake_IKSpline_Ctrl_04_Jnt";
	rename -uid "B7B0D0AC-4408-33A2-D202-8199FB84D66E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_04_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Snake_IKSpline_Ctrl_03_Jnt" -p "Snake_IKSpline_Ctrl_Jnts";
	rename -uid "6ECBD7DC-4883-06A4-54DF-228B036D0804";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3301161658641619e-13 0.50677090883255005 -17.6451416015625 1;
createNode parentConstraint -n "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1" -p "Snake_IKSpline_Ctrl_03_Jnt";
	rename -uid "943C85ED-42D3-5353-FE96-79AAA5AB680A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_03_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.3301161658641619e-13 0.50677090883255005 -17.6451416015625 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1" -p "Snake_IKSpline_Ctrl_03_Jnt";
	rename -uid "E05F206E-435F-FFD8-C0C4-81B90E8D52C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_03_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Snake_IKSpline_Ctrl_02_Jnt" -p "Snake_IKSpline_Ctrl_Jnts";
	rename -uid "C766E820-458C-45A4-657F-E48601E0D707";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.333338685771332e-13 0.55581218004226685 -3.5964264869689941 1;
createNode parentConstraint -n "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1" -p "Snake_IKSpline_Ctrl_02_Jnt";
	rename -uid "D9943BFC-4A8D-8B41-2DA3-4499571A429B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 1.333338685771332e-13 0.55581218004226685 -3.5964264869689937 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1" -p "Snake_IKSpline_Ctrl_02_Jnt";
	rename -uid "3C553675-4D7E-F38F-FD16-45BE4241FE16";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Snake_IKSpline_Ctrl_01_Jnt" -p "Snake_IKSpline_Ctrl_Jnts";
	rename -uid "A04EADB5-418E-86C7-FABA-DD887FB037F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.85000002384185791 10.44843864440918 1;
createNode parentConstraint -n "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1" -p "Snake_IKSpline_Ctrl_01_Jnt";
	rename -uid "A41A1A37-4B33-FF84-46D3-03A9D5A80B26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0.85000002384185791 10.44843864440918 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1" -p "Snake_IKSpline_Ctrl_01_Jnt";
	rename -uid "99DFFA66-44AB-59BC-9E9F-4AA8A630E74B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Snake_IKSpline_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Deformers" -p "Snake_IKSpline";
	rename -uid "8CBE3F59-42C9-5F2F-A0B4-4F9EC1784CE8";
createNode ikHandle -n "IK_Spline_Handle" -p "Deformers";
	rename -uid "5AC82FC7-4424-31D8-E3AA-91B711F51A65";
	setAttr ".t" -type "double3" 1.6737426223464997e-13 0.016447960640932929 -71.025726386970817 ;
	setAttr ".r" -type "double3" -89.999999999999275 89 -89.999999999999275 ;
	setAttr ".roc" yes;
createNode transform -n "Snake_IKSpline_Curve" -p "Deformers";
	rename -uid "CC2CBE88-42EC-A1CA-95F5-078D79BACFFB";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "Snake_IKSpline_CurveShape" -p "Snake_IKSpline_Curve";
	rename -uid "4C920B1F-4212-0353-9EE6-499AD37BA231";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "Snake_IKSpline_CurveShapeOrig" -p "Snake_IKSpline_Curve";
	rename -uid "2731D5CA-422C-E174-818F-F8A2939C7F0F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 29 0 no 3
		34 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 29 29
		32
		0 0.85000002384195406 10.448438644410359
		5.2620940194954009e-16 0.86547943835087748 9.511346148145126
		1.5786282058486113e-15 0.89643826736871857 7.6371611556146224
		-3.0704416407738185e-15 0.66424704795973655 4.8335490806905739
		1.6436750017626307e-14 0.66418914298758802 2.022380875150052
		-4.5206238851784332e-14 0.60236471285089832 -0.78676612223668607
		1.8027255660948673e-13 0.55547271134006315 -3.5964425417229826
		1.2411922346727069e-13 0.51061752059710497 -6.4060224834745663
		1.3765500125101802e-13 0.4426826581526509 -9.2154567706444634
		1.3275018185923788e-13 0.46502967170561826 -12.025573017234652
		1.34583744700451e-13 0.44357648024412566 -14.83567628166854
		1.3056891105372021e-13 0.50704223282541983 -17.645143795591544
		1.412103104849886e-13 0.56888004138128545 -20.454598097326777
		1.4104160441988664e-13 0.55231068189128607 -23.26474672111399
		1.4281230385780757e-13 0.55675031130636055 -26.074706182830621
		1.3964188096613866e-13 0.55556115313688614 -28.884716511431485
		1.3830933032671812e-13 0.5558781563997055 -31.694712530965518
		1.3456641300789172e-13 0.55579930151788304 -34.504714919881891
		1.4795296356129803e-13 0.55579771778235565 -37.314717584428458
		1.285387813590947e-13 0.55588290721028 -40.124712781939706
		1.3260378218216325e-13 0.55554373129472978 -42.934714700874956
		1.2884348884009197e-13 0.55681524473265376 -45.744720067522941
		1.4356333016930009e-13 0.55206836751246047 -48.554682022147666
		1.4681089978811827e-13 0.56978436339113714 -51.364837065989811
		1.4682526603580047e-13 0.50366725750129526 -54.174263167250487
		1.4776293112245742e-13 0.45617205828817847 -56.983825587206148
		1.4774100416051326e-13 0.4180223340959609 -59.793594565481399
		1.6262455522585753e-13 0.32386898190402014 -62.602378105934214
		1.6813798090419001e-13 0.1502266251325961 -65.40720641200376
		1.6424916096254319e-13 0.056565134166594429 -68.21600082476003
		1.6633256434155645e-13 0.029820324957011826 -70.089151153826251
		1.6737426603106312e-13 0.016447920352220532 -71.025726318359361
		;
createNode transform -n "Texture" -p "Snake_IKSpline";
	rename -uid "DC9BCD68-44FC-C3AC-DE3D-C8A01F3D35C5";
	setAttr ".v" no;
createNode place3dTexture -n "place3dTexture1" -p "Texture";
	rename -uid "31FDD193-4A85-D19F-305F-B4A0B7060FBA";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 3 3 3 ;
createNode transform -n "Geometry" -p "Snake_IKSpline";
	rename -uid "2AF2DBE5-4D2D-1F84-DF8B-6FBA1CAE1240";
createNode transform -n "Snake_Geo" -p "Geometry";
	rename -uid "98C744DC-4708-900A-FB49-EDA6EE02B43E";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".MaxHandle" 1;
createNode mesh -n "Snake_GeoShape" -p "Snake_Geo";
	rename -uid "A3B90222-4462-8B3E-467C-02BE458939ED";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.22342401184141636 0.46217183023691177 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".bw" 3;
	setAttr ".dr" 1;
	setAttr ".difs" yes;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Snake_GeoShapeOrig" -p "Snake_Geo";
	rename -uid "2F16731F-4008-AF56-8DFE-37824B3BDEB5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr -s 813 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.37190735 0.79052758 0.37877172
		 0.78863609 0.37877208 0.79921931 0.37205029 0.79961312 0.25478992 0.89924109 0.25478983
		 0.8749612 0.27472213 0.87488008 0.27954566 0.89767098 0.27494901 0.80713993 0.26682711
		 0.80989319 0.26448753 0.80044782 0.27136007 0.7974509 0.35929364 0.85311979 0.35787249
		 0.86603737 0.3417778 0.86337316 0.34625685 0.85285181 0.2836751 0.7991938 0.29122686
		 0.81539959 0.28716069 0.81844264 0.26632166 0.04988008 0.32325885 0.35379454 0.21432546
		 0.070157617 0.30963838 0.029400466 0.36692524 0.81108856 0.3596139 0.80950928 0.36532903
		 0.79956132 0.35179353 0.83501995 0.35311902 0.82093006 0.36304003 0.82227802 0.35923195
		 0.83781981 0.25478989 0.80101532 0.25478989 0.78946692 0.26070851 0.79110432 0.25478989
		 0.81093097 0.25478983 0.85181612 0.27169958 0.85144264 0.81909668 0.48998782 0.81909668
		 0.3757312 0.85735106 0.375687 0.64153808 0.4920561 0.29932988 0.85685098 0.30338353
		 0.87459624 0.29489991 0.87504917 0.29097477 0.85593915 0.96316469 0.0048828125 0.96316469
		 0.087953985 0.95088911 0.088354766 0.94848901 0.0056972504 0.50821906 0.016108215
		 0.49948269 0.013998687 0.50258726 0.009190619 0.51281154 0.010726988 0.28716016 0.79465491
		 0.2743271 0.79238325 0.2761865 0.78830951 0.3104884 0.82579595 0.30197188 0.83041531
		 0.29381591 0.80808991 0.31329089 0.85859466 0.31871608 0.87030566 0.32571307 0.82314926
		 0.34773421 0.82065332 0.3383503 0.83229375 0.35481513 0.80746746 0.37877226 0.81068224
		 0.37877238 0.82233274 0.5021289 0.085286796 0.51692456 0.084171534 0.51155287 0.10083354
		 0.50239664 0.11050689 0.50194913 0.024278641 0.49338663 0.02691409 0.50543392 0.11771166
		 0.49629685 0.12211531 0.49261719 0.10092717 0.51692694 0.11484826 0.50916868 0.1154184
		 0.51692677 0.10556111 0.50819272 0.040156245 0.50060183 0.041101903 0.27621651 0.82439852
		 0.26972476 0.8227241 0.48894742 0.044827074 0.50817341 0.024383605 0.51691926 0.024684399
		 0.51691824 0.041165888 0.25478986 0.82247055 0.27089417 0.83731931 0.25478986 0.83382416
		 0.36231828 0.7985003 0.51009727 0.13271847 0.50234705 0.13493255 0.28812879 0.83255178
		 0.29079798 0.83274019 0.2896159 0.83706814 0.28725669 0.835262 0.2869662 0.83021319
		 0.28906271 0.82888526 0.28454909 0.82907587 0.28519133 0.82723445 0.28197423 0.82948297
		 0.28121963 0.82800639 0.28063938 0.83164626 0.2789458 0.83134568 0.28081709 0.83433104
		 0.27936685 0.83571988 0.28240022 0.83655131 0.28131363 0.83930737 0.28493226 0.83692735
		 0.2856555 0.83972305 0.2807782 0.85288316 0.27564356 0.83618265 0.27179649 0.78476208
		 0.26880321 0.78571808 0.26311058 0.78503877 0.26529717 0.78151447 0.016361281 0.017027194
		 0.025869932 0.01754405 0.026307784 0.021724293 0.016238697 0.023106292 0.02719399
		 0.0095825754 0.02581564 0.014073248 0.016816325 0.012816823 0.016964063 0.007609582
		 0.0078182742 0.025955962 0.0066062883 0.016794432 0.0048828125 0.011183154 0.0083957613
		 0.0048828125 0.2396227 0.022424228 0.24277963 0.023193303 0.24164219 0.030795857
		 0.2372978 0.030015554 0.24647826 0.03108865 0.24657585 0.042992983 0.24028556 0.039454974
		 0.23326805 0.039992645 0.25095105 0.031365279 0.25172117 0.042154759 0.24644475 0.023511939
		 0.25035304 0.023095435 0.51692414 0.13998428 0.51692259 0.14819753 0.50963587 0.14655629
		 0.51206768 0.14173934 0.59934902 0.072870582 0.55985057 0.066468447 0.55985057 0.053450286
		 0.56217253 0.053089336 0.60241419 0.072926007 0.60241419 0.059164446 0.56303686 0.078981258
		 0.59929955 0.12385876 0.55985057 0.12344594 0.55985057 0.079149432 0.55985057 0.037160087
		 0.562199 0.037005927 0.60241419 0.084864251 0.60241419 0.12395515 0.60241419 0.042953447
		 0.57087225 0.013009466 0.57177031 0.013602107 0.60019952 0.027783152 0.55985057 0.021565957
		 0.59500265 0.015737953 0.55985057 0.019542854 0.70281464 0.24826957 0.70281458 0.37017
		 0.66585952 0.37138295 0.66323799 0.24971032 0.70281464 0.12570339 0.6608879 0.12703337
		 0.66059417 0.00560157 0.70281458 0.0048828125 0.70864898 0.71446306 0.66648418 0.71516675
		 0.66629475 0.6025303 0.70864898 0.60187161 0.66610998 0.49162009 0.70864898 0.49100444
		 0.89353347 0.24607033 0.89353347 0.15996242 0.93244392 0.16000825 0.18649566 0.69395351
		 0.61182404 0.99487853 0.61182404 0.91227299 0.016021252 0.69751143 0.020894229 0.78027248
		 0.51692539 0.13171661 0.31198952 0.81794298 0.32608387 0.85721833 0.89353347 0.32924372
		 0.18712336 0.77695543 0.16014931 0.4976317 0.29576898 0.43969756 0.36767098 0.57748812
		 0.40202761 0.57652199 0.40202761 0.68757766 0.36850414 0.68874562 0.81183118 0.24970472
		 0.81183118 0.12704872 0.63629711 0.12840517 0.63914311 0.25131389 0.054286063 0.50123787
		 0.054286063 0.61079633 0.030824125 0.61324835 0.025257647 0.50352979 0.48966029 0.50166076
		 0.52281356 0.50040942 0.52281356 0.6126672 0.49000362 0.6149835 0.40202761 0.78292871
		 0.36891213 0.78418261 0.25187632 0.4215886 0.25187632 0.33890745 0.27483028 0.33942956
		 0.86950433 0.50298816 0.95690459 0.42478782 0.95690459 0.34213626 0.94140846 0.090602756
		 0.94530821 0.17258042 0.96316469 0.17103994 0.95215583 0.17139161 0.61182404 0.82974315
		 0.64082175 0.83018625 0.8949784 0.4169369 0.87774372 0.41788831 0.87611037 0.33527958
		 0.89497852 0.33387482 0.5169276 0.0097135305 0.14003116 0.78279132 0.14003116 0.67220473
		 0.46738085 0.61654115 0.47030473 0.72726703 0.25478986 0.78428769 0.26439756 0.79119861
		 0.25416607 0.60515982 0.20816857 0.60649735 0.52281356 0.72303337 0.49185398 0.72532856
		 0.14003116 0.55838352 0.17520367 0.55841732 0.95690459 0.50759339 0.95219409 0.25486964
		 0.31166387 0.0048828721 0.32270256 0.017416835 0.12015966 0.0071948171 0.14600591
		 0.0064441264 0.16825697 0.0063293278 0.17671475 0.0048828125 0.032846689 0.69591093;
	setAttr ".uvst[0].uvsp[250:499]" 0.21108705 0.69257754 0.21167916 0.77615762
		 0.85662001 0.60091841 0.64184129 0.71573693 0.84924054 0.0048828274 0.88029426 0.50081903
		 0.66600293 0.37724483 0.64222831 0.37276095 0.93341815 0.76033968 0.93380642 0.64904654
		 0.34550917 0.784971 0.64275748 0.72045666 0.035428524 0.77840507 0.86155677 0.33704793
		 0.93768519 0.0077902079 0.40202761 0.45456901 0.36511371 0.45577937 0.81183118 0.37108538
		 0.34149882 0.45711318 0.52281356 0.83341241 0.49374849 0.83571059 0.47324216 0.83789086
		 0.25416613 0.69120878 0.5080061 0.0053368211 0.51693273 0.0048828125 0.32565525 0.86808759
		 0.33042401 0.024402499 0.34308678 0.032876134 0.035148218 0.015394365 0.034646686
		 0.017464628 0.035820764 0.013060748 0.24439596 0.01304518 0.24629653 0.012794475
		 0.24839187 0.012952962 0.035236306 0.019446447 0.24314868 0.012729526 0.36611933
		 0.79249346 0.36495042 0.79190409 0.29981449 0.89109856 0.34210753 0.87059075 0.32319844
		 0.87801784 0.30768541 0.88703918 0.37877226 0.85233414 0.37877238 0.83556235 0.95690459
		 0.25950044 0.70864898 0.37640187 0.89780915 0.52765089 0.89780915 0.64903146 0.81183112
		 0.0049716728 0.81909668 0.60098577 0.81909668 0.71370733 0.054286063 0.77700216 0.054286063
		 0.69391793 0.25416613 0.77514982 0.89780915 0.76030636 0.61182404 0.71999353 0.89780915
		 0.85576862 0.89497846 0.50000572 0.25187632 0.25627047 0.96316469 0.25413471 0.3621026
		 0.036618471 0.14003119 0.89343983 0.3787722 0.86050141 0.48709363 0.086769223 0.48274913
		 0.068596452 0.28414848 0.83280689 0.044667419 0.017185843 0.24606849 0.0048828125
		 0.50441867 0.14184052 0.0048828125 0.82282668 0.048421621 0.78243929 0.048421621
		 0.82034361 0.048421621 0.86996007 0.58191949 0.0048828125 0.25478986 0.77991617 0.38563621
		 0.79052728 0.38549387 0.79961288 0.2300341 0.8976711 0.23485753 0.87488014 0.23463073
		 0.80713993 0.23821969 0.79745096 0.24509223 0.80044788 0.24275266 0.80989319 0.39825088
		 0.85311985 0.41128767 0.85285205 0.41576642 0.86337358 0.39967167 0.86603743 0.22241907
		 0.8184427 0.21835291 0.81539965 0.22590469 0.79919386 0.45788354 0.049880017 0.40094635
		 0.35379463 0.025993872 0.070157617 0.41456679 0.029400412 0.39061934 0.81108832 0.39221513
		 0.79956079 0.39793068 0.80950892 0.40575111 0.83502001 0.39831269 0.83781981 0.39450473
		 0.82227784 0.40442568 0.82093 0.24887122 0.79110432 0.2378801 0.85144264 0.78106898
		 0.48994431 0.77587152 0.37779129 0.2102498 0.85685098 0.21860489 0.85593921 0.21467973
		 0.87504923 0.20619611 0.8745963 0.9778403 0.0056972504 0.97544026 0.088354766 0.52562755
		 0.016114891 0.52104241 0.010731608 0.53126794 0.0092025101 0.53436548 0.014012277
		 0.2224196 0.79465491 0.23339327 0.78830957 0.23525266 0.79238325 0.19909136 0.82579589
		 0.21576388 0.80808997 0.20760788 0.83041537 0.19628875 0.85859466 0.19086356 0.8703056
		 0.41940826 0.82197297 0.18401098 0.83395749 0.40981066 0.82065332 0.40272945 0.80746698
		 0.5317207 0.085285008 0.53145736 0.11050647 0.52229983 0.10083312 0.54045165 0.026920706
		 0.53189063 0.024285316 0.54123574 0.10092431 0.53755635 0.1221174 0.52841961 0.1177122
		 0.52468532 0.11541852 0.52564359 0.040156931 0.53323472 0.041102618 0.23336324 0.82439852
		 0.23985499 0.8227241 0.54488993 0.0448246 0.52566612 0.024387896 0.23868553 0.83731931
		 0.39522594 0.7984997 0.52375329 0.13271967 0.53150272 0.13493562 0.22145095 0.83255178
		 0.22232305 0.83526206 0.21996382 0.8370682 0.21878177 0.83274019 0.22261354 0.83021319
		 0.22051705 0.82888526 0.22503063 0.82907587 0.22438842 0.82723445 0.22760551 0.82948303
		 0.22836009 0.82800639 0.22894034 0.83164632 0.23063393 0.83134574 0.22876263 0.8343311
		 0.23021288 0.83571988 0.22717948 0.83655137 0.22826608 0.83930743 0.22464746 0.83692741
		 0.22392422 0.83972311 0.23393616 0.83618271 0.22880149 0.85288322 0.23778327 0.78476208
		 0.24077654 0.78571808 0.24428254 0.78151453 0.24646915 0.78503883 0.22305134 0.017027132
		 0.22317383 0.023106229 0.21310483 0.021724198 0.2135427 0.01754396 0.21221861 0.0095825
		 0.22244859 0.0076095313 0.22259632 0.012816759 0.213597 0.01407316 0.23280634 0.016794488
		 0.23159419 0.025956037 0.23101692 0.0048828125 0.23452985 0.011183199 0.58748579
		 0.032132972 0.58981073 0.039724313 0.58546633 0.040504605 0.58432889 0.032902047
		 0.58063024 0.040797394 0.58682293 0.049163729 0.58053267 0.052701727 0.59384042 0.049701434
		 0.5753873 0.051863495 0.57615745 0.041074023 0.58066374 0.03322069 0.57675546 0.032804187
		 0.52177989 0.14174065 0.52420986 0.14655873 0.55682474 0.066450067 0.60474175 0.059526764
		 0.60565352 0.085009366 0.55701953 0.11804932 0.60475832 0.04311344 0.54882896 0.013009481
		 0.55777311 0.02211317 0.61085081 0.016393106 0.54907376 0.012075524 0.74239123 0.24971032
		 0.7397697 0.37138295 0.74503505 0.00560157 0.74474132 0.12703337 0.75100321 0.6025303
		 0.75081378 0.71516675 0.75118792 0.49162009 0.3218365 0.69395351 0.32554749 0.60839391
		 0.58678395 0.99511719 0.092550814 0.69751143 0.19759031 0.81794292 0.42085415 0.85414284
		 0.85527682 0.32922602 0.080170043 0.4976317 0.43638423 0.57748812 0.43555111 0.68874562
		 0.77532375 0.24957664 0.76933217 0.12840517 0.083314419 0.50352979 0.077747941 0.61324835
		 0.55596685 0.50166076 0.55562353 0.6149835 0.43514305 0.78418267 0.2317536 0.42248198
		 0.92498559 0.41998142 0.98102117 0.17258042 0.98492092 0.090602756 0.97417355 0.17139161
		 0.095793247 0.61582154 0.91384661 0.33527958 0.91221321 0.41788831 0.1080015 0.78317344
		 0.5782463 0.61654115 0.24518217 0.79119867 0.30016357 0.60649735 0.55377316 0.72532856
		 0.57938778 0.502424 0.94490457 0.50792998 0.4125413 0.0048828125 0.40150261 0.017416775
		 0.094313413 0.0064441264 0.063604593 0.0048828125 0.072062358 0.0063293278 0.075725317
		 0.69591093;
	setAttr ".uvst[0].uvsp[500:749]" 0.29665303 0.77615762 0.2972452 0.69257754
		 0.78157347 0.60091841 0.7816875 0.71361619 0.76970601 0.0062170997 0.90966272 0.50081903
		 0.75129503 0.37724483 0.7755788 0.37102905 0.86220014 0.76033968 0.86181182 0.64904654
		 0.45854607 0.784971 0.10368925 0.50655502 0.073143542 0.77840507 0.22684759 0.25649276
		 0.936768 0.26034915 0.43894154 0.45577937 0.86155677 0.52759463 0.55187863 0.83571059
		 0.10910144 0.89382523 0.52585912 0.0053528249 0.18392439 0.86808747 0.39378116 0.02440244
		 0.38111845 0.032876134 0.20476596 0.017464599 0.20426442 0.015394342 0.20359181 0.013060747
		 0.58081198 0.022503225 0.58271253 0.022753924 0.57871664 0.022661721 0.20417637 0.019446425
		 0.58395982 0.022438262 0.39142442 0.79249287 0.39259326 0.79190344 0.20976517 0.89109868
		 0.18638113 0.87801778 0.41543651 0.87059116 0.20189421 0.88703924 0.54675639 0.086763799
		 0.55109572 0.068589747 0.22543125 0.83280694 0.19474524 0.017186033 0.58103997 0.014591561
		 0.5294289 0.14184368 0.0919604 0.82282668 0.61751729 0.0048828069 0.41919446 0.83229399
		 0.18349582 0.85721827 0.17640105 0.87321663 0.42338306 0.86483079 0.18386675 0.82314909
		 0.33669031 0.85414237 0.3255688 0.83395761 0.33416116 0.86483014 0.33317855 0.87321681
		 0.33813655 0.82197285 0.60982573 0.015737953 0.60241419 0.026514199 0.58731103 0.004882805
		 0.57062739 0.012075524 0.59397751 0.016393106 0.56287646 0.066450067 0.5991748 0.085009366
		 0.56192803 0.02211317 0.60007 0.04311344 0.60008663 0.059526764 0.56268162 0.11804932
		 0.54793084 0.013602107 0.53778172 0.0048828125 0.55666429 0.078981258 0.6054793 0.072870582
		 0.55750221 0.037005927 0.60462886 0.027783152 0.55752867 0.053089336 0.60552877 0.12385876
		 0.57532245 0.72726703 0.57238495 0.83789086 0.5808906 0.72045666 0.76340091 0.37276095
		 0.46255642 0.45711321 0.45979592 0.5783999 0.85462308 0.16000831 0.92045259 0.50298816
		 0.98864418 0.0077902079 0.93883884 0.3432864 0.087677836 0.78027248 0.92840022 0.33704793
		 0.22892232 0.33942956 0.58282632 0.83018625 0.45896158 0.68953234 0.1048587 0.55841732
		 0.86263841 0.85581154 0.76648605 0.25131389 0.77545667 0.71573693 0.77442187 0.0048828125
		 0.77474868 0.12685204 0.77566808 0.60303831 0.77575982 0.4920561 0.97413522 0.25486964
		 0.94141245 0.42539784 0.1069136 0.67246115 0.58473581 0.91217142 0.52463782 0.3062053
		 0.7808423 0.375687 0.3212088 0.77695543 0.85486251 0.24597996 0.0048828125 0.50655502
		 0.17096093 0.89382523 0.17206094 0.78317344 0.34425929 0.5783999 0.84808362 0.37102908
		 0.93406159 0.52759463 0.18278468 0.60839391 0.97497028 0.3432864 0.27199906 0.42248198
		 0.97704118 0.26034921 0.86497134 0.41998142 0.63686413 0.99511719 0.27690503 0.25649276
		 0.012778819 0.61582154 0.93297994 0.85581154 0.46623936 0.502424 0.34509361 0.68953234
		 0.84833872 0.2495766 0.84891373 0.12685199 0.63592315 0.0062170997 0.85650593 0.71361619
		 0.64162982 0.60303831 0.85712439 0.48994431 0.97239667 0.42539784 0.96890455 0.50792998
		 0.1731488 0.67246115 0.6389122 0.91217142 0.93220448 0.24597996 0.93179017 0.32922602
		 0.64142644 0.37779129 0.89353347 0.069025308 0.93283802 0.069970064 0.17841564 0.51808459
		 0.20515703 0.5176211 0.25416613 0.51771992 0.85422891 0.069970064 0.32991657 0.51808459
		 0.30317509 0.5176211 0.74807751 0.98036653 0.7856831 0.98497498 0.46791294 0.48381552
		 0.49760357 0.49084994 0.55148149 0.49517584 0.71047193 0.98497498 0.63505 0.48381564
		 0.60535938 0.49085006 0.50146794 0.44339824 0.74807751 0.93841982 0.7851541 0.94112921
		 0.46820837 0.43638846 0.55148154 0.44573033 0.71100098 0.94112921 0.63475466 0.43638861
		 0.60149503 0.44339827 0.50579262 0.3863461 0.46654567 0.38123721 0.78511578 0.89434236
		 0.55148154 0.3873494 0.74807751 0.89187109 0.59717041 0.3863461 0.63641739 0.38123724
		 0.7110393 0.89434236 0.50748664 0.33993283 0.46821406 0.33746099 0.78816497 0.85908049
		 0.55148154 0.33983409 0.74807751 0.85873789 0.59547651 0.33993283 0.63474905 0.33746099
		 0.70799011 0.85908055 0.55148154 0.30177224 0.5075773 0.3019706 0.63222247 0.30002069
		 0.70662504 0.82874548 0.59538579 0.3019706 0.47074065 0.30002069 0.78952992 0.82874548
		 0.74807751 0.82842213 0.55148154 0.25634798 0.50968874 0.25727871 0.47519386 0.25495777
		 0.7891835 0.79176968 0.74807751 0.79349273 0.59327435 0.25727871 0.62776923 0.25495771
		 0.70697165 0.79176974 0.78916109 0.75318706 0.48204046 0.20958568 0.5122413 0.21031538
		 0.74807751 0.75715446 0.55148154 0.20818472 0.706994 0.75318712 0.62092251 0.20958562
		 0.59072173 0.21031535 0.12015967 0.49198267 0.32138413 0.44551191 0.36210257 0.45000249
		 0.402821 0.44551191 0.32628965 0.40152881 0.15581721 0.4614045 0.12015967 0.46328717
		 0.30301148 0.40190476 0.16742145 0.46170881 0.3621026 0.40142214 0.084502116 0.46140447
		 0.42119366 0.40190482 0.072897881 0.46170881 0.39791551 0.40152884 0.14981556 0.42234641
		 0.12015966 0.42422116 0.3621026 0.35136366 0.090503767 0.42234644 0.42211819 0.35626614
		 0.066490933 0.42029324 0.30208704 0.35626614 0.17382838 0.42029321 0.31167528 0.29761213
		 0.36210263 0.29459181 0.32297909 0.29624301 0.15388073 0.36747339 0.18274498 0.36520219
		 0.29686475 0.29913235 0.12015966 0.3692264 0.41252998 0.29761213 0.40122616 0.29624301
		 0.057574328 0.36520222 0.42734048 0.29913235 0.086438596 0.36747342 0.36210263 0.24292666
		 0.30098 0.24606521 0.16546407 0.31091997 0.19975297 0.30956078 0.28016531 0.24790005
		 0.12015964 0.31208417 0.40446633 0.24469827 0.42322528 0.24606521 0.040566333 0.30956081
		 0.44403994 0.24790013 0.074855231 0.31092 0.31973892 0.24469827 0.12015964 0.26084235
		 0.36210266 0.19883892 0.21985401 0.25856817 0.25995302 0.20410712 0.28779706 0.20236574;
	setAttr ".uvst[0].uvsp[750:812]" 0.31436637 0.20081896 0.064031363 0.26001486
		 0.43640819 0.20236574 0.40983889 0.20081896 0.17628793 0.26001486 0.020465305 0.25856817
		 0.46425223 0.20410714 0.27359375 0.15463851 0.24263296 0.15615399 0.23436733 0.20164433
		 0.19132873 0.20194453 0.12015964 0.20247595 0.36210266 0.14993379 0.30859542 0.15125327
		 0.4815723 0.15615398 0.0059519671 0.20164433 0.45061153 0.15463851 0.048990555 0.20194454
		 0.41560981 0.15125325 0.23906562 0.11918102 0.23542696 0.1588386 0.1948009 0.15840015
		 0.27085772 0.11860597 0.31411675 0.11700844 0.36210263 0.1163283 0.48513964 0.11918097
		 0.0048923572 0.15883859 0.045518395 0.15840015 0.41008851 0.11700837 0.45334753 0.11860591
		 0.12015964 0.15861252 0.36210263 0.091404192 0.32346722 0.089905135 0.24468736 0.086661354
		 0.22936934 0.12049484 0.12015966 0.11653793 0.19056597 0.11730791 0.44820231 0.089190409
		 0.47951788 0.086661294 0.010949969 0.12049481 0.049753331 0.11730789 0.27600294 0.089190476
		 0.400738 0.089905076 0.28906113 0.05562415 0.12015967 0.063720658 0.17268002 0.065749004
		 0.36210263 0.071481206 0.33447063 0.067193002 0.43514407 0.05562409 0.067639314 0.065749004
		 0.38973457 0.067193002 0.29179317 0.022247557 0.19419655 0.029631766 0.18703921 0.030333165
		 0.12015966 0.025963582 0.1531879 0.028468071 0.3413257 0.040251646 0.3621026 0.043950278
		 0.432412 0.022247499 0.046122771 0.029631767 0.0532801 0.030333165 0.087131426 0.028468071
		 0.3828795 0.040251646;
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 67 ".pt";
	setAttr ".pt[167]" -type "float3" 0 -0.017032295 0 ;
	setAttr ".pt[207]" -type "float3" 0 0.036977615 0 ;
	setAttr ".pt[208]" -type "float3" 0 0.036977615 0 ;
	setAttr ".pt[219]" -type "float3" 0 0.002008653 0 ;
	setAttr ".pt[220]" -type "float3" 0 0.00082015991 0 ;
	setAttr ".pt[228]" -type "float3" 0 0.002008653 0 ;
	setAttr ".pt[241]" -type "float3" 0 0.00082015991 0 ;
	setAttr ".pt[377]" -type "float3" 0 -0.017032295 0 ;
	setAttr ".pt[397]" -type "float3" 0 0.036977615 0 ;
	setAttr ".pt[405]" -type "float3" 0 0.002008653 0 ;
	setAttr ".pt[406]" -type "float3" 0 0.00082015991 0 ;
	setAttr ".pt[432]" -type "float3" 0 -0.083172441 0 ;
	setAttr ".pt[433]" -type "float3" 0 -0.017566921 0 ;
	setAttr ".pt[434]" -type "float3" 0 -0.023282355 0 ;
	setAttr ".pt[435]" -type "float3" 0 -0.027833188 0 ;
	setAttr ".pt[436]" -type "float3" 0 -0.017566921 0 ;
	setAttr ".pt[437]" -type "float3" 0 -0.023282355 0 ;
	setAttr ".pt[439]" -type "float3" 0 -0.12454078 0 ;
	setAttr ".pt[440]" -type "float3" 0 -0.035189502 0 ;
	setAttr ".pt[441]" -type "float3" 0 -0.0018536074 0 ;
	setAttr ".pt[442]" -type "float3" 0 -0.035189502 0 ;
	setAttr ".pt[445]" -type "float3" 0 -0.13388459 0 ;
	setAttr ".pt[447]" -type "float3" 0 -0.15309381 0 ;
	setAttr ".pt[449]" -type "float3" 0 -0.13388459 0 ;
	setAttr ".pt[451]" -type "float3" 0 -0.088892728 0 ;
	setAttr ".pt[453]" -type "float3" 0 -0.1694926 0 ;
	setAttr ".pt[455]" -type "float3" 0 -0.088892728 0 ;
	setAttr ".pt[458]" -type "float3" 0 -0.046843976 0 ;
	setAttr ".pt[460]" -type "float3" 0 -0.046843976 0 ;
	setAttr ".pt[461]" -type "float3" 0 -0.17238767 0 ;
	setAttr ".pt[464]" -type "float3" 0 -0.03524052 0 ;
	setAttr ".pt[465]" -type "float3" 0 -0.14602691 0 ;
	setAttr ".pt[467]" -type "float3" 0 -0.03524052 0 ;
	setAttr ".pt[468]" -type "float3" 0 -0.019895962 0 ;
	setAttr ".pt[470]" -type "float3" 0 -0.098613538 0 ;
	setAttr ".pt[472]" -type "float3" 0 -0.019895962 0 ;
	setAttr ".pt[474]" -type "float3" 0 -0.065141663 0 ;
	setAttr ".pt[479]" -type "float3" 0 -0.0031784698 0 ;
	setAttr ".pt[480]" -type "float3" 0 -0.039375287 0 ;
	setAttr ".pt[481]" -type "float3" 0 -0.00011470796 0 ;
	setAttr ".pt[483]" -type "float3" 0 -0.0031784698 0 ;
	setAttr ".pt[484]" -type "float3" 0 -0.00011470796 0 ;
	setAttr ".pt[487]" -type "float3" 0 -0.031093786 0 ;
	setAttr ".pt[496]" -type "float3" 0 0.068913855 0 ;
	setAttr ".pt[500]" -type "float3" 0 0.068913855 0 ;
	setAttr ".pt[503]" -type "float3" 0 0.034456931 0 ;
	setAttr ".pt[508]" -type "float3" 0 0.034456931 0 ;
	setAttr ".pt[512]" -type "float3" 0 0.013782772 0 ;
	setAttr ".pt[514]" -type "float3" 0 0.0482397 0 ;
	setAttr ".pt[515]" -type "float3" 0 -0.041348316 0 ;
	setAttr ".pt[517]" -type "float3" 0 0.0068913861 0 ;
	setAttr ".pt[518]" -type "float3" 0 -0.041348316 0 ;
	setAttr ".pt[520]" -type "float3" 0 0.0068913861 0 ;
	setAttr ".pt[521]" -type "float3" 0 0.0482397 0 ;
	setAttr ".pt[522]" -type "float3" 0 -0.082696624 0 ;
	setAttr ".pt[525]" -type "float3" 0 -0.034456931 0 ;
	setAttr ".pt[527]" -type "float3" 0 -0.034456931 0 ;
	setAttr ".pt[529]" -type "float3" 0 -0.082696624 0 ;
	setAttr ".pt[531]" -type "float3" 0 -0.034456931 0 ;
	setAttr ".pt[533]" -type "float3" 0 0.041348316 0 ;
	setAttr ".pt[538]" -type "float3" 0 0.041348316 0 ;
	setAttr ".pt[541]" -type "float3" 0 0.020674158 0 ;
	setAttr ".pt[546]" -type "float3" 0 -0.020674158 0 ;
	setAttr ".pt[549]" -type "float3" 0 -0.020674158 0 ;
	setAttr -s 570 ".vt";
	setAttr ".vt[0:165]"  0.16955 -0.77410644 12.27474689 0 -0.81124896 12.30512524
		 0 -0.70303935 12.053764343 0.18905 -0.68009526 12.068259239 0 1.54377496 10.58545971
		 0 1.55791891 10.88780594 0.51604998 1.62050581 10.88825226 0.59569001 1.61364985 10.60557175
		 0.39734 1.4422332 12.54176426 0.28483999 1.60272312 12.48068523 0.26091 1.7125628 12.71307564
		 0.36436 1.56031704 12.78085041 0.47027999 0.16637948 11.00070667267 0.55135 0.2493517 10.51638031
		 0.93401003 0.36317778 10.79812717 0.77542001 0.27642262 11.12959957 0.49945 1.24644017 12.71825409
		 0.62339002 1.11081719 12.29695034 0.52950001 1.16732967 12.23279667 2.21921539 1.043945909 9.42587662
		 0.91491264 0.40776852 2.85692477 1.27784276 0.74059641 10.22783089 0.29326001 -0.40650171 11.92213917
		 0.42030999 -0.31168142 12.030707359 0.31718999 -0.57593715 12.15051365 0.56487 0.11650699 11.52467155
		 0.47665 -0.013574962 11.84775829 0.37571001 -0.20112671 11.72673702 0.47679999 -0.0066306228 11.39924908
		 0 1.73043108 12.72203636 0 1.84412515 13.01788044 0.19171 1.82600832 12.96502876
		 0 1.62102532 12.47670364 0 1.52859497 11.46417427 0.41192999 1.53464806 11.47100163
		 0 1.10667992 -17.70305061 0 1.10678005 -14.80893993 0.87594002 0.6924696 -14.80780983
		 0.86914998 0.69145966 -17.70194054 0.92685002 1.13535583 11.32218361 1.06964004 1.13414526 10.87789917
		 0.96034998 1.33149874 10.88288021 0.83367002 1.31625581 11.37201214 0 0.01499939 -60.5342598
		 0 0.013538361 -62.6384201 0.3017 0.088638306 -62.64860916 0.36263001 0.096908569 -60.55495071
		 0.18624 1.42625952 12.88420773 0.38100001 1.40602219 12.97941971 0.31121999 1.491166 13.050595284
		 0.087839998 1.48975027 12.99836922 0.47716001 1.14146245 12.81264019 0.39831001 1.47324896 12.89320183
		 0.77442002 0.67657864 11.99556923 0.72165 0.89910561 11.90985489 0.58459002 1.020145655 12.46481705
		 0.94676 0.80483186 11.1994276 1.056839943 0.71953309 10.90197277 0.57878 0.34711799 11.93303967
		 0.49048999 0.11527623 11.90154171 0.69107002 0.38785824 11.68835831 0.4188 -0.22635962 12.13427353
		 0 -0.45514229 11.90887642 0 -0.24195051 11.70884228 0.43116 0.50517541 11.37087727
		 0 0.55379498 11.34272289 0.08608 0.1888701 11.68411541 0.26328 -0.019243781 11.94216156
		 0.3161 1.25627363 12.7935133 0.21183001 -0.14723572 12.034039497 0 -0.0074601485 12.083197594
		 0.13256 -0.075016148 12.030673027 0 0.20531602 11.86005402 0.14812 1.0072287321 12.48167515
		 0.31691 1.045497417 12.46716595 0.39811 1.38942635 12.11050797 0.33678001 1.52254152 12.16819
		 0.17957 1.23891139 12.80320644 0 1.18240321 12.85643578 0 0.86941475 12.51197624
		 0 1.53993964 12.18528938 0.41872001 1.57463133 11.82673454 0 1.49546468 11.8967495
		 0.31277999 -0.51532596 12.20872116 0.13332 -0.45913267 12.19998837 0.55330002 1.18081617 11.90143681
		 0.54477 1.11577702 11.86599159 0.56646001 1.16977525 11.77043915 0.57152998 1.22312582 11.83949375
		 0.52316999 1.18664312 11.96977615 0.49735001 1.12323999 11.96142101 0.47134 1.2309438 11.99763966
		 0.42695999 1.18817544 12.0039339066 0.44595999 1.29990768 11.98726654 0.40360999 1.29097736 11.99736309
		 0.45894 1.36141288 11.94329071 0.41812 1.37824905 11.93147945 0.48026001 1.37992024 11.87075806
		 0.43978 1.40229583 11.8213129 0.52386999 1.35326076 11.81921196 0.50247997 1.3637749 11.74717712
		 0.55992001 1.29125309 11.80690098 0.55431002 1.27438533 11.72973728 0.60123003 1.43461549 11.42747879
		 0.51166999 1.48341596 11.85939503 0.31940001 1.57826531 13.0645504 0.2077 1.67777288 13.067745209
		 0.20495 1.57219398 13.097763062 0.26837999 1.25699699 13.11048603 0.22936 1.020528674 13.083778381
		 0.12925 1.036798239 13.050183296 0.12375 1.2794168 13.061515808 0.17658 1.019230366 13.15795231
		 0.18858001 1.2685107 13.18297386 0.15184 -0.45662656 12.65625668 0.23356999 -0.46349591 12.66071701
		 0.24388 -0.58207017 12.52106762 0.13368 -0.58207828 12.51002407 0.17443 -0.67305648 12.57424831
		 0.27054 -0.64057171 12.31583595 0.10672 -0.66271889 12.25520134 0.1866 -0.51497328 12.72700977
		 0 -0.63634926 12.20513153 0.070540003 -0.1019669 12.38075733 0 -0.081888244 12.4039917
		 0 -0.35633779 12.58543682 0.054930001 -0.3779639 12.57821941 0 -0.12344888 12.35595226
		 0 -0.40104032 12.57052994 0.070979998 0.1097533 12.1506176 0.061310001 0.60217983 11.29823494
		 0 0.70160878 11.19851303 0 0.1434819 12.16858101 0 -0.56829804 12.93352795 0.054930001 -0.59059107 12.93104267
		 0 0.073703282 12.13148689 0 0.56010467 11.27160645 0 -0.61437088 12.92841816 0.17866001 -0.54741323 13.60632706
		 0.20334999 -0.5585407 13.60471249 0.05099 -0.59753829 13.316329 0 -0.58158737 13.31875324
		 0.17866001 -0.56659758 13.62124062 0 -0.62070352 13.34806633 0 0.00020980835 -29.50350952
		 0 0.00024032593 -32.59164047 0.93049002 0.099750519 -32.62250137 0.99691999 0.10143089 -29.5404892
		 0 0.00060081482 -26.39826965 1.058339953 0.10309029 -26.43137932 1.063079953 0.10313034 -23.35449982
		 0 0.00048065186 -23.33667946 1.067870021 0.10317039 -20.50143051 0 0.00036048889 -20.48472977
		 1.072630048 0.10321999 -17.69202042 0 0.00024032593 -17.6764698 0 1.11046028 -12.70209026
		 0 1.077784538 -10.48773289 0.89238 0.65689099 -10.49624252 0.88634998 0.69313049 -12.69933891
		 0 0.82889938 -56.40774155 0 0.91154861 -54.31563187 0.56826001 0.52698898 -54.30099106
		 0.51533997 0.45994186 -56.39944077 0 -0.42193818 12.27763748 0.70217001 0.60560757 12.16876984;
	setAttr ".vt[166:331]" 0.85443997 0.50043291 11.14156055 0.89328355 1.093563437 0.96134233
		 0.86405998 0.098060608 -35.70454025 0 0.0002784729 -35.67977905 0 0.00032043457 -38.49208832
		 0.84373999 0.097488403 -38.52141953 0 1.10634995 -29.56889915 0 1.1065197 -26.46203041
		 0.84069002 0.68757057 -26.45701981 0.82459998 0.68782043 -29.56562042 0 0.00040054321 -49.34337997
		 0 0.00207901 -52.1172905 0.58594 0.096031189 -52.17945099 0.73089999 0.088199615 -49.40159988
		 0.83353001 0.097198486 -40.93859863 0 0.00033187866 -40.90705109 0 0.00035858154 -43.7512207
		 0.82606 0.097061157 -43.80968857 0 0.65958023 -60.59268951 0 0.75030899 -58.49991989
		 0.47490999 0.41448975 -58.49953842 0.41722 0.36608887 -60.60268021 0 0.45680237 -64.77748108
		 0 0.57826996 -62.6853981 0.37694001 0.31756973 -62.70185089 0.33739001 0.25566101 -64.77960968
		 0 0.012840271 -64.74285889 0.26578 0.09728241 -64.75169373 0 0.96244049 -52.22397995
		 0.61097997 0.55438995 -52.22603989 0 0.016498566 -58.42985916 0.43002999 0.092880249 -58.45384979
		 0.47069001 0.093460083 -56.3610611 0 0.011730194 -56.32569885 0 1.5192368 13.010547638
		 0 1.06098175 -46.64170837 0 1.10391998 -43.83927155 0.71131003 0.65914154 -43.84230042
		 0.68856001 0.63182068 -46.64493942 0 1.73148119 13.097683907 0.29425001 1.75273621 12.95364571
		 0 -0.036977615 -10.45495033 1.16044998 0.069755219 -10.4891777 0 0.00037002563 -46.5472908
		 0.77849001 0.092628479 -46.60565186 0 1.10514832 -40.95465851 0.78733999 0.68830872 -40.95571136
		 0 0.30194855 -66.86994934 0.25204 0.13188934 -66.86585999 1.10048997 1.1215508 10.64300919
		 1.059859991 0.69082904 10.64868832 0.99387002 1.29728782 10.62373924 0.53531998 0.10116959 -54.2714386
		 1.082370043 0.10223007 -12.68122005 1.075199962 0.10270977 -14.79485989 0.85448998 0.69038963 -20.51291084
		 0.85113001 0.69028091 -23.3675499 0.81778002 0.68831062 -32.64199829 0.80010003 0.68893051 -38.53741837
		 0.81094998 0.68878937 -35.71836853 0.66548002 0.60438919 -49.44757843 0 1.10598946 -32.64347076
		 0 -0.002008653 -12.64617062 0 1.617975 13.070257187 0.94734001 0.56810778 10.86235142
		 0.89455998 0.4752863 10.59831238 0.13277 0.7947346 13.037485123 0.16539 0.82041711 13.002702713
		 0.11634 0.82822603 12.98613739 0.22059999 -0.24003495 12.78186893 0.20682999 -0.24266526 12.82996941
		 0.18866999 -0.23714763 12.77831078 0.28395 -0.67000967 12.30577278 0 0.03700687 10.90067291
		 0 -0.062230688 11.43396187 0 -0.00082015991 -14.77355957 0 1.10562897 -35.71802902
		 0 1.10679054 -23.36982918 0 1.10659027 -20.51461029 0 0.0070304871 -54.22151947 0 1.10533905 -38.53660965
		 0 1.017921448 -49.44416046 0 0.014801025 -66.84764862 0 0.054020081 10.52887154 0.53526998 1.2926935 11.92390442
		 0.10475 0.63002264 12.85110474 0.22254001 -0.038599052 12.81394672 0 0.011383057 -71.055610657
		 0.34722999 -0.46304908 13.89363194 -0.16955 -0.77410644 12.27474689 -0.18905 -0.68009526 12.068259239
		 -0.51604998 1.62050581 10.88825226 -0.59569001 1.61364985 10.60557175 -0.39734 1.4422332 12.54176426
		 -0.28483999 1.60272312 12.48068523 -0.26091 1.7125628 12.71307564 -0.36436 1.56031704 12.78085041
		 -0.47027999 0.16637948 11.00070667267 -0.55135 0.2493517 10.51638031 -0.93401003 0.36317778 10.79812717
		 -0.77542001 0.27642262 11.12959957 -0.49945 1.24644017 12.71825409 -0.62339002 1.11081719 12.29695034
		 -0.52950001 1.16732967 12.23279667 -2.21921539 1.043946028 9.42587662 -0.91491258 0.40776852 2.85692477
		 -1.27784276 0.74059641 10.22783089 -0.29326001 -0.40650171 11.92213917 -0.42030999 -0.31168142 12.030707359
		 -0.31718999 -0.57593715 12.15051365 -0.56487 0.11650699 11.52467155 -0.47665 -0.013574962 11.84775829
		 -0.37571001 -0.20112671 11.72673702 -0.47679999 -0.0066306228 11.39924908 -0.19171 1.82600832 12.96502876
		 -0.41192999 1.53464806 11.47100163 -0.87594002 0.6924696 -14.80780983 -0.86914998 0.69145966 -17.70194054
		 -0.92685002 1.13535583 11.32218361 -1.06964004 1.13414526 10.87789917 -0.96034998 1.33149874 10.88288021
		 -0.83367002 1.31625581 11.37201214 -0.3017 0.088638306 -62.64860916 -0.36263001 0.096908569 -60.55495071
		 -0.18624 1.42625952 12.88420773 -0.38100001 1.40602219 12.97941971 -0.31121999 1.491166 13.050595284
		 -0.087839998 1.48975027 12.99836922 -0.47716001 1.14146245 12.81264019 -0.39831001 1.47324896 12.89320183
		 -0.77442002 0.67657864 11.99556923 -0.72165 0.89910561 11.90985489 -0.58459002 1.020145655 12.46481705
		 -0.94676 0.80483186 11.1994276 -1.056839943 0.71953309 10.90197277 -0.57878 0.34711799 11.93303967
		 -0.49048999 0.11527623 11.90154171 -0.69107002 0.38785824 11.68835831 -0.4188 -0.22635962 12.13427353
		 -0.43116 0.50517541 11.37087727 -0.08608 0.1888701 11.68411541 -0.26328 -0.019243781 11.94216156
		 -0.3161 1.25627363 12.7935133 -0.21183001 -0.14723572 12.034039497 -0.13256 -0.075016148 12.030673027
		 -0.14812 1.0072287321 12.48167515 -0.31691 1.045497417 12.46716595 -0.39811 1.38942635 12.11050797
		 -0.33678001 1.52254152 12.16819 -0.17957 1.23891139 12.80320644 -0.41872001 1.57463133 11.82673454
		 -0.31277999 -0.51532596 12.20872116 -0.13332 -0.45913267 12.19998837 -0.55330002 1.18081617 11.90143681
		 -0.54477 1.11577702 11.86599159 -0.56646001 1.16977525 11.77043915 -0.57152998 1.22312582 11.83949375
		 -0.52316999 1.18664312 11.96977615 -0.49735001 1.12323999 11.96142101 -0.47134 1.2309438 11.99763966
		 -0.42695999 1.18817544 12.0039339066 -0.44595999 1.29990768 11.98726654 -0.40360999 1.29097736 11.99736309
		 -0.45894 1.36141288 11.94329071 -0.41812 1.37824905 11.93147945 -0.48026001 1.37992024 11.87075806;
	setAttr ".vt[332:497]" -0.43978 1.40229583 11.8213129 -0.52386999 1.35326076 11.81921196
		 -0.50247997 1.3637749 11.74717712 -0.55992001 1.29125309 11.80690098 -0.55431002 1.27438533 11.72973728
		 -0.60123003 1.43461549 11.42747879 -0.51166999 1.48341596 11.85939503 -0.31940001 1.57826531 13.0645504
		 -0.2077 1.67777288 13.067745209 -0.20495 1.57219398 13.097763062 -0.26837999 1.25699699 13.11048603
		 -0.22936 1.020528674 13.083778381 -0.12925 1.036798239 13.050183296 -0.12375 1.2794168 13.061515808
		 -0.17658 1.019230366 13.15795231 -0.18858001 1.2685107 13.18297386 -0.15184 -0.45662656 12.65625668
		 -0.23356999 -0.46349591 12.66071701 -0.24388 -0.58207017 12.52106762 -0.13368 -0.58207828 12.51002407
		 -0.17443 -0.67305648 12.57424831 -0.27054 -0.64057171 12.31583595 -0.10672 -0.66271889 12.25520134
		 -0.1866 -0.51497328 12.72700977 -0.070540003 -0.1019669 12.38075733 -0.054930001 -0.3779639 12.57821941
		 -0.070979998 0.1097533 12.1506176 -0.061310001 0.60217983 11.29823494 -0.054930001 -0.59059107 12.93104267
		 -0.17866001 -0.54741323 13.60632706 -0.20334999 -0.5585407 13.60471249 -0.05099 -0.59753829 13.316329
		 -0.17866001 -0.56659758 13.62124062 -0.93049002 0.099750519 -32.62250137 -0.99691999 0.10143089 -29.5404892
		 -1.058339953 0.10309029 -26.43137932 -1.063079953 0.10313034 -23.35449982 -1.067870021 0.10317039 -20.50143051
		 -1.072630048 0.10321999 -17.69202042 -0.89238 0.65689099 -10.49624252 -0.88634998 0.69313049 -12.69933891
		 -0.56826001 0.52698898 -54.30099106 -0.51533997 0.45994186 -56.39944077 -0.70217001 0.60560757 12.16876984
		 -0.85443997 0.50043291 11.14156055 -0.89328355 1.093563557 0.96134233 -0.86405998 0.098060608 -35.70454025
		 -0.84373999 0.097488403 -38.52141953 -0.84069002 0.68757057 -26.45701981 -0.82459998 0.68782043 -29.56562042
		 -0.58594 0.096031189 -52.17945099 -0.73089999 0.088199615 -49.40159988 -0.83353001 0.097198486 -40.93859863
		 -0.82606 0.097061157 -43.80968857 -0.47490999 0.41448975 -58.49953842 -0.41722 0.36608887 -60.60268021
		 -0.37694001 0.31756973 -62.70185089 -0.33739001 0.25566101 -64.77960968 -0.26578 0.09728241 -64.75169373
		 -0.61097997 0.55438995 -52.22603989 -0.43002999 0.092880249 -58.45384979 -0.47069001 0.093460083 -56.3610611
		 -0.71131003 0.65914154 -43.84230042 -0.68856001 0.63182068 -46.64493942 -0.29425001 1.75273621 12.95364571
		 -1.16044998 0.069755219 -10.4891777 -0.77849001 0.092628479 -46.60565186 -0.78733999 0.68830872 -40.95571136
		 -0.25204 0.13188934 -66.86585999 -1.10048997 1.1215508 10.64300919 -1.059859991 0.69082904 10.64868832
		 -0.99387002 1.29728782 10.62373924 -0.53531998 0.10116959 -54.2714386 -1.082370043 0.10223007 -12.68122005
		 -1.075199962 0.10270977 -14.79485989 -0.85448998 0.69038963 -20.51291084 -0.85113001 0.69028091 -23.3675499
		 -0.81778002 0.68831062 -32.64199829 -0.80010003 0.68893051 -38.53741837 -0.81094998 0.68878937 -35.71836853
		 -0.66548002 0.60438919 -49.44757843 -0.94734001 0.56810778 10.86235142 -0.89455998 0.4752863 10.59831238
		 -0.13277 0.7947346 13.037485123 -0.16539 0.82041711 13.002702713 -0.11634 0.82822603 12.98613739
		 -0.22059999 -0.24003495 12.78186893 -0.20682999 -0.24266526 12.82996941 -0.18866999 -0.23714763 12.77831078
		 -0.28395 -0.67000967 12.30577278 -0.53526998 1.2926935 11.92390442 -0.10475 0.63002264 12.85110474
		 -0.22254001 -0.038599052 12.81394672 -0.34722999 -0.46304908 13.89363194 0 1.10297656 -8.18174458
		 0.89661402 0.65503603 -8.18174458 1.23982358 0.069190614 -8.18174458 0 -0.038999643 -8.18174458
		 -0.89661402 0.65503603 -8.18174458 -1.23982358 0.069190614 -8.18174458 0 1.24446106 -6.45990038
		 0.86582792 0.76050657 -6.45990038 1.26802945 0.12895657 -6.45990038 0 0.023282355 -6.45990038
		 -0.86582786 0.76050651 -6.4598999 -1.26802945 0.12895657 -6.45990038 1.25962305 0.10007969 -5.29234886
		 0 1.3571229 -5.29234886 0.80654532 0.89720303 -5.29234886 0 0.0036111667 -5.29234886
		 -0.80654532 0.89720309 -5.29234886 -1.25962305 0.10007969 -5.29234886 1.15865898 0.15065557 -3.9950695
		 0.74240816 1.092053056 -3.9950695 0 0 -3.99506927 0 1.48176479 -3.9950695 -1.15865898 0.15065557 -3.9950695
		 -0.74240816 1.092053056 -3.9950695 1.13409173 0.20633891 -2.98083282 0.73612356 1.097558379 -2.98083282
		 0 0 -2.98083305 0 1.52697921 -2.98083282 -1.13409173 0.20633891 -2.98083282 -0.73612356 1.097558379 -2.98083282
		 0 1.2179152e-08 -2.14349794 1.081035733 0.25494608 -2.14349794 -0.729379 1.072465658 -2.14349794
		 -1.081035733 0.25494608 -2.14349794 0.72937906 1.072465658 -2.14349794 0 1.54170585 -2.14349794
		 0 0 -1.11746776 1.042849302 0.26617253 -1.11746776 0.72472876 1.042331696 -1.11746776
		 0 1.52563512 -1.11746776 -1.042849302 0.2661725 -1.11746776 -0.72472876 1.042331696 -1.11746776
		 0.79476285 1.015895963 -0.0088835526 0.94811332 0.27907243 -0.008883521 0 1.49925113 -0.0088835582
		 0 0 -0.0088835061 -0.79476279 1.015895844 -0.0088835089 -0.94811332 0.27907243 -0.0088835061
		 0 1.46836913 0.96997273 0.91761613 0.30594048 0.96997285 0 0 0.96997273 -0.91761619 0.30594045 0.96997279
		 0.84458077 0.37482339 1.91344881 0.78935581 1.18233442 1.91344893 0 1.44031477 1.91344881
		 0.964113 0.9869138 1.91344893 0 0 1.91344881 -0.78935575 1.18233442 1.91344881 -0.964113 0.9869138 1.91344881
		 -0.84458077 0.37482342 1.91344893 0.69704413 1.2134999 2.85692477 0 1.41440463 2.85692477
		 0 0 2.85692501 -0.69704413 1.21350002 2.85692477 -1.15812886 0.92179531 2.85692477
		 1.15812886 0.92179531 2.85692477 1.13444495 0.5931673 4.012682915 0 0 4.012682915
		 0.94617736 0.33337101 4.012682915 0.80913562 1.17208529 4.012682915 1.44093776 0.81626236 4.012682915
		 0 1.37585771 4.012682915;
	setAttr ".vt[498:569]" -1.13444495 0.5931673 4.012682915 -0.94617736 0.33337098 4.012682915
		 -1.44093776 0.81626236 4.012682915 -0.80913562 1.17208529 4.012682915 0 0 5.19202757
		 1.46325195 0.55044502 5.19202757 1.11298549 1.11031973 5.19202757 1.92338932 0.81826591 5.19202757
		 0 1.35413361 5.19202805 -1.038386106 0.26284391 5.19202757 -1.46325195 0.55044502 5.19202757
		 -1.92338943 0.81826591 5.19202805 -1.11298549 1.11031973 5.19202757 1.038386106 0.26284391 5.19202757
		 0 1.32270408 6.22985172 0 0.015757838 6.22985125 2.44609213 0.82125473 6.22985125
		 1.75591195 0.65499932 6.22985125 1.17608261 0.29873469 6.22985125 -1.39670348 1.11637187 6.22985077
		 -1.75591183 0.65499932 6.22985125 -1.17608249 0.29873469 6.22985077 1.39670348 1.11637187 6.22985125
		 -2.44609213 0.82125473 6.22985125 2.078441381 0.76476663 7.19691467 2.84750962 0.91238117 7.1969142
		 1.79842162 1.24664414 7.19691372 0 1.46609545 7.1969142 0 0.030969802 7.1969142 1.27039409 0.33383957 7.1969142
		 -2.84750962 0.91238117 7.1969142 -2.078441381 0.76476663 7.1969142 -1.79842162 1.24664426 7.19691372
		 -1.27039409 0.33383957 7.1969142 2.8781662 0.95627344 7.8691411 1.90466273 1.30824971 7.86914158
		 2.12318182 0.69831175 7.86914158 1.13486171 0.27896208 7.86914063 0 0.013761746 7.8691411
		 -2.8781662 0.95627338 7.8691411 -1.90466261 1.30824959 7.86914158 -1.13486171 0.27896205 7.86914063
		 -2.12318182 0.69831175 7.8691411 0 1.51360679 7.8691411 0 0.0029903324 8.5177803
		 0.89955753 0.2383737 8.51777935 2.71144795 1.0069684982 8.5177803 0 1.61669958 8.5177803
		 1.82996774 1.47642231 8.5177803 -1.96933484 0.72715026 8.5177803 -2.71144795 1.0069684982 8.5177803
		 -1.82996774 1.47642231 8.5177803 1.96933484 0.7271502 8.5177803 -0.89955759 0.23837371 8.5177803
		 1.70683527 0.74308395 9.42587662 0 1.72577798 9.42587662 1.34746301 1.61010647 9.42587662
		 0 0.001135836 9.42587662 0.65501076 0.23564972 9.42587662 -1.70683527 0.74308395 9.42587662
		 -1.34746301 1.61010635 9.42587662 -0.65501076 0.23564972 9.42587662 1.62321711 1.085906386 10.22783089
		 1.52434361 1.23716819 10.22783089 0 1.64273739 10.22783089 0.81558412 1.67585349 10.22783089
		 0.56114417 0.23077273 10.22783089 0 0.052776959 10.22783089 -1.62321711 1.085906386 10.22783089
		 -1.52434361 1.23716819 10.22783089 -0.81558412 1.67585349 10.22782993 -0.56114411 0.23077273 10.22783089;
	setAttr -s 1195 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 0 1 4 5 1 5 6 1 6 7 1 7 4 1 8 9 1
		 9 10 1 10 11 1 11 8 1 12 13 1 13 14 1 14 15 1 15 12 1 8 16 1 16 17 1 17 18 1 18 8 1
		 506 512 1 19 560 1 21 552 1 543 556 1 217 561 1 22 23 1 23 24 1 24 3 1 3 22 1 25 26 1
		 26 27 1 27 28 1 28 25 1 29 30 1 30 31 1 31 10 1 10 29 1 9 32 1 32 29 1 5 33 1 33 34 1
		 34 6 1 35 36 1 36 37 1 37 38 1 38 35 1 39 40 1 40 41 1 41 42 1 42 39 1 43 44 1 44 45 1
		 45 46 1 46 43 1 47 48 1 48 49 0 49 50 0 50 47 1 51 16 1 16 52 1 52 48 1 48 51 0 53 54 1
		 54 17 1 17 55 1 55 53 1 56 57 1 57 40 1 39 56 1 58 59 0 59 25 1 25 60 1 60 58 1 61 23 1
		 23 26 1 26 59 1 59 61 0 22 27 1 62 63 1 63 27 1 22 62 1 64 65 0 65 66 1 66 67 1 67 64 1
		 47 68 1 68 51 1 67 69 1 69 61 1 59 67 1 70 71 1 71 66 1 66 72 1 72 70 1 73 65 1 64 74 1
		 74 73 1 71 69 1 75 76 1 76 9 1 8 75 1 11 52 1 51 55 0 68 74 1 74 55 1 68 77 1 77 73 1
		 78 79 1 79 73 1 77 78 1 80 76 1 76 81 1 81 82 1 82 80 1 83 24 1 61 83 0 84 83 1 69 84 1
		 85 86 1 86 87 0 87 88 1 88 85 1 89 90 1 90 86 0 85 89 1 91 92 1 92 90 0 89 91 1 93 94 1
		 94 92 0 91 93 1 95 96 1 96 94 0 93 95 1 97 98 1 98 96 0 95 97 1 99 100 1 100 98 0
		 97 99 1 101 102 1 102 100 0 99 101 1 87 102 0 101 88 1 100 103 1 103 104 1 104 98 1
		 75 18 1 18 92 1 94 75 1 52 105 1 105 49 1 105 106 1 106 107 1 107 49 0 108 109 0
		 109 110 1 110 111 0 111 108 1 110 112 1 112 113 0 113 111 1 112 109 1 108 113 1 111 50 0;
	setAttr ".ed[166:331]" 49 108 0 113 107 0 107 50 0 114 115 1 115 116 0 116 117 1
		 117 114 0 118 0 0 0 119 0 119 116 0 116 118 1 119 120 0 120 117 0 118 117 1 120 0 0
		 121 114 1 118 121 0 122 1 1 120 122 1 123 124 1 124 125 1 125 126 1 126 123 1 127 123 1
		 126 128 1 128 127 1 129 130 1 130 131 0 131 132 1 132 129 1 133 134 1 134 126 1 125 133 1
		 135 136 1 136 130 0 129 135 1 134 137 1 137 128 1 138 139 1 139 140 1 140 141 1 141 138 1
		 139 142 1 142 143 1 143 140 1 141 143 1 142 138 1 140 134 1 133 141 1 143 137 1 132 124 1
		 123 129 1 127 135 1 495 486 1 144 145 1 145 146 1 146 147 1 147 144 1 148 149 1 149 150 1
		 150 151 1 151 148 1 150 152 1 152 153 1 153 151 1 152 154 1 154 155 1 155 153 1 156 157 1
		 157 158 1 158 159 1 159 156 1 160 161 1 161 162 1 162 163 1 163 160 1 84 164 1 164 122 1
		 120 84 1 70 164 1 84 71 1 165 58 0 60 53 1 53 165 1 28 15 1 15 166 1 166 25 1 87 39 1
		 42 102 1 444 450 1 36 156 1 159 37 1 534 522 1 168 169 1 169 170 1 170 171 1 171 168 1
		 172 173 1 173 174 1 174 175 1 175 172 1 523 514 1 167 468 1 440 445 1 176 177 1 177 178 1
		 178 179 1 179 176 1 180 181 1 181 182 1 182 183 1 183 180 1 180 171 1 170 181 1 184 185 1
		 185 186 1 186 187 1 187 184 1 188 189 1 189 190 1 190 191 1 191 188 1 44 192 1 192 193 1
		 193 45 1 161 194 1 194 195 1 195 162 1 196 197 1 197 198 1 198 199 1 199 196 1 2 62 1
		 77 47 1 47 200 1 200 78 1 80 32 1 201 202 1 202 203 1 203 204 1 204 201 1 30 205 1
		 205 106 1 106 31 1 206 31 1 105 206 1 11 206 1 207 208 1 209 210 1 210 183 1 182 209 1
		 202 211 1 211 212 1 212 203 1 213 188 1 191 214 1 214 213 1 215 216 1 216 21 1 7 563 1
		 217 215 1 34 81 1 81 104 1 103 34 1 41 6 1 6 103 1;
	setAttr ".ed[332:497]" 103 42 1 7 217 1 195 178 1 178 218 1 218 162 1 159 219 1
		 219 220 1 220 37 1 221 38 1 38 154 1 152 221 1 222 221 1 150 222 1 174 222 1 149 174 1
		 149 147 1 147 175 1 186 197 1 197 46 1 46 187 1 220 154 1 146 223 1 223 175 1 224 225 1
		 225 168 1 171 224 1 212 224 1 180 212 1 183 203 1 195 226 1 226 179 1 218 198 1 198 163 1
		 186 163 1 190 187 1 45 190 1 193 191 1 208 158 1 210 204 1 145 169 1 168 146 1 227 172 1
		 223 227 1 225 223 1 179 210 1 209 176 1 226 204 1 157 426 1 207 228 1 228 219 1 219 208 1
		 115 121 1 200 50 1 107 229 1 229 200 1 53 166 1 166 56 1 56 54 1 14 230 1 230 166 1
		 231 13 1 13 564 1 112 232 0 232 233 1 233 109 0 110 234 0 234 232 1 115 235 0 235 236 1
		 236 121 0 236 237 1 237 114 0 233 234 1 237 235 1 18 54 1 54 90 1 238 0 1 24 238 1
		 119 238 1 83 119 0 41 217 1 230 231 1 231 216 1 216 57 1 57 230 1 215 40 1 239 12 1
		 12 28 1 28 240 1 240 239 1 189 184 1 220 241 1 241 155 1 63 240 1 33 82 1 20 494 1
		 225 242 1 242 227 1 243 222 1 173 243 1 244 221 1 243 244 1 244 35 1 218 245 1 245 199 1
		 228 241 1 148 144 1 224 246 1 246 242 1 194 247 1 247 226 1 211 246 1 196 43 1 185 160 1
		 177 245 1 248 214 1 214 193 1 192 248 1 13 249 1 249 565 1 247 201 1 239 249 1 206 10 1
		 86 54 1 54 87 1 59 64 1 58 64 0 64 55 1 79 65 1 64 165 1 165 55 0 104 76 1 75 104 1
		 250 85 1 88 250 1 250 89 1 250 91 1 250 93 1 250 95 1 250 97 1 250 99 1 250 101 1
		 75 96 1 96 104 1 102 103 1 233 251 0 251 234 0 251 232 0 252 236 0 235 252 0 237 252 0
		 119 84 1 248 253 1 253 214 1 166 60 1 54 39 1 253 213 1 14 231 1 56 230 1 138 254 1
		 254 139 1 254 142 1 65 72 1 205 229 1 255 256 1 256 2 1;
	setAttr ".ed[498:663]" 1 255 1 4 258 1 258 257 1 257 5 1 259 262 1 262 261 1
		 261 260 1 260 259 1 263 266 1 266 265 1 265 264 1 264 263 1 259 269 1 269 268 1 268 267 1
		 267 259 1 500 490 1 271 498 1 517 530 1 401 566 1 270 567 1 273 256 1 256 275 1 275 274 1
		 274 273 1 276 279 1 279 278 1 278 277 1 277 276 1 29 261 1 261 280 1 280 30 1 32 260 1
		 257 281 1 281 33 1 35 283 1 283 282 1 282 36 1 284 287 1 287 286 1 286 285 1 285 284 1
		 43 289 1 289 288 1 288 44 1 290 293 1 293 292 0 292 291 0 291 290 1 294 291 0 291 295 1
		 295 267 1 267 294 1 296 298 1 298 268 1 268 297 1 297 296 1 299 284 1 285 300 1 300 299 1
		 301 303 1 303 276 1 276 302 1 302 301 0 304 302 0 302 277 1 277 274 1 274 304 1 278 273 1
		 62 273 1 278 63 1 305 307 1 307 306 1 306 65 1 65 305 0 294 308 1 308 290 1 307 302 1
		 304 309 1 309 307 1 72 306 1 306 310 1 310 70 1 311 312 1 312 305 1 65 311 1 309 310 1
		 313 259 1 260 314 1 314 313 1 295 262 1 298 294 0 298 312 1 312 308 1 311 315 1 315 308 1
		 78 315 1 311 79 1 82 316 1 316 314 1 314 80 1 317 304 0 275 317 1 318 309 1 317 318 1
		 319 322 1 322 321 1 321 320 0 320 319 1 323 319 1 320 324 0 324 323 1 325 323 1 324 326 0
		 326 325 1 327 325 1 326 328 0 328 327 1 329 327 1 328 330 0 330 329 1 331 329 1 330 332 0
		 332 331 1 333 331 1 332 334 0 334 333 1 335 333 1 334 336 0 336 335 1 322 335 1 336 321 0
		 332 338 1 338 337 1 337 334 1 313 328 1 326 269 1 269 313 1 292 339 1 339 295 1 292 341 0
		 341 340 1 340 339 1 342 345 1 345 344 0 344 343 1 343 342 0 345 347 1 347 346 0 346 344 1
		 347 342 1 343 346 1 342 292 0 293 345 0 293 341 0 341 347 0 348 351 0 351 350 1 350 349 0
		 349 348 1 352 350 1 350 353 0 353 255 0 255 352 0 351 354 0 354 353 0;
	setAttr ".ed[664:829]" 255 354 0 351 352 1 355 352 0 348 355 1 122 354 1 356 357 1
		 357 125 1 124 356 1 128 357 1 356 127 1 358 132 1 131 359 0 359 358 1 357 360 1 360 133 1
		 135 358 1 359 136 0 137 360 1 361 141 1 141 363 1 363 362 1 362 361 1 363 143 1 143 364 1
		 364 362 1 361 364 1 360 363 1 358 356 1 144 366 1 366 365 1 365 145 1 151 368 1 368 367 1
		 367 148 1 153 369 1 369 368 1 155 370 1 370 369 1 156 372 1 372 371 1 371 157 1 160 374 1
		 374 373 1 373 161 1 318 354 1 164 318 1 310 318 1 375 296 1 296 303 1 301 375 0 276 376 1
		 376 266 1 266 279 1 336 287 1 284 321 1 282 372 1 378 379 1 379 170 1 169 378 1 172 381 1
		 381 380 1 380 173 1 467 472 1 466 473 1 176 383 1 383 382 1 382 177 1 384 385 1 385 182 1
		 181 384 1 379 384 1 184 387 1 387 386 1 386 185 1 188 389 1 389 388 1 388 189 1 288 390 1
		 390 192 1 373 391 1 391 194 1 199 393 1 393 392 1 392 196 1 200 290 1 290 315 1 201 395 1
		 395 394 1 394 202 1 280 340 1 340 205 1 396 339 1 280 396 1 396 262 1 397 207 1 385 398 1
		 398 209 1 394 399 1 399 211 1 213 400 1 400 389 1 402 401 1 401 403 1 281 337 1 338 316 1
		 316 281 1 287 337 1 337 257 1 257 286 1 403 258 1 373 404 1 404 382 1 382 391 1 397 431 1
		 282 406 1 406 405 1 405 372 1 407 369 1 370 283 1 283 407 1 408 368 1 407 408 1 380 367 1
		 408 380 1 381 366 1 366 367 1 387 289 1 289 392 1 392 386 1 370 406 1 381 409 1 409 365 1
		 410 379 1 378 411 1 411 410 1 399 384 1 410 399 1 394 385 1 383 412 1 412 391 1 374 393 1
		 393 404 1 374 386 1 388 288 1 387 388 1 389 390 1 430 371 1 371 397 1 395 398 1 365 378 1
		 227 409 1 409 411 1 398 383 1 395 412 1 397 405 1 405 228 1 557 547 1 355 349 1 229 341 1
		 293 200 1 297 299 1 299 376 1 376 296 1 539 531 1 376 413 1 413 265 1;
	setAttr ".ed[830:995]" 414 272 1 559 569 1 264 414 1 343 416 0 416 415 1 415 346 0
		 415 417 1 417 344 0 355 419 0 419 418 1 418 349 0 348 420 0 420 419 1 417 416 1 418 420 1
		 324 297 1 297 269 1 421 275 1 255 421 1 353 317 0 421 353 1 403 286 1 413 300 1 300 402 1
		 402 414 1 414 413 1 285 401 1 240 279 1 279 263 1 263 239 1 241 406 1 242 411 1 408 243 1
		 407 244 1 245 404 1 246 410 1 412 247 1 390 400 1 400 248 1 249 264 1 261 396 1 321 297 1
		 297 320 1 305 302 1 305 301 0 298 305 1 298 375 0 375 305 1 338 313 1 314 338 1 422 322 1
		 319 422 1 323 422 1 325 422 1 327 422 1 329 422 1 331 422 1 333 422 1 335 422 1 338 330 1
		 330 313 1 337 336 1 417 423 0 423 416 0 415 423 0 424 418 0 419 424 0 424 420 0 318 353 1
		 400 253 1 303 376 1 284 297 1 414 265 1 413 299 1 362 425 1 425 361 1 364 425 1 426 432 1
		 427 158 1 428 208 1 429 207 1 430 436 1 431 437 1 426 427 1 427 428 1 428 429 1 430 426 1
		 431 430 1 429 431 1 432 439 1 433 427 1 434 428 1 435 429 1 436 442 1 437 443 1 432 433 1
		 434 433 1 434 435 1 436 432 1 436 437 1 435 437 1 438 434 1 439 447 1 440 433 1 441 435 1
		 443 448 1 439 440 1 440 438 1 442 439 1 443 442 1 438 441 1 441 443 1 444 438 1 445 451 1
		 446 441 1 447 453 1 448 454 1 449 442 1 444 446 1 445 447 1 446 448 1 447 449 1 445 444 1
		 448 449 1 450 457 1 451 460 1 452 446 1 453 461 1 455 449 1 450 451 1 452 450 1 451 453 1
		 455 454 1 454 452 1 453 455 1 456 452 1 457 463 1 458 455 1 459 454 1 460 464 1 461 465 1
		 456 457 1 457 460 1 460 461 1 459 456 1 458 459 1 461 458 1 462 456 1 464 468 1 465 470 1
		 466 459 1 467 458 1 462 463 1 464 463 1 464 465 1 466 462 1 466 467 1 465 467 1 469 463 1
		 470 474 1 471 462 1 472 377 1 473 477 1 468 469 1 470 468 1 469 471 1;
	setAttr ".ed[996:1161]" 473 472 1 472 470 1 471 473 1 474 480 1 475 469 1 167 481 1
		 476 471 1 377 483 1 477 485 1 167 474 1 475 167 1 475 476 1 474 377 1 377 477 1 476 477 1
		 478 475 1 479 167 1 480 487 1 481 491 1 482 476 1 483 489 1 484 377 1 485 271 1 479 480 1
		 478 481 1 479 481 1 480 483 1 484 485 1 484 483 1 478 482 1 482 485 1 486 479 1 487 497 1
		 20 478 1 488 482 1 490 484 1 491 496 1 486 487 1 20 491 1 20 488 1 487 489 1 490 271 1
		 488 271 1 486 491 1 490 489 1 492 20 1 493 488 1 494 511 1 495 504 1 497 506 1 498 508 1
		 499 271 1 500 509 1 501 489 1 493 494 1 495 496 1 496 492 1 495 497 1 492 494 1 499 493 1
		 500 501 1 498 500 1 497 501 1 499 498 1 502 493 1 503 492 1 504 520 1 505 496 1 507 499 1
		 508 518 1 509 521 1 510 501 1 511 516 1 502 511 1 504 505 1 504 506 1 507 502 1 509 510 1
		 506 510 1 505 503 1 503 511 1 508 509 1 507 508 1 512 525 1 513 502 1 514 505 1 515 503 1
		 516 527 1 517 510 1 518 529 1 519 507 1 514 515 1 513 516 1 515 516 1 512 520 1 518 521 1
		 519 513 1 519 518 1 517 512 1 520 514 1 521 517 1 522 515 1 523 532 1 524 520 1 525 541 1
		 526 513 1 528 521 1 529 540 1 530 538 1 531 519 1 522 523 1 524 525 1 523 524 1 526 527 1
		 527 522 1 528 529 1 525 530 1 530 528 1 531 526 1 529 531 1 532 544 1 533 524 1 534 550 1
		 535 527 1 536 526 1 537 528 1 538 549 1 539 551 1 541 545 1 533 541 1 533 532 1 534 535 1
		 534 532 1 535 536 1 541 538 1 537 538 1 539 540 1 537 540 1 536 539 1 542 536 1 543 535 1
		 544 19 1 545 553 1 546 533 1 547 540 1 548 537 1 549 558 1 544 550 1 545 546 1 546 544 1
		 547 548 1 549 545 1 548 549 1 550 543 1 543 542 1 551 547 1 542 551 1 552 550 1 553 562 1
		 554 546 1 555 542 1 556 564 1 270 548 1 557 272 1 558 568 1 559 551 1;
	setAttr ".ed[1162:1194]" 552 19 1 553 554 1 555 556 1 554 19 1 552 556 1 270 557 1
		 558 553 1 559 555 1 270 558 1 559 557 1 560 215 1 561 19 1 562 4 1 563 554 1 21 231 1
		 565 555 1 566 270 1 567 403 1 272 402 1 568 258 1 569 264 1 21 560 1 562 563 1 564 21 1
		 564 565 1 561 560 1 566 272 1 568 562 1 272 569 1 565 569 1 566 567 1 563 561 1 567 568 1;
	setAttr -s 628 -ch 2386 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 15
		mu 0 4 12 13 14 15
		f 4 16 17 18 19
		mu 0 4 8 16 17 18
		f 4 22 1162 21 -1184
		mu 0 4 22 793 19 801
		f 4 -1053 -1064 1075 1061
		mu 0 4 721 726 737 734
		f 4 258 1106 1098 -1129
		mu 0 4 772 757 758 769
		f 4 1079 -1108 1099 -1091
		mu 0 4 745 761 760 754
		f 4 1164 1157 1186 1177
		mu 0 4 796 797 806 807
		f 4 -1110 1101 1088 1083
		mu 0 4 763 762 746 750
		f 4 -1166 -1176 1193 1173
		mu 0 4 21 795 805 803
		f 4 1163 1155 -1145 1138
		mu 0 4 794 795 786 785
		f 4 1069 1068 -1089 1080
		mu 0 4 733 744 750 746
		f 4 -220 1051 -1033 -1040
		mu 0 4 713 724 725 720
		f 4 25 26 27 28
		mu 0 4 23 24 25 3
		f 4 29 30 31 32
		mu 0 4 26 27 28 29
		f 4 33 34 35 36
		mu 0 4 30 31 32 10
		f 4 37 38 -37 -10
		mu 0 4 9 33 30 10
		f 4 39 40 41 -6
		mu 0 4 5 34 35 6
		f 4 42 43 44 45
		mu 0 4 36 37 38 627
		f 4 46 47 48 49
		mu 0 4 40 41 42 43
		f 4 50 51 52 53
		mu 0 4 44 45 46 47
		f 4 54 55 56 57
		mu 0 4 48 49 50 51
		f 4 58 59 60 61
		mu 0 4 52 16 53 54
		f 4 62 63 64 65
		mu 0 4 55 56 17 57
		f 4 66 67 -47 68
		mu 0 4 58 59 41 40
		f 4 69 70 71 72
		mu 0 4 554 61 26 62
		f 4 73 74 75 76
		mu 0 4 63 24 27 61
		f 4 -31 -75 -26 77
		mu 0 4 28 27 24 23
		f 4 78 79 -78 80
		mu 0 4 64 65 28 23
		f 4 81 82 83 84
		mu 0 4 66 67 68 69
		f 4 85 86 -62 -55
		mu 0 4 48 70 71 49
		f 4 87 88 -77 89
		mu 0 4 69 72 73 74
		f 4 90 91 92 93
		mu 0 4 75 76 68 77
		f 4 94 -82 95 96
		mu 0 4 78 67 66 79
		f 4 -88 -84 -92 97
		mu 0 4 72 69 68 76
		f 4 98 99 -9 100
		mu 0 4 80 81 9 8
		f 4 101 -60 -17 -12
		mu 0 4 11 53 16 8
		f 4 102 -65 -18 -59
		mu 0 4 52 57 17 16
		f 4 -87 103 104 -103
		mu 0 4 71 70 79 82
		f 4 -97 -104 105 106
		mu 0 4 78 79 70 83
		f 4 107 108 -107 109
		mu 0 4 84 85 78 83
		f 4 110 111 112 113
		mu 0 4 86 81 87 88
		f 4 114 -27 -74 115
		mu 0 4 89 25 24 63
		f 4 116 -116 -89 117
		mu 0 4 90 91 73 72
		f 4 118 119 120 121
		mu 0 4 92 93 94 95
		f 4 122 123 -119 124
		mu 0 4 96 97 93 92
		f 4 125 126 -123 127
		mu 0 4 98 99 97 96
		f 4 128 129 -126 130
		mu 0 4 100 101 99 98
		f 4 131 132 -129 133
		mu 0 4 102 103 101 100
		f 4 134 135 -132 136
		mu 0 4 104 105 103 102
		f 4 137 138 -135 139
		mu 0 4 106 107 105 104
		f 4 140 141 -138 142
		mu 0 4 108 109 107 106
		f 4 -121 143 -141 144
		mu 0 4 95 94 109 108
		f 4 145 146 147 -139
		mu 0 4 107 110 111 105
		f 4 148 149 -130 150
		mu 0 4 80 18 99 101
		f 4 -56 -61 151 152
		mu 0 4 112 54 53 113
		f 4 -153 153 154 155
		mu 0 4 112 113 114 115
		f 4 156 157 158 159
		mu 0 4 116 117 118 119
		f 4 160 161 162 -159
		mu 0 4 120 121 122 123
		f 4 163 -157 164 -162
		mu 0 4 121 117 116 122
		f 4 165 -57 166 -160
		mu 0 4 119 124 125 116
		f 4 167 168 -166 -163
		mu 0 4 122 126 127 123
		f 4 -156 -168 -165 -167
		mu 0 4 125 126 122 116
		f 4 169 170 171 172
		mu 0 4 128 129 130 131
		f 4 173 174 175 176
		mu 0 4 132 133 134 130
		f 4 -176 177 178 -172
		mu 0 4 130 134 135 131
		f 4 179 -179 180 -174
		mu 0 4 132 136 137 133
		f 4 181 -173 -180 182
		mu 0 4 138 139 136 132
		f 4 183 -1 -181 184
		mu 0 4 140 141 142 143
		f 4 185 186 187 188
		mu 0 4 560 145 146 147
		f 4 189 -189 190 191
		mu 0 4 148 144 564 149
		f 4 192 193 194 195
		mu 0 4 150 565 152 153
		f 4 196 197 -188 198
		mu 0 4 154 155 147 146
		f 4 199 200 -193 201
		mu 0 4 156 157 151 561
		f 4 202 203 -191 -198
		mu 0 4 563 158 149 564
		f 4 204 205 206 207
		mu 0 4 159 160 562 162
		f 4 208 209 210 -206
		mu 0 4 559 163 556 161
		f 4 -208 211 -210 212
		mu 0 4 159 162 164 558
		f 4 -207 213 -197 214
		mu 0 4 162 562 155 154
		f 4 -211 215 -203 -214
		mu 0 4 161 556 158 563
		f 4 -196 216 -186 217
		mu 0 4 150 153 145 560
		f 4 -202 -218 -190 218
		mu 0 4 156 561 144 148
		f 4 219 1033 1028 -1054
		mu 0 4 724 713 714 727
		f 4 220 221 222 223
		mu 0 4 165 166 167 168
		f 4 224 225 226 227
		mu 0 4 169 170 171 172
		f 4 -227 228 229 230
		mu 0 4 173 174 175 176
		f 4 -230 231 232 233
		mu 0 4 176 175 177 178
		f 4 925 920 -914 907
		mu 0 4 643 644 636 635
		f 4 234 235 236 237
		mu 0 4 179 180 181 632
		f 4 931 926 -934 937
		mu 0 4 651 646 645 654
		f 4 238 239 240 241
		mu 0 4 183 184 631 616
		f 4 242 243 -185 244
		mu 0 4 90 187 140 143
		f 4 -91 245 -243 246
		mu 0 4 76 75 187 90
		f 4 247 -73 248 249
		mu 0 4 188 60 551 55
		f 4 -33 250 251 252
		mu 0 4 26 29 15 550
		f 4 -144 253 -50 254
		mu 0 4 109 94 40 43
		f 4 982 -989 995 990
		mu 0 4 683 684 693 695
		f 4 993 988 -984 978
		mu 0 4 692 693 684 685
		f 4 960 954 -972 965
		mu 0 4 670 667 676 675
		f 4 -955 959 955 -973
		mu 0 4 676 667 668 680
		f 4 256 -238 257 -44
		mu 0 4 190 179 632 633
		f 4 1005 999 -1020 1012
		mu 0 4 192 699 705 704
		f 4 1011 1006 1001 -1021
		mu 0 4 703 700 193 706
		f 4 1125 1124 1144 1139
		mu 0 4 771 780 785 786
		f 4 -1099 1108 -1118 1126
		mu 0 4 770 759 760 771
		f 4 259 260 261 262
		mu 0 4 194 195 196 197
		f 4 263 264 265 266
		mu 0 4 198 199 623 622
		f 4 270 271 272 273
		mu 0 4 202 203 204 205
		f 4 274 275 276 277
		mu 0 4 206 207 208 209
		f 4 -275 278 -262 279
		mu 0 4 210 211 197 196
		f 4 280 281 282 283
		mu 0 4 212 213 214 613
		f 4 284 285 286 287
		mu 0 4 216 217 612 628
		f 4 288 289 290 -52
		mu 0 4 45 220 221 46
		f 4 291 292 293 -240
		mu 0 4 184 222 223 631
		f 4 294 295 296 297
		mu 0 4 224 225 226 227
		f 4 -81 -29 -3 298
		mu 0 4 64 23 3 2
		f 4 299 300 301 -110
		mu 0 4 83 48 228 84
		f 4 -38 -100 -111 302
		mu 0 4 33 9 81 86
		f 4 303 304 305 306
		mu 0 4 229 230 630 607
		f 4 -35 307 308 309
		mu 0 4 32 31 233 114
		f 4 310 -310 -154 311
		mu 0 4 234 32 114 113
		f 4 -312 -152 -102 312
		mu 0 4 234 113 53 11
		f 4 913 908 -236 379
		mu 0 4 635 636 181 180
		f 4 313 -910 915 910
		mu 0 4 235 236 638 639
		f 4 314 315 -277 316
		mu 0 4 237 238 209 208
		f 4 317 318 319 -305
		mu 0 4 230 239 240 630
		f 4 320 -288 321 322
		mu 0 4 241 216 628 629
		f 4 326 -1173 -1188 -25
		mu 0 4 247 248 802 803
		f 4 327 328 -147 329
		mu 0 4 35 87 111 110
		f 4 330 331 332 -49
		mu 0 4 42 6 110 43
		f 4 -294 334 335 336
		mu 0 4 185 618 204 249
		f 4 -909 914 909 369
		mu 0 4 611 637 638 236
		f 4 -258 337 338 339
		mu 0 4 191 182 250 251
		f 4 340 341 -232 342
		mu 0 4 626 39 177 175
		f 4 343 -343 -229 344
		mu 0 4 253 626 175 174
		f 4 345 -345 -226 346
		mu 0 4 200 624 171 170
		f 4 -266 -347 347 348
		mu 0 4 201 200 170 168
		f 4 -283 349 350 351
		mu 0 4 215 615 225 255
		f 4 -45 -340 352 -342
		mu 0 4 39 634 256 177
		f 4 353 354 -349 -223
		mu 0 4 167 257 201 168
		f 4 355 356 -263 357
		mu 0 4 621 608 194 197
		f 4 358 -358 -279 359
		mu 0 4 260 621 197 211
		f 4 -320 -360 -278 360
		mu 0 4 231 620 206 209
		f 4 361 362 -273 -335
		mu 0 4 618 605 205 204
		f 4 -241 -337 363 364
		mu 0 4 186 185 249 262
		f 4 365 -365 -296 -350
		mu 0 4 615 263 226 225
		f 4 366 -352 -53 367
		mu 0 4 218 264 47 46
		f 4 -287 -368 -291 368
		mu 0 4 219 218 46 221
		f 4 -306 -361 -316 370
		mu 0 4 232 231 209 238
		f 4 371 -260 372 -222
		mu 0 4 265 195 194 266
		f 4 373 -267 -355 374
		mu 0 4 267 198 622 609
		f 4 -357 375 -354 -373
		mu 0 4 194 608 268 266
		f 4 -274 376 -315 377
		mu 0 4 269 270 238 237
		f 4 -377 -363 378 -371
		mu 0 4 238 270 271 232
		f 4 380 381 382 -314
		mu 0 4 235 272 250 236
		f 4 -338 -237 -370 -383
		mu 0 4 250 182 611 236
		f 4 -23 -1186 -1158 -1167
		mu 0 4 793 22 806 797
		f 4 -1154 1166 -24 -1150
		mu 0 4 791 793 797 782
		f 4 -1084 -1090 -1098 -1111
		mu 0 4 763 750 749 757
		f 4 -1083 1089 -1069 -1077
		mu 0 4 734 749 750 744
		f 3 -428 -1042 1054
		mu 0 3 723 20 721
		f 4 -171 383 -183 -177
		mu 0 4 130 129 138 132
		f 4 384 -169 385 386
		mu 0 4 228 51 273 274
		f 4 387 388 389 -63
		mu 0 4 55 189 58 56
		f 3 -1013 1021 -1002
		mu 0 3 192 704 707
		f 4 -1001 1007 1002 -996
		mu 0 4 693 700 701 695
		f 4 1109 -1120 1129 1120
		mu 0 4 762 763 773 774
		f 4 -252 -15 390 391
		mu 0 4 550 15 14 552
		f 4 392 393 1185 1176
		mu 0 4 276 277 806 22
		f 4 394 395 396 -164
		mu 0 4 121 278 279 117
		f 4 -161 397 398 -395
		mu 0 4 121 120 280 278
		f 4 -384 399 400 401
		mu 0 4 138 129 281 282
		f 4 -402 402 403 -182
		mu 0 4 138 282 283 139
		f 4 404 -398 -158 -397
		mu 0 4 279 284 118 117
		f 4 405 -400 -170 -404
		mu 0 4 285 281 129 128
		f 4 -127 -150 406 407
		mu 0 4 97 99 18 56
		f 4 408 -4 -28 409
		mu 0 4 286 0 3 25
		f 4 410 -410 -115 411
		mu 0 4 287 286 25 89
		f 4 -334 -7 -331 412
		mu 0 4 288 7 6 42
		f 4 413 414 415 416
		mu 0 4 275 553 290 59
		f 4 -68 -416 -324 417
		mu 0 4 41 59 290 291
		f 4 -327 -413 -48 -418
		mu 0 4 291 288 42 41
		f 4 -1045 1053 1045 -1072
		mu 0 4 735 724 727 738
		f 4 418 419 420 421
		mu 0 4 292 12 29 293
		f 4 -367 -286 422 -284
		mu 0 4 614 612 217 294
		f 4 -233 -353 423 424
		mu 0 4 178 177 256 295
		f 4 -421 -32 -80 425
		mu 0 4 293 29 28 65
		f 4 -328 -41 426 -113
		mu 0 4 87 35 34 88
		f 4 -922 927 922 -916
		mu 0 4 638 646 647 639
		f 4 -375 -376 428 429
		mu 0 4 296 610 259 297
		f 4 430 -346 -265 431
		mu 0 4 298 254 623 199
		f 4 432 -344 -431 433
		mu 0 4 299 252 625 300
		f 4 -46 -341 -433 434
		mu 0 4 36 627 252 299
		f 4 -297 -364 435 436
		mu 0 4 301 262 249 302
		f 4 -970 973 970 -985
		mu 0 4 686 681 682 687
		f 4 -424 -339 -382 437
		mu 0 4 303 251 250 272
		f 4 -224 -348 -225 438
		mu 0 4 165 168 170 169
		f 4 -429 -356 439 440
		mu 0 4 297 259 258 304
		f 4 -362 -293 441 442
		mu 0 4 261 223 222 305
		f 4 -440 -359 -319 443
		mu 0 4 304 258 619 306
		f 4 -54 -351 -295 444
		mu 0 4 307 255 225 224
		f 4 -366 -282 445 -242
		mu 0 4 617 214 213 308
		f 4 -436 -336 -272 446
		mu 0 4 302 249 204 203
		f 4 447 448 -290 449
		mu 0 4 309 242 221 220
		f 4 -379 -443 452 -307
		mu 0 4 607 606 311 229
		f 4 -451 -13 -419 453
		mu 0 4 312 13 12 292
		f 3 -36 -311 454
		mu 0 3 10 32 234
		f 3 -455 -313 -11
		mu 0 3 10 234 11
		f 3 -120 455 456
		mu 0 3 94 93 56
		f 3 -85 -90 457
		mu 0 3 66 69 74
		f 3 458 -458 -70
		mu 0 3 313 66 74
		f 3 -105 -96 459
		mu 0 3 82 79 66
		f 3 -109 460 -95
		mu 0 3 78 85 67
		f 3 -106 -86 -300
		mu 0 3 83 70 48
		f 3 461 462 -460
		mu 0 3 66 314 82
		f 3 463 -99 464
		mu 0 3 111 81 80
		f 3 -98 -247 -118
		mu 0 3 72 76 90
		f 3 465 -122 466
		mu 0 3 315 92 95
		f 3 467 -125 -466
		mu 0 3 315 96 92
		f 3 468 -128 -468
		mu 0 3 315 98 96
		f 3 469 -131 -469
		mu 0 3 315 100 98
		f 3 470 -134 -470
		mu 0 3 315 102 100
		f 3 471 -137 -471
		mu 0 3 315 104 102
		f 3 472 -140 -472
		mu 0 3 315 106 104
		f 3 473 -143 -473
		mu 0 3 315 108 106
		f 3 -467 -145 -474
		mu 0 3 315 95 108
		f 3 474 475 -465
		mu 0 3 80 103 111
		f 3 -408 -456 -124
		mu 0 3 97 56 93
		f 3 -146 -142 476
		mu 0 3 110 107 109
		f 3 -476 -136 -148
		mu 0 3 111 103 105
		f 3 -101 -20 -149
		mu 0 3 80 8 18
		f 3 -58 -385 -301
		mu 0 3 48 51 228
		f 3 -405 477 478
		mu 0 3 284 279 316
		f 3 -399 -479 479
		mu 0 3 278 280 316
		f 3 -480 -478 -396
		mu 0 3 278 316 279
		f 3 480 -401 481
		mu 0 3 317 282 281
		f 3 -406 482 -482
		mu 0 3 281 285 317
		f 3 -481 -483 -403
		mu 0 3 282 317 283
		f 3 -245 -178 483
		mu 0 3 90 143 318
		f 3 -448 484 485
		mu 0 3 319 320 321
		f 3 -71 -76 -30
		mu 0 3 26 61 27
		f 3 486 -72 -253
		mu 0 3 550 62 26
		f 3 -475 -151 -133
		mu 0 3 103 80 101
		f 3 -175 -409 -411
		mu 0 3 287 0 286
		f 3 487 -254 -457
		mu 0 3 56 40 94
		f 3 -407 -19 -64
		mu 0 3 56 18 17
		f 3 -486 488 -323
		mu 0 3 319 321 322
		f 3 -464 -329 -112
		mu 0 3 81 111 87
		f 3 -332 -42 -330
		mu 0 3 110 6 35
		f 3 -255 -333 -477
		mu 0 3 109 43 110
		f 3 -449 -322 -369
		mu 0 3 221 242 219
		f 3 -1174 1187 -22
		mu 0 3 21 803 802
		f 3 -420 -16 -251
		mu 0 3 29 12 15
		f 3 -1177 -325 -415
		mu 0 3 276 22 244
		f 3 489 -414 -391
		mu 0 3 14 289 552
		f 3 490 -417 -67
		mu 0 3 58 275 59
		f 3 -205 491 492
		mu 0 3 160 159 323
		f 3 -209 -493 493
		mu 0 3 163 559 557
		f 3 -213 -494 -492
		mu 0 3 159 558 323
		f 3 -488 -390 -69
		mu 0 3 40 56 58
		f 3 -490 -14 -393
		mu 0 3 289 14 13
		f 3 -491 -389 -392
		mu 0 3 275 58 189
		f 3 -388 -249 -487
		mu 0 3 189 55 551
		f 3 -462 -459 -248
		mu 0 3 314 66 313
		f 3 -117 -484 -412
		mu 0 3 91 90 318
		f 3 494 -93 -83
		mu 0 3 67 77 68
		f 3 -66 -463 -250
		mu 0 3 55 57 188
		f 4 -386 -155 -309 495
		mu 0 4 324 115 114 233
		f 4 496 497 -2 498
		mu 0 4 325 326 2 1
		f 4 499 500 501 -5
		mu 0 4 4 327 328 5
		f 4 502 503 504 505
		mu 0 4 329 330 331 332
		f 4 506 507 508 509
		mu 0 4 333 334 335 336
		f 4 510 511 512 513
		mu 0 4 329 337 338 339
		f 4 1178 1167 1159 -1189
		mu 0 4 808 340 798 343
		f 4 -1049 -1058 1046 1077
		mu 0 4 742 731 728 740
		f 4 1121 1111 1103 -1134
		mu 0 4 775 764 766 779
		f 4 -1080 -1095 516 -1113
		mu 0 4 761 745 751 767
		f 4 -1178 1191 -832 1169
		mu 0 4 796 807 812 800
		f 4 -1102 -1115 1105 1092
		mu 0 4 746 762 768 753
		f 4 -1161 -1171 518 1194
		mu 0 4 811 799 342 810
		f 4 1168 -1139 -1148 1142
		mu 0 4 799 794 785 790
		f 4 1072 -1081 -1093 1086
		mu 0 4 739 733 746 753
		f 4 -515 1056 1049 -1041
		mu 0 4 718 730 732 716
		f 4 519 520 521 522
		mu 0 4 344 326 345 346
		f 4 523 524 525 526
		mu 0 4 347 348 349 350
		f 4 527 528 529 -34
		mu 0 4 30 331 351 31
		f 4 -505 -528 -39 530
		mu 0 4 332 331 30 33
		f 4 -502 531 532 -40
		mu 0 4 5 328 352 34
		f 4 533 534 535 -43
		mu 0 4 36 353 602 37
		f 4 536 537 538 539
		mu 0 4 355 356 357 358
		f 4 540 541 542 -51
		mu 0 4 44 359 360 45
		f 4 543 544 545 546
		mu 0 4 361 362 363 364
		f 4 547 548 549 550
		mu 0 4 365 366 367 339
		f 4 551 552 553 554
		mu 0 4 368 369 338 370
		f 4 555 -540 556 557
		mu 0 4 371 355 358 372
		f 4 558 559 560 561
		mu 0 4 373 545 347 375
		f 4 562 563 564 565
		mu 0 4 376 375 350 346
		f 4 566 -523 -565 -526
		mu 0 4 349 344 346 350
		f 4 567 -567 568 -79
		mu 0 4 64 344 349 65
		f 4 569 570 571 572
		mu 0 4 377 378 379 67
		f 4 -547 -548 573 574
		mu 0 4 361 364 380 381
		f 4 575 -563 576 577
		mu 0 4 378 382 383 384
		f 4 -94 578 579 580
		mu 0 4 75 77 379 385
		f 4 581 582 -573 583
		mu 0 4 386 387 377 67
		f 4 584 -580 -571 -578
		mu 0 4 384 385 379 378
		f 4 585 -506 586 587
		mu 0 4 388 329 332 389
		f 4 -503 -514 -550 588
		mu 0 4 330 329 339 367
		f 4 -551 -513 -553 589
		mu 0 4 365 339 338 369
		f 4 -590 590 591 -574
		mu 0 4 380 390 387 381
		f 4 592 593 -592 -582
		mu 0 4 386 391 381 387
		f 4 594 -593 595 -108
		mu 0 4 84 391 386 85
		f 4 -114 596 597 598
		mu 0 4 86 88 392 389
		f 4 599 -566 -522 600
		mu 0 4 393 376 346 345
		f 4 601 -577 -600 602
		mu 0 4 394 384 383 395
		f 4 603 604 605 606
		mu 0 4 396 397 398 399
		f 4 607 -607 608 609
		mu 0 4 400 396 399 401
		f 4 610 -610 611 612
		mu 0 4 402 400 401 403
		f 4 613 -613 614 615
		mu 0 4 404 402 403 405
		f 4 616 -616 617 618
		mu 0 4 406 404 405 407
		f 4 619 -619 620 621
		mu 0 4 408 406 407 409
		f 4 622 -622 623 624
		mu 0 4 410 408 409 411
		f 4 625 -625 626 627
		mu 0 4 412 410 411 413
		f 4 628 -628 629 -605
		mu 0 4 397 412 413 398
		f 4 -624 630 631 632
		mu 0 4 411 409 414 415
		f 4 633 -615 634 635
		mu 0 4 388 405 403 337
		f 4 636 637 -549 -546
		mu 0 4 416 417 367 366
		f 4 638 639 640 -637
		mu 0 4 416 418 419 417
		f 4 641 642 643 644
		mu 0 4 420 421 422 423
		f 4 -643 645 646 647
		mu 0 4 424 425 426 427
		f 4 -647 648 -645 649
		mu 0 4 427 426 420 423
		f 4 -642 650 -545 651
		mu 0 4 421 420 428 429
		f 4 -646 -652 652 653
		mu 0 4 426 425 430 431
		f 4 -651 -649 -654 -639
		mu 0 4 428 420 426 431
		f 4 654 655 656 657
		mu 0 4 432 433 434 435
		f 4 658 659 660 661
		mu 0 4 436 434 437 438
		f 4 -656 662 663 -660
		mu 0 4 434 433 439 437
		f 4 -662 664 -663 665
		mu 0 4 436 438 440 441
		f 4 666 -666 -655 667
		mu 0 4 442 436 441 443
		f 4 668 -665 -499 -184
		mu 0 4 140 444 445 141
		f 4 669 670 -187 671
		mu 0 4 446 572 146 145
		f 4 -192 672 -670 673
		mu 0 4 148 149 447 569
		f 4 674 -195 675 676
		mu 0 4 568 153 152 449
		f 4 -199 -671 677 678
		mu 0 4 154 146 572 570
		f 4 679 -677 680 -200
		mu 0 4 156 448 573 157
		f 4 -678 -673 -204 681
		mu 0 4 450 447 149 158
		f 4 682 683 684 685
		mu 0 4 451 162 452 566
		f 4 -685 686 687 688
		mu 0 4 453 571 556 555
		f 4 689 -688 -212 -683
		mu 0 4 451 454 164 162
		f 4 -215 -679 690 -684
		mu 0 4 162 154 570 452
		f 4 -691 -682 -216 -687
		mu 0 4 571 450 158 556
		f 4 691 -672 -217 -675
		mu 0 4 568 446 145 153
		f 4 -219 -674 -692 -680
		mu 0 4 156 148 569 448
		f 4 -1029 1036 -1050 -1059
		mu 0 4 727 714 716 732
		f 4 692 693 694 -221
		mu 0 4 165 455 456 166
		f 4 -228 695 696 697
		mu 0 4 169 172 457 458
		f 4 -231 698 699 -696
		mu 0 4 173 176 459 460
		f 4 -234 700 701 -699
		mu 0 4 176 178 461 459
		f 4 928 -908 -917 911
		mu 0 4 648 643 635 640
		f 4 702 703 704 -235
		mu 0 4 179 604 580 180
		f 4 -924 929 924 939
		mu 0 4 657 649 650 658
		f 4 705 706 707 -239
		mu 0 4 183 464 600 184
		f 4 708 -669 -244 709
		mu 0 4 394 444 140 187
		f 4 710 -710 -246 -581
		mu 0 4 385 394 187 75
		f 4 711 712 -559 713
		mu 0 4 466 368 374 549
		f 4 714 715 716 -524
		mu 0 4 347 467 334 348
		f 4 717 -537 718 -630
		mu 0 4 413 356 355 398
		f 4 985 -991 998 -728
		mu 0 4 688 683 695 698
		f 4 727 996 -727 -987
		mu 0 4 688 698 697 689
		f 4 -966 -975 968 963
		mu 0 4 670 675 679 672
		f 4 967 962 -969 -976
		mu 0 4 677 673 672 679
		f 4 -536 719 -703 -257
		mu 0 4 190 468 604 179
		f 4 -1000 1008 1003 -1023
		mu 0 4 705 699 469 709
		f 4 1009 1004 -1024 1017
		mu 0 4 601 702 712 710
		f 4 -1125 1130 1122 1147
		mu 0 4 785 780 777 790
		f 4 -1105 1113 -1122 1131
		mu 0 4 777 767 765 776
		f 4 720 721 -261 722
		mu 0 4 470 471 196 195
		f 4 723 724 725 -264
		mu 0 4 198 472 594 199
		f 4 728 729 730 -271
		mu 0 4 202 474 475 203
		f 4 731 732 -276 733
		mu 0 4 476 477 208 207
		f 4 -280 -722 734 -734
		mu 0 4 210 196 471 478
		f 4 735 736 737 -281
		mu 0 4 212 479 586 213
		f 4 738 739 740 -285
		mu 0 4 216 598 583 217
		f 4 -543 741 742 -289
		mu 0 4 45 360 483 220
		f 4 -708 743 744 -292
		mu 0 4 184 600 587 222
		f 4 -298 745 746 747
		mu 0 4 224 227 485 486
		f 4 -299 -498 -520 -568
		mu 0 4 64 2 326 344
		f 4 -595 -302 748 749
		mu 0 4 391 84 228 361
		f 4 -303 -599 -587 -531
		mu 0 4 33 86 389 332
		f 4 750 751 752 -304
		mu 0 4 229 487 599 230
		f 4 753 754 -308 -530
		mu 0 4 351 419 233 31
		f 4 755 -641 -754 756
		mu 0 4 489 417 419 351
		f 4 757 -589 -638 -756
		mu 0 4 489 330 367 417
		f 4 916 -380 -705 -811
		mu 0 4 640 635 180 580
		f 4 758 -911 918 -778
		mu 0 4 490 235 639 642
		f 4 -317 -733 759 760
		mu 0 4 237 208 477 491
		f 4 -753 761 762 -318
		mu 0 4 230 599 589 239
		f 4 763 764 -739 -321
		mu 0 4 241 493 598 216
		f 4 766 -1180 -1193 -518
		mu 0 4 497 498 810 809
		f 4 767 -632 768 769
		mu 0 4 352 415 414 392
		f 4 -538 770 771 772
		mu 0 4 357 356 415 328
		f 4 774 775 776 -744
		mu 0 4 465 499 475 484
		f 4 777 917 810 811
		mu 0 4 490 642 641 463
		f 4 778 779 780 -720
		mu 0 4 603 500 501 462
		f 4 781 -702 782 783
		mu 0 4 595 459 461 596
		f 4 784 -700 -782 785
		mu 0 4 592 460 459 595
		f 4 786 -697 -785 787
		mu 0 4 473 458 457 504
		f 4 788 789 -787 -725
		mu 0 4 591 455 458 473
		f 4 790 791 792 -737
		mu 0 4 581 505 486 480
		f 4 -783 793 -779 -535
		mu 0 4 596 461 506 354
		f 4 -694 -789 794 795
		mu 0 4 456 455 591 577
		f 4 796 -721 797 798
		mu 0 4 588 471 470 579
		f 4 799 -735 -797 800
		mu 0 4 510 478 471 588
		f 4 801 -732 -800 -762
		mu 0 4 488 477 476 492
		f 4 -777 -730 802 803
		mu 0 4 484 475 474 511
		f 4 804 805 -775 -707
		mu 0 4 584 512 499 465
		f 4 -793 -747 -805 806
		mu 0 4 480 486 485 585
		f 4 807 -542 -791 808
		mu 0 4 482 360 359 582
		f 4 809 -742 -808 -740
		mu 0 4 481 483 360 482
		f 4 812 -760 -802 -752
		mu 0 4 574 491 477 488
		f 4 -695 813 -723 -372
		mu 0 4 265 515 470 195
		f 4 814 -795 -724 -374
		mu 0 4 267 507 472 198
		f 4 -814 -796 815 -798
		mu 0 4 470 515 578 579
		f 4 -378 -761 816 -729
		mu 0 4 269 237 491 517
		f 4 -813 817 -803 -817
		mu 0 4 491 574 575 517
		f 4 -759 818 819 -381
		mu 0 4 235 490 501 272
		f 4 -819 -812 -704 -781
		mu 0 4 501 490 463 462
		f 4 -1160 -1172 831 -1191
		mu 0 4 343 798 800 812
		f 4 -1162 1171 820 -1152
		mu 0 4 792 800 798 787
		f 4 -1086 -1094 -1106 -1116
		mu 0 4 766 752 753 768
		f 4 -1087 1093 -1066 -1079
		mu 0 4 739 753 752 740
		f 3 -1048 1059 -516
		mu 0 3 341 729 728
		f 4 -659 -667 821 -657
		mu 0 4 434 436 442 435
		f 4 -387 822 -653 823
		mu 0 4 228 274 519 362
		f 4 -555 824 825 826
		mu 0 4 368 370 371 546
		f 3 -1018 1024 -1004
		mu 0 3 469 711 709
		f 4 -1003 1010 -993 -999
		mu 0 4 695 701 702 698
		f 4 827 1114 -1121 1134
		mu 0 4 778 768 762 774
		f 4 828 829 -508 -716
		mu 0 4 467 548 335 334
		f 4 830 1190 1182 832
		mu 0 4 521 343 812 522
		f 4 -650 833 834 835
		mu 0 4 427 423 523 524
		f 4 -836 836 837 -648
		mu 0 4 427 524 525 424
		f 4 838 839 840 -822
		mu 0 4 442 526 527 435
		f 4 -668 841 842 -839
		mu 0 4 442 443 528 526
		f 4 -834 -644 -838 843
		mu 0 4 523 423 422 529
		f 4 -842 -658 -841 844
		mu 0 4 530 432 435 527
		f 4 845 846 -635 -612
		mu 0 4 401 370 337 403
		f 4 847 -521 -497 848
		mu 0 4 531 345 326 325
		f 4 849 -601 -848 850
		mu 0 4 532 393 345 531
		f 4 851 -773 -501 -774
		mu 0 4 533 357 328 327
		f 4 852 853 854 855
		mu 0 4 520 372 534 547
		f 4 856 -766 -854 -557
		mu 0 4 358 536 534 372
		f 4 -857 -539 -852 -767
		mu 0 4 536 358 357 533
		f 4 -1046 1058 -1068 -1075
		mu 0 4 738 727 732 743
		f 4 -422 857 858 859
		mu 0 4 292 293 348 333
		f 4 -736 -423 -741 -809
		mu 0 4 514 294 217 583
		f 4 -425 860 -794 -701
		mu 0 4 178 295 506 461
		f 4 -426 -569 -525 -858
		mu 0 4 293 65 349 348
		f 4 -597 -427 -533 -770
		mu 0 4 392 88 34 352
		f 4 -923 930 -913 -919
		mu 0 4 639 647 650 642
		f 4 -430 861 -816 -815
		mu 0 4 296 297 509 516
		f 4 -432 -726 -788 862
		mu 0 4 298 199 594 593
		f 4 -434 -863 -786 863
		mu 0 4 299 300 503 502
		f 4 -435 -864 -784 -534
		mu 0 4 36 299 502 353
		f 4 -437 864 -806 -746
		mu 0 4 301 302 499 512
		f 4 -971 976 -982 -988
		mu 0 4 687 682 678 690
		f 4 -438 -820 -780 -861
		mu 0 4 303 272 501 500
		f 4 -439 -698 -790 -693
		mu 0 4 165 169 458 455
		f 4 -441 865 -799 -862
		mu 0 4 297 304 508 509
		f 4 866 -442 -745 -804
		mu 0 4 576 305 222 587
		f 4 -444 -763 -801 -866
		mu 0 4 304 306 590 508
		f 4 -445 -748 -792 -541
		mu 0 4 307 224 486 505
		f 4 -706 -446 -738 -807
		mu 0 4 513 308 213 586
		f 4 -447 -731 -776 -865
		mu 0 4 302 203 475 499
		f 4 -450 -743 867 868
		mu 0 4 309 220 483 597
		f 4 -751 -453 -867 -818
		mu 0 4 487 229 311 518
		f 4 -454 -860 -510 -870
		mu 0 4 312 292 333 336
		f 3 870 -757 -529
		mu 0 3 331 489 351
		f 3 -504 -758 -871
		mu 0 3 331 330 489
		f 3 871 872 -606
		mu 0 3 398 370 399
		f 3 873 -576 -570
		mu 0 3 377 382 378
		f 3 -562 -874 874
		mu 0 3 537 382 377
		f 3 875 -583 -591
		mu 0 3 390 377 387
		f 3 -584 -461 -596
		mu 0 3 386 67 85
		f 3 -750 -575 -594
		mu 0 3 391 361 381
		f 3 -876 876 877
		mu 0 3 377 390 538
		f 3 878 -588 879
		mu 0 3 414 388 389
		f 3 -602 -711 -585
		mu 0 3 384 394 385
		f 3 880 -604 881
		mu 0 3 539 397 396
		f 3 -882 -608 882
		mu 0 3 539 396 400
		f 3 -883 -611 883
		mu 0 3 539 400 402
		f 3 -884 -614 884
		mu 0 3 539 402 404
		f 3 -885 -617 885
		mu 0 3 539 404 406
		f 3 -886 -620 886
		mu 0 3 539 406 408
		f 3 -887 -623 887
		mu 0 3 539 408 410
		f 3 -888 -626 888
		mu 0 3 539 410 412
		f 3 -889 -629 -881
		mu 0 3 539 412 397
		f 3 -879 889 890
		mu 0 3 388 414 407
		f 3 -609 -873 -846
		mu 0 3 401 399 370;
	setAttr ".fc[500:627]"
		f 3 891 -627 -633
		mu 0 3 415 413 411
		f 3 -631 -621 -890
		mu 0 3 414 409 407
		f 3 -636 -511 -586
		mu 0 3 388 337 329
		f 3 -749 -824 -544
		mu 0 3 361 228 362
		f 3 892 893 -844
		mu 0 3 529 540 523
		f 3 894 -893 -837
		mu 0 3 524 540 525
		f 3 -835 -894 -895
		mu 0 3 524 523 540
		f 3 895 -840 896
		mu 0 3 541 527 526
		f 3 -896 897 -845
		mu 0 3 527 541 530
		f 3 -843 -898 -897
		mu 0 3 526 528 541
		f 3 898 -664 -709
		mu 0 3 394 542 444
		f 3 899 -485 -869
		mu 0 3 543 321 320
		f 3 -527 -564 -561
		mu 0 3 347 350 375
		f 3 -715 -560 900
		mu 0 3 467 347 545
		f 3 -618 -634 -891
		mu 0 3 407 405 388
		f 3 -851 -849 -661
		mu 0 3 532 531 325
		f 3 -872 -719 901
		mu 0 3 370 398 355
		f 3 -554 -512 -847
		mu 0 3 370 338 337
		f 3 -764 -489 -900
		mu 0 3 543 322 321
		f 3 -598 -769 -880
		mu 0 3 389 392 414
		f 3 -768 -532 -772
		mu 0 3 415 352 328
		f 3 -892 -771 -718
		mu 0 3 413 415 356
		f 3 -810 -765 -868
		mu 0 3 483 481 597
		f 3 -1179 1192 -519
		mu 0 3 342 809 810
		f 3 -717 -507 -859
		mu 0 3 348 334 333
		f 3 -855 -1181 -831
		mu 0 3 521 495 343
		f 3 -830 -856 902
		mu 0 3 335 548 535
		f 3 -558 -853 903
		mu 0 3 371 372 520
		f 3 904 905 -686
		mu 0 3 566 567 451
		f 3 906 -905 -689
		mu 0 3 555 544 453
		f 3 -906 -907 -690
		mu 0 3 451 567 454
		f 3 -556 -825 -902
		mu 0 3 355 371 370
		f 3 -833 -509 -903
		mu 0 3 535 336 335
		f 3 -829 -826 -904
		mu 0 3 520 546 371
		f 3 -901 -713 -827
		mu 0 3 546 374 368
		f 3 -714 -875 -878
		mu 0 3 538 537 377
		f 3 -850 -899 -603
		mu 0 3 395 542 394
		f 3 -572 -579 -495
		mu 0 3 67 379 77
		f 3 -712 -877 -552
		mu 0 3 368 466 369
		f 4 -496 -755 -640 -823
		mu 0 4 324 233 419 418
		f 4 -926 919 936 933
		mu 0 4 644 643 652 653
		f 4 -921 -927 921 -915
		mu 0 4 637 645 646 638
		f 4 -928 -932 940 934
		mu 0 4 647 646 651 655
		f 4 -920 -929 923 938
		mu 0 4 652 643 648 656
		f 4 -930 -912 -918 912
		mu 0 4 650 649 641 642
		f 4 -931 -935 941 -925
		mu 0 4 650 647 655 658
		f 4 -938 269 952 942
		mu 0 4 651 654 660 659
		f 4 -937 932 -950 -270
		mu 0 4 653 652 663 661
		f 4 -940 935 953 947
		mu 0 4 657 658 664 665
		f 4 -933 -939 -948 -952
		mu 0 4 663 652 656 666
		f 4 -941 -943 948 944
		mu 0 4 655 651 659 662
		f 4 -936 -942 -945 950
		mu 0 4 664 658 655 662
		f 4 -953 943 -960 -256
		mu 0 4 659 660 668 667
		f 4 255 -961 956 -949
		mu 0 4 659 667 670 662
		f 4 -962 -944 949 945
		mu 0 4 671 669 661 663
		f 4 -957 -964 -947 -951
		mu 0 4 662 670 672 664
		f 4 -963 958 -954 946
		mu 0 4 672 673 665 664
		f 4 -959 -965 -946 951
		mu 0 4 666 674 671 663
		f 4 969 983 -967 972
		mu 0 4 680 685 684 676
		f 4 -974 -956 961 957
		mu 0 4 682 681 669 671
		f 4 -977 -958 964 -968
		mu 0 4 678 682 671 674
		f 4 -983 977 971 966
		mu 0 4 684 683 675 676
		f 4 -978 -986 980 974
		mu 0 4 675 683 688 679
		f 4 -981 986 981 975
		mu 0 4 679 688 689 677
		f 4 994 -979 984 979
		mu 0 4 694 691 686 687
		f 4 726 997 -980 987
		mu 0 4 690 696 694 687
		f 4 -1006 268 -995 989
		mu 0 4 699 192 691 694
		f 4 -1007 1000 -994 -269
		mu 0 4 193 700 693 692
		f 4 -1008 -1012 1025 1015
		mu 0 4 701 700 703 708
		f 4 991 -1009 -990 -998
		mu 0 4 696 469 699 694
		f 4 -1010 -992 -997 992
		mu 0 4 702 601 697 698
		f 4 -1011 -1016 1026 -1005
		mu 0 4 702 701 708 712
		f 4 1020 1014 -1035 1029
		mu 0 4 703 706 719 20
		f 4 1018 -1038 1031 1023
		mu 0 4 712 341 717 710
		f 4 -1026 -1030 1035 1030
		mu 0 4 708 703 20 715
		f 4 -1019 -1027 -1031 1038
		mu 0 4 341 712 708 715
		f 4 -1034 1027 1019 1013
		mu 0 4 714 713 704 705
		f 4 -1028 1039 -1015 -1022
		mu 0 4 704 713 720 707
		f 4 -1037 -1014 1022 1016
		mu 0 4 716 714 705 709
		f 4 -1017 -1025 -1032 1040
		mu 0 4 716 709 711 718
		f 4 1041 1034 1032 1052
		mu 0 4 721 20 719 726
		f 4 427 -1051 1042 -1036
		mu 0 4 20 723 722 715
		f 4 -1052 1044 1070 1063
		mu 0 4 725 724 735 736
		f 4 -1062 1076 -1044 -1055
		mu 0 4 721 734 744 723
		f 4 514 1037 515 1057
		mu 0 4 731 717 341 728
		f 4 -1043 -1056 1047 -1039
		mu 0 4 715 722 729 341
		f 4 -1057 1048 1073 1067
		mu 0 4 732 730 741 743
		f 4 -1065 1078 -1047 -1060
		mu 0 4 729 739 740 728
		f 4 -1070 1060 1050 1043
		mu 0 4 744 733 722 723
		f 4 -1071 1062 1095 1081
		mu 0 4 736 735 754 747
		f 4 -1073 1064 1055 -1061
		mu 0 4 733 739 729 722
		f 4 -1074 1066 1096 1084
		mu 0 4 743 741 755 751
		f 4 -1076 -1082 1087 1082
		mu 0 4 734 737 748 749
		f 4 -1078 1065 1091 -1067
		mu 0 4 742 740 752 756
		f 4 20 1090 -1063 1071
		mu 0 4 738 745 754 735
		f 4 -21 1074 -1085 1094
		mu 0 4 745 738 743 751
		f 4 -1107 1097 -1088 -268
		mu 0 4 758 757 749 748
		f 4 1107 1100 -1126 1117
		mu 0 4 760 761 780 771
		f 4 -1100 -1109 267 -1096
		mu 0 4 754 760 759 747
		f 4 -259 1127 1119 1110
		mu 0 4 757 772 773 763
		f 4 -1112 1102 -1092 1085
		mu 0 4 766 764 756 752
		f 4 1104 -1131 -1101 1112
		mu 0 4 767 777 780 761
		f 4 -1103 -1114 -517 -1097
		mu 0 4 755 765 767 751
		f 4 -1104 1115 -828 1132
		mu 0 4 779 766 768 778
		f 4 1116 1143 -1119 1128
		mu 0 4 769 783 791 772
		f 4 -1117 -1127 -1140 1145
		mu 0 4 784 770 771 786
		f 4 -1128 1118 1149 1136
		mu 0 4 773 772 791 782
		f 4 1133 -1141 1146 1141
		mu 0 4 775 779 787 788
		f 4 -1123 -1132 -1142 1148
		mu 0 4 790 777 776 789
		f 4 -1133 1123 1151 1140
		mu 0 4 779 778 792 787
		f 4 1135 -1130 -1137 1150
		mu 0 4 781 774 773 782
		f 4 -1136 1152 -1124 -1135
		mu 0 4 774 781 792 778
		f 4 -1163 1153 -1144 1137
		mu 0 4 19 793 791 783
		f 4 -1156 1165 -1138 -1146
		mu 0 4 786 795 21 784
		f 4 -1164 1154 1184 1175
		mu 0 4 795 794 804 805
		f 4 23 -1165 1156 -1151
		mu 0 4 782 797 796 781
		f 4 -1168 1158 -1147 -821
		mu 0 4 798 340 788 787
		f 4 -1159 1170 -1143 -1149
		mu 0 4 789 342 799 790
		f 4 -1155 -1169 1160 1189
		mu 0 4 804 794 799 811
		f 4 -1157 -1170 1161 -1153
		mu 0 4 781 796 800 792
		f 4 1172 323 324 1183
		mu 0 4 801 243 244 22
		f 4 -1185 1174 -8 325
		mu 0 4 805 804 245 246
		f 4 -1187 -394 450 451
		mu 0 4 807 806 277 310
		f 4 517 1188 1180 765
		mu 0 4 494 808 343 495
		f 4 -1190 1181 -500 -1175
		mu 0 4 804 811 496 245
		f 4 -1192 -452 869 -1183
		mu 0 4 812 807 310 522
		f 4 24 -1194 -326 333
		mu 0 4 247 803 805 246
		f 4 -1195 1179 773 -1182
		mu 0 4 811 810 498 496;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
	setAttr ".difs" yes;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "41B666DF-44E7-A43A-2D2C-D6AD02047347";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5ACE97C8-4D29-0C51-BF5F-8BBAE3861917";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7E9FCC25-4758-1D3F-1FB7-4689DCEDC12A";
createNode displayLayerManager -n "layerManager";
	rename -uid "0DA27D8D-4EC8-D714-85B9-A08136319BEB";
createNode displayLayer -n "defaultLayer";
	rename -uid "F0527035-4EA0-F561-6CDA-299D026E1738";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0CDB93DE-4147-D365-B2A1-368609867D5F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B605BDEF-42B6-847D-E7D2-87ADE7A0318E";
	setAttr ".g" yes;
createNode shadingEngine -n "SheSG";
	rename -uid "C0215E43-43CB-9001-462A-55B5F2C19C39";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "1DF42012-4B89-5EA0-C114-868D18D8F20B";
createNode file -n "MapFBXASC032FBXASC0352";
	rename -uid "B25EC00B-4401-1716-AABE-E7BE4B3FA628";
	setAttr ".ftn" -type "string" "C:/Users/Clayton/Desktop";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "43CDF8C6-4E3A-47F3-A8F4-7C91B9CFA6C7";
createNode renderLayerManager -n "Snake_Model_renderLayerManager";
	rename -uid "1C50FDED-47EB-785F-9339-3098065E699D";
createNode renderLayer -n "Snake_Model_defaultRenderLayer";
	rename -uid "B967F18E-4A84-F86D-869F-4AB9E63C50E7";
	setAttr ".g" yes;
createNode blinn -n "skin_shader";
	rename -uid "E903AB7D-45EE-A48A-66B9-AA88ECD81CEF";
	setAttr ".dc" 1;
	setAttr ".rfl" 0.084415584802627563;
	setAttr ".ec" 0.097392857074737549;
	setAttr ".sro" 0.16883116960525513;
createNode shadingEngine -n "blinn1SG";
	rename -uid "A0501036-4935-A6CA-33CB-DC87CCB8E0D7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "DCD19BC2-4EAF-CDBC-81AE-C8989D8C9C9D";
createNode blinn -n "eye_shader";
	rename -uid "9180304E-4A59-7562-1070-148E9A70D74F";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "C4D7203E-406A-7FF9-C0B4-BCAF0FCEDF8C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "405357DE-4891-FCEB-C6F2-F8AC113915BF";
createNode blinn -n "tongue_shader";
	rename -uid "1E0FA58E-405C-1AA8-7714-288FEFEC47FD";
	setAttr ".c" -type "float3" 0.57599998 0.036864005 0.036864005 ;
createNode shadingEngine -n "blinn3SG";
	rename -uid "45D496B3-424B-8176-11A2-579F2C263C7A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "562A50B3-4991-2F55-1E74-B7B92900C003";
createNode blinn -n "teeth_shader";
	rename -uid "801D081A-49B7-3CA8-CCB6-90B5F4095BA6";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".ec" 0.6103285551071167;
createNode shadingEngine -n "teeth_shaderSG";
	rename -uid "41DB697D-45B0-8B21-78D9-538E2C7702BD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "270A19A3-48BA-E934-CE59-59AEEA2D9D9A";
createNode colorConstant -n "colorConstant1";
	rename -uid "B131327C-4C8F-85F1-5856-528622780EE4";
	setAttr "._c" -type "float3" 0 0.29159999 0 ;
createNode cloud -n "cloud1";
	rename -uid "E9584815-4AA5-F9D2-0071-8B8C8A1B8360";
	setAttr ".c2" -type "float3" 0 0.2375 0 ;
	setAttr ".c" 0.8741258978843689;
	setAttr ".tr" 0.71328669786453247;
	setAttr ".et" 1.0349650382995605;
	setAttr ".a" 1.4335664510726929;
	setAttr ".ra" 0.60839158296585083;
createNode blendColors -n "blendColors1";
	rename -uid "7327B532-49A5-CE26-2165-2299780F61AF";
	setAttr ".b" 0.28387096524238586;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "EE6A59FA-43EF-BC7B-5C9A-D6AD2D30B371";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1414.3260893522913 -377.40115301780116 ;
	setAttr ".tgi[0].vh" -type "double2" -219.15093468795072 769.06780412103319 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1113.9052734375;
	setAttr ".tgi[0].ni[0].y" 186.45429992675781;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -826.45391845703125;
	setAttr ".tgi[0].ni[1].y" 308.83087158203125;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -1119.6927490234375;
	setAttr ".tgi[0].ni[2].y" 344.98388671875;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -520;
	setAttr ".tgi[0].ni[3].y" 344.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -1313.64404296875;
	setAttr ".tgi[0].ni[4].y" 149.30360412597656;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -212.85714721679688;
	setAttr ".tgi[0].ni[5].y" 344.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "80F125CC-4E4F-3A65-8233-3796BFCFC545";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1155\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1155\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1155\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "15EC39F5-4866-3836-7B9B-819F11A7C77F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Snake_GeoShape_pnts_428__pntx";
	rename -uid "4F801C3C-4E11-4382-8AE8-10A5228AAC2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_428__pnty";
	rename -uid "C4F1D86B-46C1-47FB-A429-DDA33B1A1C80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_428__pntz";
	rename -uid "83248216-4F4C-F568-8C3C-9CA837C6A060";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_429__pntx";
	rename -uid "39B471AE-4D86-2464-FA9D-7985756AA6B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_429__pnty";
	rename -uid "2DDF779B-447D-A644-C529-42B5D4D6817B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_429__pntz";
	rename -uid "B6DD7A8C-48EA-C826-3F18-FE8A0412B292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_431__pntx";
	rename -uid "A445AE20-40C5-9E74-3D1D-E3AB63863F18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_431__pnty";
	rename -uid "CF8EFD25-440D-351E-779E-30B9F491055F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode animCurveTL -n "Snake_GeoShape_pnts_431__pntz";
	rename -uid "6F837B8B-40F7-5A05-D334-C5855F5EC074";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
createNode groupId -n "groupId1";
	rename -uid "4FF3E718-4B62-A572-E6DC-3BB9AA877F36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "AF07370C-43A1-DECA-AEAE-018E1CCB2AA0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 29 "f[0:22]" "f[24:30]" "f[37:39]" "f[43:44]" "f[55:58]" "f[84:92]" "f[95:117]" "f[119:162]" "f[165:170]" "f[177:210]" "f[217]" "f[228:232]" "f[241:257]" "f[261:264]" "f[268:292]" "f[294:300]" "f[307:309]" "f[313:314]" "f[325:328]" "f[354:362]" "f[365:387]" "f[389:432]" "f[435:440]" "f[447:480]" "f[487]" "f[498:502]" "f[511:527]" "f[531:534]" "f[538:627]";
createNode groupId -n "groupId2";
	rename -uid "B2B3B81A-4AA3-8403-6203-CB85CDBDF3B5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "5B849B7B-44F8-9EF0-2F0C-A28C60A46ACE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 28 "f[23]" "f[31:36]" "f[40:42]" "f[45]" "f[70:83]" "f[93:94]" "f[118]" "f[164]" "f[211:216]" "f[218]" "f[233]" "f[240]" "f[258:260]" "f[265:267]" "f[293]" "f[301:306]" "f[310:312]" "f[315]" "f[340:353]" "f[363:364]" "f[388]" "f[434]" "f[481:486]" "f[488]" "f[503]" "f[510]" "f[528:530]" "f[535:537]";
createNode groupId -n "groupId3";
	rename -uid "93A79A8C-47C7-6DFB-C0C7-9FB76C4B584D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "CC936FDC-4727-6027-ACF0-F9BF47091B57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "f[59:69]" "f[163]" "f[171:176]" "f[234:239]" "f[329:339]" "f[433]" "f[441:446]" "f[504:509]";
createNode groupId -n "groupId4";
	rename -uid "4C1CB402-4067-3175-2F81-77B88BBA5AAD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "A0A6B6A7-414A-89DB-A601-61A94FA4A1B7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[46:54]" "f[219:227]" "f[316:324]" "f[489:497]";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "F56CA32E-4112-AFD3-DA4A-9890EB7ECFF5";
createNode skinCluster -n "skinCluster1";
	rename -uid "0355EC3C-437F-B29D-8944-4EBD3500CA79";
	setAttr -s 32 ".wl";
	setAttr ".wl[0:31].w"
		1 0 1
		2 0 0.98124720966705603 1 0.018752790332943966
		2 0 0.88878483368943817 1 0.11121516631056191
		2 0 0.64768108248706369 1 0.35231891751293626
		2 0 0.35253837616523553 1 0.64746162383476447
		2 0 0.11114077943973863 1 0.88885922056026134
		2 0 1.1898904343358255e-07 1 0.9999998810109566
		2 1 0.88887942319572755 2 0.11112057680427244
		2 1 0.64751635406024965 2 0.35248364593975035
		2 1 0.35246841547192981 2 0.64753158452807014
		2 1 0.11112289020606941 2 0.88887710979393064
		2 1 8.4877899787140523e-08 2 0.99999991512210029
		2 2 0.91789572383627349 3 0.082104276163726508
		2 2 0.73880615632293789 3 0.26119384367706211
		2 2 0.50001317147021673 3 0.49998682852978338
		2 2 0.26121201604635641 3 0.73878798395364353
		2 2 0.082102374876986101 3 0.91789762512301387
		1 3 1
		2 3 0.91790036327981062 4 0.082099636720189356
		2 3 0.73879630946242381 4 0.26120369053757619
		2 3 0.5000000507225193 4 0.4999999492774807
		2 3 0.26120351570494493 4 0.73879648429505507
		2 3 0.08210122637631756 4 0.91789877362368244
		2 3 2.3857195047714019e-05 4 0.99997614280495239
		2 4 0.93628437384270791 5 0.063715626157292163
		2 4 0.79807529155126611 5 0.20192470844873397
		2 4 0.60621505084010452 5 0.39378494915989548
		2 4 0.39371656747828537 5 0.60628343252171468
		2 4 0.20193734890387879 5 0.79806265109612129
		2 4 0.063714078819142331 5 0.93628592118085763
		2 4 0.011058114661380229 5 0.98894188533861982
		1 5 1;
	setAttr -s 6 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -0.85000002384185791 -10.44843864440918 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.333338685771332e-13 -0.55581218004226685 3.5964264869689941 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.3301161658641619e-13 -0.50677090883255005 17.6451416015625 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.374213243199307e-13 -0.55581218004226685 34.504714965820313 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.4627203257216309e-13 -0.55581218004226685 51.364715576171875 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.6737426603106315e-13 -0.016447944566607475 71.025726318359375 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 6 ".ma";
	setAttr -s 6 ".dpf[0:5]"  1.5 1.5 1.5 1.5 1.5 1.5;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "0CD57DE2-4930-5D75-0C37-F8B281B9D5F7";
createNode objectSet -n "skinCluster1Set";
	rename -uid "0D23E9CC-4E21-0D63-D30B-53AC26442522";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "CC42F209-4A28-27E4-36F6-CDA27B71FFB8";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "095B74ED-4445-7FB2-D149-B09E511A641B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "50CE4254-4E7C-9D2F-5484-2B8267FB1E07";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "69B0C4D6-4157-857E-EB53-F9BFACD93822";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "3550B877-4B56-9399-7839-F3B5090938B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode dagPose -n "bindPose1";
	rename -uid "A82E9276-487B-1684-0829-C7802FDC988D";
	setAttr -s 6 ".wm";
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.85000002384185791
		 10.44843864440918 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.333338685771332e-13
		 0.55581218004226685 -3.5964264869689941 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3301161658641619e-13
		 0.50677090883255005 -17.6451416015625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.374213243199307e-13
		 0.55581218004226685 -34.504714965820313 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4627203257216309e-13
		 0.55581218004226685 -51.364715576171875 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6737426603106315e-13
		 0.016447944566607475 -71.025726318359375 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr ".bp" yes;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "B545B2F9-42C5-65ED-5261-D39B01745471";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "70CC2582-4E52-2633-B23C-03880194705E";
	setAttr ".txf" -type "matrix" 2 0 0 0 0 4.4408920985006262e-16 2 0 0 -2 4.4408920985006262e-16 0
		 0 0 0 1;
createNode skinCluster -n "skinCluster2";
	rename -uid "52C71D98-43A0-ABD2-6C5D-CFA123E3C669";
	setAttr -s 570 ".wl";
	setAttr ".wl[0:249].w"
		2 0 0.73972254012384797 1 0.26027745987615203
		2 0 0.73708958863678864 1 0.2629104113632113
		2 0 0.75206923820816884 1 0.2479307617918311
		2 0 0.7523339662767663 1 0.24766603372323373
		2 0 0.89856305400714631 1 0.1014369459928537
		2 0 0.88857071376169472 1 0.11142928623830536
		2 0 0.85662969752988305 1 0.14337030247011692
		2 0 0.85015756259884268 1 0.1498424374011573
		2 0 0.77031312979421473 1 0.22968687020578527
		2 0 0.77092260459931006 1 0.22907739540068994
		2 0 0.7546007193669555 1 0.24539928063304453
		2 0 0.75411938589844218 1 0.24588061410155787
		2 0 0.86624461969640809 1 0.13375538030359196
		2 0 0.87485291520605823 1 0.12514708479394179
		2 0 0.83868391098579176 1 0.16131608901420824
		2 0 0.84306996448583149 1 0.15693003551416854
		2 0 0.76189885601068774 1 0.23810114398931234
		2 0 0.78718102229263021 1 0.21281897770736979
		2 0 0.79368609369454246 1 0.20631390630545751
		2 0 0.59212648715294847 1 0.40787351284705153
		2 2 0.60451988287538061 3 0.39548011712461939
		2 0 0.77178908248949085 1 0.22821091751050915
		2 0 0.77537581075483064 1 0.22462418924516941
		2 0 0.77409747011264285 1 0.22590252988735721
		2 0 0.75457903403222015 1 0.24542096596777987
		2 0 0.82519637399122137 1 0.17480362600877861
		2 0 0.80051618107162215 1 0.19948381892837785
		2 0 0.79782530605049828 1 0.20217469394950166
		2 0 0.82760359281945028 1 0.17239640718054974
		2 0 0.75479588680617471 1 0.24520411319382532
		2 0 0.73670410564076994 1 0.26329589435923012
		2 0 0.73914945581742064 1 0.2608505441825793
		2 0 0.772352336324447 1 0.22764766367555297
		2 0 0.85013568699329289 1 0.14986431300670711
		2 0 0.83974108086821186 1 0.16025891913178808
		2 9 0.49757155002055792 10 0.50242844997944214
		2 8 0.50031538335326886 9 0.49968461664673114
		2 8 0.50017562543268757 9 0.49982437456731249
		2 9 0.49914624246953243 10 0.50085375753046757
		2 0 0.83291908359909927 1 0.16708091640090075
		2 0 0.83041686178557439 1 0.16958313821442561
		2 0 0.83511819723240688 1 0.16488180276759312
		2 0 0.83164369601918853 1 0.16835630398081142
		2 24 0.22483028578250552 25 0.77516971421749448
		2 25 0.49421019398385219 26 0.50578980601614776
		2 25 0.49545100866588582 26 0.50454899133411424
		2 24 0.26865284220675251 25 0.73134715779324755
		2 0 0.75318698684664509 1 0.24681301315335488
		2 0 0.74661958269320328 1 0.25338041730679672
		2 0 0.74213658355174539 1 0.25786341644825456
		2 0 0.74621297258039687 1 0.25378702741960318
		2 0 0.75818530837364362 1 0.24181469162635638
		2 0 0.74966118843823459 1 0.25033881156176535
		2 0 0.80256563732565722 1 0.19743436267434281
		2 0 0.8123999236947046 1 0.18760007630529549
		2 0 0.77826610561967857 1 0.22173389438032143
		2 0 0.84175532143642651 1 0.15824467856357352
		2 0 0.83627945027458117 1 0.16372054972541886
		2 0 0.80838098047431173 1 0.19161901952568833
		2 0 0.80378038639311844 1 0.1962196136068815
		2 0 0.82171164053420453 1 0.17828835946579549
		2 0 0.77393177185769368 1 0.22606822814230626
		2 0 0.77489677911885102 1 0.22510322088114906
		2 0 0.80069339059318712 1 0.19930660940681286
		2 0 0.86798950651405682 1 0.13201049348594313
		2 0 0.88680778361920198 1 0.11319221638079806
		2 0 0.83306567504816342 1 0.1669343249518366
		2 0 0.79963960561849834 1 0.20036039438150163
		2 0 0.76017587562596167 1 0.23982412437403836
		2 0 0.7873888962916521 1 0.21261110370834796
		2 0 0.7933882202981396 1 0.20661177970186043
		2 0 0.79253711839385332 1 0.20746288160614668
		2 0 0.82030762881580166 1 0.17969237118419837
		2 0 0.78499299711413051 1 0.21500700288586949
		2 0 0.78372841953021188 1 0.21627158046978806
		2 0 0.80031879701274455 1 0.19968120298725547
		2 0 0.79279492924254269 1 0.20720507075745739
		2 0 0.76112384938791156 1 0.2388761506120885
		2 0 0.75930222136053371 1 0.24069777863946637
		2 0 0.78398515439721339 1 0.21601484560278669
		2 0 0.79424829550406684 1 0.20575170449593319
		2 0 0.81170660778910519 1 0.18829339221089478
		2 0 0.81740604089967239 1 0.18259395910032769
		2 0 0.75594768233985776 1 0.24405231766014235
		2 0 0.76134330252464999 1 0.23865669747535001
		2 0 0.81708271495986995 1 0.18291728504013005
		2 0 0.82176611225334761 1 0.17823388774665244
		2 0 0.82709468801037034 1 0.17290531198962969
		2 0 0.81989854882615021 1 0.18010145117384974
		2 0 0.81287091146754831 1 0.18712908853245172
		2 0 0.81591212100415045 1 0.18408787899584952
		2 0 0.81143870898112203 1 0.188561291018878
		2 0 0.8134751053274567 1 0.18652489467254335
		2 0 0.81102196719712527 1 0.18897803280287473
		2 0 0.81181302337204631 1 0.18818697662795369
		2 0 0.811788269380191 1 0.18821173061980898
		2 0 0.81334466992902843 1 0.18665533007097154
		2 0 0.81574115829377525 1 0.1842588417062247
		2 0 0.81998200304595936 1 0.18001799695404067
		2 0 0.81896498577031684 1 0.18103501422968313
		2 0 0.82489215018999951 1 0.17510784981000052
		2 0 0.82068150150715713 1 0.1793184984928429
		2 0 0.82750517989933392 1 0.17249482010066616
		2 0 0.83931255075734079 1 0.16068744924265915
		2 0 0.81084287170924008 1 0.18915712829075987
		2 0 0.73961265215306782 1 0.26038734784693213
		2 0 0.73807500373547541 1 0.2619249962645247
		2 0 0.73897653129613172 1 0.26102346870386828
		2 0 0.7430771298431863 1 0.2569228701568137
		2 0 0.74685629683606403 1 0.25314370316393592
		2 0 0.74917342813427468 1 0.25082657186572527
		2 0 0.74623966151850807 1 0.25376033848149193
		2 0 0.7431996435346534 1 0.25680035646534666
		2 0 0.73972855465703147 1 0.26027144534296853
		2 0 0.7414453796175654 1 0.25855462038243465
		2 0 0.74044815886100568 1 0.25955184113899438
		2 0 0.74062165666251445 1 0.25937834333748555
		2 0 0.74176423933314162 1 0.25823576066685833
		2 0 0.73469187091509225 1 0.2653081290849077
		2 0 0.74513746666896719 1 0.25486253333103281
		2 0 0.74727570100178453 1 0.25272429899821552
		2 0 0.73585782398994437 1 0.26414217601005563
		2 0 0.75093420047822779 1 0.24906579952177219
		2 0 0.7707803172975084 1 0.22921968270249157
		2 0 0.77043585237883416 1 0.22956414762116589
		2 0 0.74930850885124289 1 0.25069149114875722
		2 0 0.74864205826736885 1 0.2513579417326311
		2 0 0.77134220787354724 1 0.22865779212645276
		2 0 0.74802241285224313 1 0.25197758714775692
		2 0 0.79435816876298704 1 0.20564183123701299
		2 0 0.893698112819996 1 0.10630188718000404
		2 0 0.90958301829574295 1 0.090416981704257063
		2 0 0.79472146467146443 1 0.20527853532853563
		2 0 0.72615535942347276 1 0.2738446405765273
		2 0 0.72536745122922663 1 0.27463254877077337
		2 0 0.79417585775452026 1 0.20582414224547974
		2 0 0.89511838535166055 1 0.10488161464833953
		2 0 0.72459837074747369 1 0.27540162925252631
		2 0 0.70250946697903194 1 0.29749053302096806
		2 0 0.70219970722267899 1 0.29780029277732112
		2 0 0.71123529135202379 1 0.28876470864797621
		2 0 0.71165828898853789 1 0.28834171101146211
		2 0 0.7015402280686962 1 0.29845977193130374
		2 0 0.70947568736556543 1 0.29052431263443457
		2 13 0.35320191185724242 14 0.64679808814275763
		2 14 0.27647352501916334 15 0.72352647498083666
		2 14 0.39137957558449271 15 0.60862042441550734
		2 13 0.44283577556436543 14 0.55716422443563463
		2 12 0.44539771261698513 13 0.55460228738301487
		2 12 0.48281840956073135 13 0.5171815904392687
		2 11 0.49887123788859244 12 0.50112876211140767
		2 11 0.49687743432995879 12 0.50312256567004132
		2 10 0.49969606297953306 11 0.50030393702046694
		2 10 0.4994532872041364 11 0.5005467127958636
		2 9 0.49977378692644359 10 0.50022621307355641
		2 9 0.49963166561293404 10 0.50036833438706607
		2 7 0.36651688912747821 8 0.63348311087252185
		2 6 0.22480956323838844 7 0.77519043676161159
		2 6 0.30696206607890247 7 0.69303793392109747
		2 7 0.41976808021548262 8 0.58023191978451738
		2 23 0.72338029125465853 24 0.27661970874534147
		2 22 0.48065843489144539 23 0.51934156510855467
		2 22 0.4909695007265451 23 0.50903049927345501
		2 23 0.65020632947634294 24 0.34979367052365706
		2 0 0.76033989050707862 1 0.23966010949292132
		2 0 0.79313379248461924 1 0.20686620751538085
		2 0 0.84754102770476414 1 0.15245897229523583
		2 2 0.36281017518534686 3 0.63718982481465314
		2 15 0.33427705585910139 16 0.66572294414089861
		2 15 0.21839971542921616 16 0.78160028457078379
		2 16 0.21797317754222989 17 0.78202682245777011
		2 16 0.32945156715685936 17 0.67054843284314058
		2 13 0.33171592027543123 14 0.66828407972456871
		2 12 0.42521192673548069 13 0.57478807326451931
		2 12 0.46558173927198271 13 0.53441826072801724
		2 13 0.40557629983196486 14 0.59442370016803525
		2 20 0.30406309390078129 21 0.69593690609921866
		2 21 0.30555609851553972 22 0.69444390148446034
		2 21 0.35254134365008966 22 0.64745865634991029
		2 20 0.37709801476791122 21 0.62290198523208884
		2 17 0.3984571479063162 18 0.60154285209368386
		2 17 0.30579695367451631 18 0.69420304632548369
		2 18 0.29668597067504388 19 0.70331402932495612
		2 18 0.38593909791109265 19 0.61406090208890729
		2 24 0.16095088474725433 25 0.83904911525274561
		2 24 0.89571410478581415 25 0.10428589521418584
		2 24 0.83163970220336425 25 0.16836029779663578
		2 24 0.23662399912467696 25 0.76337600087532309
		2 26 0.81400582435872082 27 0.18599417564127921
		2 25 0.48809630764235562 26 0.51190369235764432
		2 25 0.48735351353020029 26 0.51264648646979971
		2 26 0.75256851002455172 27 0.24743148997544828
		2 26 0.87590294508191013 27 0.12409705491808996
		2 26 0.79832165912174258 27 0.20167834087825748
		2 21 0.22798510825787 22 0.77201489174213012
		2 21 0.30567315238672799 22 0.69432684761327201
		2 24 0.86302407542377091 25 0.13697592457622917
		2 24 0.81032015674510294 25 0.18967984325489712
		2 23 0.63132562478235077 24 0.36867437521764929
		2 23 0.69618436339867862 24 0.30381563660132144
		2 0 0.74509744297572422 1 0.25490255702427578
		2 19 0.25581258023187908 20 0.74418741976812097
		2 18 0.27170011144298073 19 0.72829988855701921
		2 18 0.32849342234751161 19 0.67150657765248845
		2 19 0.32261071714025008 20 0.67738928285974997
		2 0 0.73596633722410087 1 0.26403366277589913
		2 0 0.74100437468960934 1 0.25899562531039061
		2 6 0.16937975569854957 7 0.83062024430145043
		2 6 0.36407352215819661 7 0.63592647784180334
		2 19 0.30035641652003731 20 0.69964358347996269
		2 19 0.38161917346359991 20 0.61838082653640003
		2 17 0.29080726809084478 18 0.70919273190915522
		2 17 0.36575710901580133 18 0.63424289098419862
		2 27 0.95097207716797694 28 0.049027922832023049
		2 27 0.92695417807314451 28 0.07304582192685552
		2 0 0.82350218645239481 1 0.17649781354760516
		2 0 0.83381001581176895 1 0.16618998418823117
		2 0 0.83007096272189218 1 0.16992903727810779
		2 22 0.49552509710009784 23 0.50447490289990216
		2 7 0.44651293719184804 8 0.55348706280815207
		2 8 0.50024233285427488 9 0.49975766714572512
		2 10 0.49915324829178692 11 0.50084675170821302
		2 11 0.49734839421708626 12 0.50265160578291379
		2 14 0.34816486636170424 15 0.65183513363829582
		2 16 0.29128410730476639 17 0.70871589269523361
		2 15 0.29568653916901899 16 0.70431346083098101
		2 20 0.31654707205647215 21 0.68345292794352797
		2 14 0.26215803873185167 15 0.73784196126814827
		2 7 0.31380460371212837 8 0.68619539628787163
		2 0 0.73995121684619625 1 0.26004878315380375
		2 0 0.84807677278152405 1 0.15192322721847598
		2 0 0.84971929026635973 1 0.15028070973364033
		2 0 0.75037635007946968 1 0.24962364992053032
		2 0 0.75222043137473749 1 0.24777956862526254
		2 0 0.75340406018457873 1 0.24659593981542122
		2 0 0.74389577113870786 1 0.25610422886129214
		2 0 0.74166465456021913 1 0.25833534543978098
		2 0 0.7443773044309 1 0.25562269556910006
		2 0 0.74371108509328809 1 0.25628891490671191
		2 0 0.87293568380743614 1 0.12706431619256392
		2 0 0.83210057206555932 1 0.16789942793444068
		2 8 0.50341002167172322 9 0.49658997832827673
		2 15 0.20959556094882895 16 0.79040443905117108
		2 11 0.49329734650075768 12 0.50670265349924237
		2 10 0.49779564173174518 11 0.50220435826825482
		2 22 0.49765621191016429 23 0.50234378808983571
		2 16 0.20803623626050122 17 0.79196376373949884
		2 20 0.23840988603426938 21 0.76159011396573073
		2 27 0.98109817088826889 28 0.018901829111731092
		2 0 0.87885012146738739 1 0.12114987853261266;
	setAttr ".wl[250:499].w"
		2 0 0.8128585740808234 1 0.18714142591917657
		2 0 0.76055641458782264 1 0.23944358541217736
		2 0 0.74890020821858394 1 0.25109979178141606
		2 28 0.5 29 0.5
		2 0 0.69441769669222186 1 0.30558230330777814
		2 0 0.73972254012384797 1 0.26027745987615203
		2 0 0.7523339662767663 1 0.24766603372323373
		2 0 0.85662969752988305 1 0.14337030247011689
		2 0 0.85015756259884268 1 0.14984243740115727
		2 0 0.77031312979421473 1 0.22968687020578527
		2 0 0.77092260459931006 1 0.22907739540068994
		2 0 0.7546007193669555 1 0.24539928063304453
		2 0 0.75411938589844218 1 0.24588061410155787
		2 0 0.86624461969640809 1 0.13375538030359196
		2 0 0.87485291520605823 1 0.12514708479394179
		2 0 0.83868391098579176 1 0.16131608901420819
		2 0 0.84306996448583149 1 0.15693003551416854
		2 0 0.76189885601068774 1 0.23810114398931234
		2 0 0.78718102229263021 1 0.21281897770736979
		2 0 0.79368609369454246 1 0.20631390630545751
		2 0 0.59212648649191202 1 0.40787351350808793
		2 2 0.60451989221228675 3 0.39548010778771325
		2 0 0.77178908248949085 1 0.22821091751050915
		2 0 0.77537581075483064 1 0.22462418924516941
		2 0 0.77409747011264285 1 0.22590252988735721
		2 0 0.75457903403222015 1 0.24542096596777987
		2 0 0.82519637399122137 1 0.17480362600877861
		2 0 0.80051618107162215 1 0.19948381892837785
		2 0 0.79782530605049828 1 0.20217469394950166
		2 0 0.82760359281945028 1 0.17239640718054974
		2 0 0.73914945581742064 1 0.2608505441825793
		2 0 0.83974108086821186 1 0.16025891913178808
		2 8 0.50017562543268745 9 0.49982437456731249
		2 9 0.49914624246953299 10 0.50085375753046701
		2 0 0.83291908359909927 1 0.16708091640090073
		2 0 0.83041686178557439 1 0.16958313821442558
		2 0 0.83511819723240688 1 0.16488180276759312
		2 0 0.83164369601918864 1 0.16835630398081136
		2 25 0.49545100866589237 26 0.50454899133410769
		2 24 0.26865284220686669 25 0.73134715779313331
		2 0 0.75318698684664509 1 0.24681301315335488
		2 0 0.74661958269320328 1 0.25338041730679672
		2 0 0.74213658355174539 1 0.25786341644825456
		2 0 0.74621297258039687 1 0.25378702741960318
		2 0 0.75818530837364373 1 0.24181469162635638
		2 0 0.74966118843823459 1 0.25033881156176535
		2 0 0.80256563732565722 1 0.19743436267434281
		2 0 0.8123999236947046 1 0.18760007630529549
		2 0 0.77826610561967857 1 0.22173389438032143
		2 0 0.84175532143642651 1 0.15824467856357352
		2 0 0.83627945027458117 1 0.16372054972541886
		2 0 0.80838098047431173 1 0.19161901952568833
		2 0 0.80378038639311844 1 0.1962196136068815
		2 0 0.82171164053420453 1 0.17828835946579549
		2 0 0.77393177185769368 1 0.22606822814230626
		2 0 0.86798950651405682 1 0.13201049348594313
		2 0 0.83306567504816342 1 0.1669343249518366
		2 0 0.79963960561849834 1 0.20036039438150163
		2 0 0.76017587562596167 1 0.23982412437403836
		2 0 0.7873888962916521 1 0.21261110370834796
		2 0 0.79253711839385332 1 0.20746288160614668
		2 0 0.78499299711413051 1 0.21500700288586949
		2 0 0.78372841953021188 1 0.21627158046978806
		2 0 0.80031879701274455 1 0.19968120298725547
		2 0 0.79279492924254269 1 0.20720507075745739
		2 0 0.76112384938791156 1 0.2388761506120885
		2 0 0.81170660778910519 1 0.18829339221089478
		2 0 0.75594768233985776 1 0.24405231766014235
		2 0 0.76134330252464999 1 0.23865669747535001
		2 0 0.81708271495986995 1 0.18291728504013005
		2 0 0.82176611225334761 1 0.17823388774665244
		2 0 0.82709468801037034 1 0.17290531198962969
		2 0 0.81989854882615021 1 0.18010145117384974
		2 0 0.81287091146754831 1 0.18712908853245172
		2 0 0.81591212100415045 1 0.18408787899584952
		2 0 0.81143870898112203 1 0.188561291018878
		2 0 0.8134751053274567 1 0.18652489467254335
		2 0 0.81102196719712527 1 0.18897803280287473
		2 0 0.81181302337204631 1 0.18818697662795369
		2 0 0.811788269380191 1 0.18821173061980898
		2 0 0.81334466992902843 1 0.18665533007097154
		2 0 0.81574115829377525 1 0.1842588417062247
		2 0 0.81998200304595936 1 0.18001799695404067
		2 0 0.81896498577031684 1 0.18103501422968313
		2 0 0.82489215018999951 1 0.17510784981000052
		2 0 0.82068150150715713 1 0.1793184984928429
		2 0 0.82750517989933392 1 0.17249482010066616
		2 0 0.8393125507573409 1 0.16068744924265912
		2 0 0.81084287170924008 1 0.18915712829075987
		2 0 0.73961265215306782 1 0.26038734784693213
		2 0 0.73807500373547541 1 0.2619249962645247
		2 0 0.73897653129613172 1 0.26102346870386828
		2 0 0.7430771298431863 1 0.2569228701568137
		2 0 0.74685629683606403 1 0.25314370316393592
		2 0 0.74917342813427468 1 0.25082657186572527
		2 0 0.74623966151850807 1 0.25376033848149193
		2 0 0.7431996435346534 1 0.25680035646534666
		2 0 0.73972855465703147 1 0.26027144534296853
		2 0 0.7414453796175654 1 0.25855462038243465
		2 0 0.74044815886100568 1 0.25955184113899438
		2 0 0.74062165666251445 1 0.25937834333748555
		2 0 0.74176423933314162 1 0.25823576066685833
		2 0 0.73469187091509225 1 0.2653081290849077
		2 0 0.74513746666896719 1 0.25486253333103281
		2 0 0.74727570100178453 1 0.25272429899821552
		2 0 0.73585782398994437 1 0.26414217601005563
		2 0 0.7707803172975084 1 0.22921968270249157
		2 0 0.74864205826736885 1 0.2513579417326311
		2 0 0.79435816876298704 1 0.20564183123701299
		2 0 0.893698112819996 1 0.10630188718000404
		2 0 0.72536745122922663 1 0.27463254877077337
		2 0 0.70250946697903194 1 0.29749053302096806
		2 0 0.70219970722267899 1 0.29780029277732112
		2 0 0.71123529135202379 1 0.28876470864797621
		2 0 0.7015402280686962 1 0.29845977193130374
		2 14 0.39137957558453057 15 0.60862042441546937
		2 13 0.4428357755643878 14 0.5571642244356122
		2 12 0.48281840956073857 13 0.51718159043926137
		2 11 0.49887123788859283 12 0.50112876211140722
		2 10 0.49969606297953317 11 0.50030393702046694
		2 9 0.4997737869264437 10 0.5002262130735563
		2 6 0.30696206607896304 7 0.69303793392103696
		2 7 0.4197680802155187 8 0.5802319197844813
		2 22 0.49096950072655415 23 0.5090304992734459
		2 23 0.65020632947623325 24 0.34979367052376681
		2 0 0.79313379248461924 1 0.20686620751538085
		2 0 0.84754102770476414 1 0.15245897229523583
		2 2 0.36281018524671221 3 0.63718981475328784
		2 15 0.33427705585915257 16 0.66572294414084754
		2 16 0.32945156715690971 17 0.67054843284309029
		2 12 0.46558173927200319 13 0.53441826072799692
		2 13 0.40557629983201215 14 0.59442370016798785
		2 21 0.35254134365014983 22 0.64745865634985023
		2 20 0.37709801476795951 21 0.62290198523204054
		2 17 0.398457147906353 18 0.601542852093647
		2 18 0.38593909791113268 19 0.61406090208886732
		2 24 0.83163970220324834 25 0.1683602977967516
		2 24 0.236623999124835 25 0.763376000875165
		2 25 0.48735351353022166 26 0.5126464864697784
		2 26 0.75256851002434688 27 0.24743148997565306
		2 26 0.79832165912152198 27 0.20167834087847802
		2 21 0.30567315238682952 22 0.69432684761317043
		2 24 0.81032015674501867 25 0.18967984325498127
		2 23 0.63132562478228227 24 0.36867437521771779
		2 18 0.32849342234758522 19 0.67150657765241473
		2 19 0.3226107171403309 20 0.67738928285966904
		2 0 0.74100437468960934 1 0.25899562531039061
		2 6 0.36407352215823519 7 0.63592647784176481
		2 19 0.38161917346364388 20 0.61838082653635607
		2 17 0.36575710901586023 18 0.63424289098413988
		2 27 0.92695417807301594 28 0.073045821926984042
		2 0 0.82350218645239481 1 0.17649781354760513
		2 0 0.83381001581176895 1 0.16618998418823114
		2 0 0.83007096272189218 1 0.16992903727810779
		2 22 0.49552509710010095 23 0.50447490289989916
		2 7 0.44651293719186869 8 0.55348706280813131
		2 8 0.50024233285427477 9 0.49975766714572523
		2 10 0.49915324829178759 11 0.50084675170821247
		2 11 0.49734839421708815 12 0.50265160578291179
		2 14 0.34816486636176758 15 0.65183513363823242
		2 16 0.29128410730483761 17 0.70871589269516233
		2 15 0.29568653916909127 16 0.70431346083090873
		2 20 0.31654707205656163 21 0.68345292794343837
		2 0 0.84807677278152405 1 0.15192322721847595
		2 0 0.84971929026635973 1 0.1502807097336403
		2 0 0.75037635007946968 1 0.24962364992053032
		2 0 0.75222043137473749 1 0.24777956862526254
		2 0 0.75340406018457873 1 0.24659593981542122
		2 0 0.74389577113870786 1 0.25610422886129214
		2 0 0.74166465456021913 1 0.25833534543978098
		2 0 0.7443773044309 1 0.25562269556910006
		2 0 0.74371108509328809 1 0.25628891490671191
		2 0 0.8128585740808234 1 0.18714142591917657
		2 0 0.76055641458782264 1 0.23944358541217736
		2 0 0.74890020821858394 1 0.25109979178141606
		2 0 0.69441769669222186 1 0.30558230330777814
		2 6 0.73038788172863256 7 0.26961211827136738
		2 6 0.65028222640585209 7 0.34971777359414791
		2 6 0.58941472495092706 7 0.410585275049073
		2 6 0.76887152972211859 7 0.2311284702778815
		2 6 0.65028222640579636 7 0.3497177735942037
		2 6 0.58941472495089942 7 0.41058527504910053
		2 5 0.49921419703208525 6 0.50078580296791486
		2 5 0.49942450136989586 6 0.50057549863010409
		2 5 0.49960715908735215 6 0.5003928409126478
		2 5 0.49718011206182811 6 0.50281988793817189
		2 5 0.49942451225772089 6 0.50057548774227922
		2 5 0.49960715908735231 6 0.50039284091264769
		2 5 0.59737964028441448 6 0.40262035971558546
		2 5 0.72083703764352192 6 0.27916296235647814
		2 5 0.67454488645198851 6 0.32545511354801149
		2 5 0.78075164325722668 6 0.21924835674277338
		2 5 0.67454488127598311 6 0.32545511872401689
		2 5 0.59737964028438639 6 0.40262035971561355
		2 4 0.48050494842279179 5 0.51949505157720821
		2 4 0.46380501773515803 5 0.53619498226484197
		2 4 0.41814410380007661 5 0.58185589619992351
		2 4 0.45916317029675419 5 0.54083682970324587
		2 4 0.48050494842279967 5 0.51949505157720033
		2 4 0.46380501773517641 5 0.53619498226482354
		2 4 0.5435629218047342 5 0.45643707819526574
		2 4 0.57872366040173007 5 0.42127633959826999
		2 4 0.63919932680374514 5 0.36080067319625492
		2 4 0.59100068059468414 5 0.40899931940531581
		2 4 0.54356292180473453 5 0.45643707819526552
		2 4 0.57872366040171752 5 0.42127633959828242
		2 3 0.19658350142845235 4 0.80341649857154773
		2 3 0.33761963242624488 4 0.66238036757375518
		2 3 0.28120160993644633 4 0.71879839006355373
		2 3 0.33761963242628168 4 0.66238036757371832
		2 3 0.28120162283578337 4 0.71879837716421657
		2 3 0.26470080804549739 4 0.73529919195450255
		2 3 0.44752562745269403 4 0.55247437254730591
		2 3 0.48307959668164419 4 0.51692040331835576
		2 3 0.47359957794320445 4 0.52640042205679549
		2 3 0.47138955203954208 4 0.52861044796045786
		2 3 0.48307959689929492 4 0.51692040310070508
		2 3 0.47359957794321644 4 0.52640042205678361
		2 3 0.60799580275826914 4 0.39200419724173091
		2 3 0.58585287288042365 4 0.41414712711957635
		2 3 0.6292776653119837 4 0.37072233468801635
		2 3 0.66798226827544982 4 0.33201773172455012
		2 3 0.60799583012699865 4 0.39200416987300141
		2 3 0.58585287546882747 4 0.41414712453117253
		2 2 0.31404809918977039 3 0.68595190081022961
		2 2 0.35797937110714234 3 0.64202062889285771
		2 2 0.26854612618469709 3 0.73145387381530291
		2 2 0.35797937310674965 3 0.64202062689325035
		2 2 0.49693454381143065 3 0.50306545618856935
		2 2 0.49792673642400054 3 0.50207326357599946
		2 2 0.49692998606418592 3 0.50307001393581419
		2 2 0.49808362610738915 3 0.50191637389261079
		2 2 0.49368383891333634 3 0.50631616108666377
		2 2 0.49792673130282306 3 0.50207326869717706
		2 2 0.49808362171618786 3 0.50191637828381219
		2 2 0.49693455013100979 3 0.50306544986899027
		2 2 0.61896730550936407 3 0.38103269449063593
		2 2 0.65875503399380286 3 0.34124496600619708
		2 2 0.66635149913335179 3 0.33364850086664816
		2 2 0.61896729194323752 3 0.38103270805676254
		2 2 0.57551364043431752 3 0.42448635956568248
		2 2 0.57551364043431763 3 0.42448635956568237
		2 1 0.42206247719346324 2 0.57793752280653676
		2 1 0.3373984454948869 2 0.66260155450511316
		2 1 0.40524579841117686 2 0.59475420158882319
		2 1 0.39752026543485014 2 0.6024797345651498
		2 1 0.44882546835556447 2 0.55117453164443564
		2 1 0.34278255145208653 2 0.65721744854791342
		2 1 0.42206247719346396 2 0.57793752280653599
		2 1 0.40524579982014214 2 0.59475420017985781;
	setAttr ".wl[500:569].w"
		2 1 0.44882546835556486 2 0.55117453164443519
		2 1 0.39752026543485081 2 0.60247973456514914
		2 1 0.53415230936614488 2 0.46584769063385523
		2 1 0.51051958930125485 2 0.48948041069874509
		2 1 0.51858487241092233 2 0.48141512758907762
		2 1 0.50662687928462791 2 0.49337312071537209
		2 1 0.5611616085579384 2 0.4388383914420616
		2 1 0.51576436760636701 2 0.48423563239363293
		2 1 0.51051958930125485 2 0.48948041069874509
		2 1 0.50662689546205208 2 0.49337310453794792
		2 1 0.51858487241092222 2 0.48141512758907773
		2 1 0.51576436760636712 2 0.48423563239363288
		2 0 0.18704037688445782 1 0.81295962311554226
		2 1 0.74599711993603879 2 0.25400288006396121
		2 1 0.55314852620994193 2 0.44685147379005813
		2 1 0.58972830634933604 2 0.4102716936506639
		2 1 0.64155178876465313 2 0.35844821123534687
		2 0 0.37859415944718894 1 0.62140584055281101
		2 1 0.5897283157197224 2 0.4102716842802776
		2 1 0.64155174183981734 2 0.35844825816018266
		2 0 0.37859421708804836 1 0.62140578291195159
		2 1 0.55314852620994182 2 0.44685147379005818
		2 0 0.49146267956632322 1 0.50853732043367683
		2 0 0.49562622010625662 1 0.50437377989374343
		2 0 0.49053733902412633 1 0.50946266097587367
		2 0 0.42927231686444239 1 0.57072768313555766
		2 0 0.44117831884814723 1 0.55882168115185282
		2 0 0.47932222863433832 1 0.52067777136566173
		2 0 0.49562622010625657 1 0.50437377989374343
		2 0 0.49146266188145937 1 0.50853733811854074
		2 0 0.49053733956813472 1 0.50946266043186528
		2 0 0.47932222863433849 1 0.52067777136566162
		2 0 0.5011992007129551 1 0.49880079928704496
		2 0 0.50255626680545151 1 0.49744373319454843
		2 0 0.50218968108107509 1 0.49781031891892485
		2 0 0.5060829743771027 1 0.4939170256228973
		2 0 0.51375024131148783 1 0.48624975868851222
		2 0 0.50119920071478075 1 0.49880079928521925
		2 0 0.50255626718079549 1 0.49744373281920451
		2 0 0.50608297425089399 1 0.49391702574910612
		2 0 0.50218967208219667 1 0.49781032791780344
		2 0 0.52017500254995785 1 0.47982499745004215
		2 0 0.63378346008872877 1 0.36621653991127123
		2 0 0.59318680141383706 1 0.40681319858616299
		2 0 0.51868239012248107 1 0.48131760987751887
		2 0 0.65242001798590521 1 0.34757998201409485
		2 0 0.53538748035922334 1 0.46461251964077666
		2 0 0.53391498493085443 1 0.46608501506914568
		2 0 0.51868239012248107 1 0.48131760987751898
		2 0 0.53538748035922334 1 0.46461251964077666
		2 0 0.53391498481453015 1 0.46608501518546985
		2 0 0.59318695118226361 1 0.40681304881773639
		2 0 0.6350006568210862 1 0.36499934317891392
		2 0 0.77408290685822478 1 0.22591709314177524
		2 0 0.65384223955503262 1 0.34615776044496738
		2 0 0.78065583031783192 1 0.21934416968216805
		2 0 0.76875666358199302 1 0.23124333641800701
		2 0 0.63500065682108608 1 0.36499934317891397
		2 0 0.65384224690325543 1 0.34615775309674451
		2 0 0.76875666358199291 1 0.23124333641800712
		2 0 0.71867060205431321 1 0.28132939794568673
		2 0 0.72778496651198077 1 0.27221503348801934
		2 0 0.86327041415156458 1 0.13672958584843539
		2 0 0.79264250810642356 1 0.20735749189357638
		2 0 0.85455027737582212 1 0.14544972262417791
		2 0 0.862354876853626 1 0.13764512314637403
		2 0 0.71867060205431321 1 0.28132939794568673
		2 0 0.72778496651198077 1 0.27221503348801923
		2 0 0.79264243249737032 1 0.20735756750262963
		2 0 0.85455028546324707 1 0.14544971453675296;
	setAttr -s 30 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-16 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-16 -0
		 10.448438644410359 -0.85000002384195406 -2.3200194308815279e-15 1;
	setAttr ".pm[1]" -type "matrix" 2.2174030051104722e-16 1.1620916727338197e-17 1 -0
		 -0.052335956242943869 0.99862953475457406 -0 0 -0.99862953475457406 -0.052335956242943869 2.2204460492503131e-16 -0
		 7.6724559937731698 -0.4490701376923954 -2.2367527040346427e-15 1;
	setAttr ".pm[2]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 4.8438215951713381 -0.61849384321872491 -2.0285858869174274e-15 1;
	setAttr ".pm[3]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 2.0338215951713381 -0.61849384321872491 -3.3608535164676173e-15 1;
	setAttr ".pm[4]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -0.77617840482866185 -0.61849384321872491 -2.4726750967674936e-15 1;
	setAttr ".pm[5]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -3.586178404828662 -0.6184938432187248 -1.3253530243160462e-13 1;
	setAttr ".pm[6]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -6.3961784048286621 -0.6184938432187248 -1.3431165927100487e-13 1;
	setAttr ".pm[7]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -9.2155704651972918 -0.4577296763554482 -1.3253530243160462e-13 1;
	setAttr ".pm[8]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -12.025570465197292 -0.4577296763554482 -1.3120303480205443e-13 1;
	setAttr ".pm[9]" -type "matrix" 2.2201078645620404e-16 -3.8752126923576828e-18 1 -0
		 0.017452406437283477 0.99984769515639127 -0 0 -0.99984769515639127 0.017452406437283477 2.2204460492503131e-16 -0
		 -14.841299420307905 -0.19874355642109337 -1.303148563823543e-13 1;
	setAttr ".pm[10]" -type "matrix" 2.2201078645620404e-16 -3.8752126923576828e-18 1 -0
		 0.017452406437283477 0.99984769515639127 -0 0 -0.99984769515639127 0.017452406437283477 2.2204460492503131e-16 -0
		 -17.651299420307907 -0.19874355642109337 -1.2909361105526666e-13 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -20.454714511976213 -0.55581220053298142 -1.3486677078331747e-13 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -23.264714511976212 -0.55581220053298142 -1.3619903841286768e-13 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -26.074714511976211 -0.55581220053298142 -1.3619903841286768e-13 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -28.88471451197621 -0.55581220053298142 -1.3353450315376733e-13 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -31.694714511976208 -0.55581220053298142 -1.3086996789466696e-13 1;
	setAttr ".pm[16]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -34.504714511976211 -0.55581220053298142 -1.2975974487004183e-13 1;
	setAttr ".pm[17]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -37.314714511976213 -0.55581220053298142 -1.3420063696854245e-13 1;
	setAttr ".pm[18]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -40.124714511976215 -0.55581220053298142 -1.2354249593214097e-13 1;
	setAttr ".pm[19]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -42.934714511976217 -0.5558122005329813 -1.2176613909274072e-13 1;
	setAttr ".pm[20]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -45.74471451197622 -0.5558122005329813 -1.2176613909274075e-13 1;
	setAttr ".pm[21]" -type "matrix" 2.2204460492503131e-16 7.7037197775489434e-33 1 -0
		 -3.4694469519536142e-17 1 -0 0 -1 -3.4694469519536142e-17 2.2204460492503131e-16 -0
		 -48.554714511976222 -0.5558122005329813 -1.3086996789466703e-13 1;
	setAttr ".pm[22]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -51.347191156738965 -1.4521654218407469 -1.3486677078331765e-13 1;
	setAttr ".pm[23]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -54.157191156738968 -1.4521654218407469 -1.3495003751016451e-13 1;
	setAttr ".pm[24]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -56.967191156738963 -1.4521654218407469 -1.3495003751016456e-13 1;
	setAttr ".pm[25]" -type "matrix" 2.2190934135115542e-16 7.7492449573892683e-18 1 -0
		 -0.034899496702501004 0.99939082701909576 -0 0 -0.99939082701909576 -0.034899496702501004 2.2204460492503131e-16 -0
		 -59.742743019832325 -2.4952000857598775 -1.3694843895448982e-13 1;
	setAttr ".pm[26]" -type "matrix" 2.2174030051104719e-16 1.1620916727338196e-17 1 -0
		 -0.052335956242943862 0.99862953475457394 -0 0 -0.99862953475457394 -0.052335956242943862 2.2204460492503131e-16 -0
		 -62.49966868805037 -3.586515949650106 -1.4716249078104126e-13 1;
	setAttr ".pm[27]" -type "matrix" 2.2190934135115542e-16 7.7492449573892683e-18 1 -0
		 -0.034899496702501004 0.99939082701909576 -0 0 -0.99939082701909576 -0.034899496702501004 2.2204460492503131e-16 -0
		 -65.362315043221784 -2.4461588236711105 -1.5204747208939194e-13 1;
	setAttr ".pm[28]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -68.204623427441533 -1.2560153119291857 -1.5027111524999172e-13 1;
	setAttr ".pm[29]" -type "matrix" 2.2201078645620404e-16 3.8752126923576982e-18 1 -0
		 -0.017452406437283546 0.99984769515639127 -0 0 -0.99984769515639127 -0.017452406437283546 2.2204460492503131e-16 -0
		 -71.014623427441535 -1.2560153119291857 -1.5160338287954191e-13 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 30 ".ma";
	setAttr -s 30 ".dpf[0:29]"  1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 
		1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5;
	setAttr -s 30 ".lw";
	setAttr -s 30 ".lw";
	setAttr ".mmi" yes;
	setAttr ".ucm" yes;
	setAttr -s 30 ".ifcl";
	setAttr -s 30 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "E21769EB-40CD-4A7F-C533-7EBB95EB25CA";
createNode objectSet -n "skinCluster2Set";
	rename -uid "54A0ECB9-403B-DF4C-94AD-D8B4EE32A682";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "0DDF3422-4CF9-4413-0C5F-FFA6EE5177D3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "ADF9E833-466D-C652-7A91-9688F8B79239";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "D34A62FC-4349-3FEC-AB86-23BD0A153B0E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "495EDB42-427E-DD82-262C-109855F68553";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "B2FAD3B3-459E-7418-5CFD-C28BBC08BC7D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "B249C1F6-4555-747C-38EF-57B096AE835A";
	setAttr -s 31 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 31 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0 0.85000002384195406
		 10.448438644410359 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118654746 0 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -8.3266726846885163e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.026176948307873156 0.99965732497555726 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -2.0816681711721527e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.017452406437283512 0.99984769515639127 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.3322676295501894e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -8.8817841970012365e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.3006262733483711e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.776356839400252e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -1.7763568394002489e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -1.3322676295501863e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -8.8817841970012365e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -1.2212453270876706e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 5.7731597280508156e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.3322676295501894e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.5777218104420236e-30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -2.6645352591003741e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -2.6645352591003741e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -1.110223024625155e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 4.4408920985006277e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -1.0658141036401501e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -1.7763568394002489e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.5777218104420236e-30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 9.1038288019262852e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 3.9968028886505651e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 8.3266726846888318e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.5777218104420236e-30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.9984014443252834e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 1.0214051826551442e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 4.8849813083506904e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 -0 0 0 2.8100000000000001 0
		 -1.7763568394002489e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0087265354983739347 0.99996192306417131 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8100000000000001 0
		 1.3322676295501894e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 31 ".m";
	setAttr -s 31 ".p";
	setAttr -s 31 ".g[0:30]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "E5077347-4304-202A-88FF-AAA94813B7D9";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "050D0DAA-4DAF-A358-ACAC-1A84908F9329";
	setAttr ".txf" -type "matrix" 15.399012498240349 0 0 0 0 15.399012498240349 0 0
		 0 0 15.399012498240349 0 0 0 0 1;
createNode curveInfo -n "Snake_IKSpline_CI";
	rename -uid "AFB0C03A-4CA5-E101-704D-9DBD92BABE9A";
createNode multiplyDivide -n "Snake_IKSpline_Scalar_MD";
	rename -uid "4737ECC3-431D-389E-FCE5-2D9F93E6EA2D";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 81.490829 1 1 ;
createNode condition -n "Snake_IKSpline_COND";
	rename -uid "4FB1CF8F-486B-8D24-16EC-3EAAAAB016F2";
	setAttr ".op" 2;
	setAttr ".st" 81.490829467773438;
createNode blendColors -n "Snake_IKSpline_BLEND";
	rename -uid "5F190671-455A-4ECF-95F4-1482F23463D7";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "Snake_IKSpline_Stretch_MD";
	rename -uid "D3481565-4324-9210-D5B6-7CACACB08AA7";
	setAttr ".i1" -type "float3" 2.8099999 0 0 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2CE66D6A-4A6D-3FFB-B3A7-0B84F4913656";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -575.27647709179882 -133.4494616528647 ;
	setAttr ".tgi[0].vh" -type "double2" 967.04354272488229 769.08236900020745 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -189.692626953125;
	setAttr ".tgi[0].ni[0].y" 326.67971801757813;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -390.39654541015625;
	setAttr ".tgi[0].ni[1].y" 205.0574951171875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -652.51922607421875;
	setAttr ".tgi[0].ni[2].y" 204.40043640136719;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 71.080718994140625;
	setAttr ".tgi[0].ni[3].y" 211.73515319824219;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 355.2447509765625;
	setAttr ".tgi[0].ni[4].y" 348.233154296875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 77.32049560546875;
	setAttr ".tgi[0].ni[5].y" 371.8177490234375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 644.947998046875;
	setAttr ".tgi[0].ni[6].y" 333.38723754882813;
	setAttr ".tgi[0].ni[6].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1.25;
	setAttr ".unw" 1.25;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "transformGeometry2.og" "Transform_CtrlShape.cr";
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.ctx" "Snake_IKSpline_01_Ctrl_Grp.tx"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.cty" "Snake_IKSpline_01_Ctrl_Grp.ty"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.ctz" "Snake_IKSpline_01_Ctrl_Grp.tz"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.crx" "Snake_IKSpline_01_Ctrl_Grp.rx"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.cry" "Snake_IKSpline_01_Ctrl_Grp.ry"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.crz" "Snake_IKSpline_01_Ctrl_Grp.rz"
		;
connectAttr "transformGeometry1.og" "Snake_IKSpline_01_CtrlShape.cr";
connectAttr "Snake_IKSpline_01_Ctrl_Grp.ro" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp.pim" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp.rp" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp.rpt" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Transform_Ctrl.t" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Transform_Ctrl.rp" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Transform_Ctrl.rpt" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Transform_Ctrl.r" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Transform_Ctrl.ro" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Transform_Ctrl.s" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Transform_Ctrl.pm" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.w0" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_01_Ctrl.FollowTranslate" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp.ro" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp.pim" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp.rp" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp.rpt" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Transform_Ctrl.t" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Transform_Ctrl.rp" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Transform_Ctrl.rpt" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Transform_Ctrl.r" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Transform_Ctrl.ro" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Transform_Ctrl.s" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Transform_Ctrl.pm" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.w0" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Snake_IKSpline_01_Ctrl.FollowRotate" "Snake_IKSpline_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.ctx" "Snake_IKSpline_02_Ctrl_Grp.tx"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.cty" "Snake_IKSpline_02_Ctrl_Grp.ty"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.ctz" "Snake_IKSpline_02_Ctrl_Grp.tz"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.crx" "Snake_IKSpline_02_Ctrl_Grp.rx"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.cry" "Snake_IKSpline_02_Ctrl_Grp.ry"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.crz" "Snake_IKSpline_02_Ctrl_Grp.rz"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.ro" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.pim" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.rp" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.rpt" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.t" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.rp" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_01_Ctrl.rpt" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.r" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_01_Ctrl.ro" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_01_Ctrl.s" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_01_Ctrl.pm" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.w0" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_02_Ctrl.FollowTranslate" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.ro" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.pim" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.rp" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp.rpt" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.t" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.rp" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Snake_IKSpline_01_Ctrl.rpt" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.r" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Snake_IKSpline_01_Ctrl.ro" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Snake_IKSpline_01_Ctrl.s" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Snake_IKSpline_01_Ctrl.pm" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.w0" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Snake_IKSpline_02_Ctrl.FollowRotate" "Snake_IKSpline_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.ctx" "Snake_IKSpline_03_Ctrl_Grp.tx"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.cty" "Snake_IKSpline_03_Ctrl_Grp.ty"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.ctz" "Snake_IKSpline_03_Ctrl_Grp.tz"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.crx" "Snake_IKSpline_03_Ctrl_Grp.rx"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.cry" "Snake_IKSpline_03_Ctrl_Grp.ry"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.crz" "Snake_IKSpline_03_Ctrl_Grp.rz"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.ro" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.pim" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.rp" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.rpt" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.t" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.rp" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_02_Ctrl.rpt" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.r" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_02_Ctrl.ro" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_02_Ctrl.s" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_02_Ctrl.pm" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.w0" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_03_Ctrl.FollowTranslate" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.ro" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.pim" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.rp" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp.rpt" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.t" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.rp" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Snake_IKSpline_02_Ctrl.rpt" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.r" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Snake_IKSpline_02_Ctrl.ro" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Snake_IKSpline_02_Ctrl.s" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Snake_IKSpline_02_Ctrl.pm" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.w0" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Snake_IKSpline_03_Ctrl.FollowRotate" "Snake_IKSpline_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.ctx" "Snake_IKSpline_04_Ctrl_Grp.tx"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.cty" "Snake_IKSpline_04_Ctrl_Grp.ty"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.ctz" "Snake_IKSpline_04_Ctrl_Grp.tz"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.crx" "Snake_IKSpline_04_Ctrl_Grp.rx"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.cry" "Snake_IKSpline_04_Ctrl_Grp.ry"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.crz" "Snake_IKSpline_04_Ctrl_Grp.rz"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.ro" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.pim" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.rp" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.rpt" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.t" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.rp" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_03_Ctrl.rpt" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.r" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_03_Ctrl.ro" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_03_Ctrl.s" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_03_Ctrl.pm" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.w0" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_04_Ctrl.FollowTranslate" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.ro" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.pim" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.rp" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp.rpt" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.t" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.rp" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Snake_IKSpline_03_Ctrl.rpt" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.r" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Snake_IKSpline_03_Ctrl.ro" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Snake_IKSpline_03_Ctrl.s" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Snake_IKSpline_03_Ctrl.pm" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.w0" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Snake_IKSpline_04_Ctrl.FollowRotate" "Snake_IKSpline_04_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.ctx" "Snake_IKSpline_05_Ctrl_Grp.tx"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.cty" "Snake_IKSpline_05_Ctrl_Grp.ty"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.ctz" "Snake_IKSpline_05_Ctrl_Grp.tz"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.crx" "Snake_IKSpline_05_Ctrl_Grp.rx"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.cry" "Snake_IKSpline_05_Ctrl_Grp.ry"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.crz" "Snake_IKSpline_05_Ctrl_Grp.rz"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.ro" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.pim" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.rp" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.rpt" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.t" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.rp" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_04_Ctrl.rpt" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.r" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_04_Ctrl.ro" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_04_Ctrl.s" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_04_Ctrl.pm" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.w0" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_05_Ctrl.FollowTranslate" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.ro" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.pim" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.rp" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp.rpt" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.t" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.rp" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Snake_IKSpline_04_Ctrl.rpt" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.r" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Snake_IKSpline_04_Ctrl.ro" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Snake_IKSpline_04_Ctrl.s" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Snake_IKSpline_04_Ctrl.pm" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.w0" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Snake_IKSpline_05_Ctrl.FollowRotate" "Snake_IKSpline_05_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.ctx" "Snake_IKSpline_06_Ctrl_Grp.tx"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.cty" "Snake_IKSpline_06_Ctrl_Grp.ty"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.ctz" "Snake_IKSpline_06_Ctrl_Grp.tz"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.crx" "Snake_IKSpline_06_Ctrl_Grp.rx"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.cry" "Snake_IKSpline_06_Ctrl_Grp.ry"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.crz" "Snake_IKSpline_06_Ctrl_Grp.rz"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.ro" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.pim" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.rp" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.rpt" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.t" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.rp" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_05_Ctrl.rpt" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.r" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_05_Ctrl.ro" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_05_Ctrl.s" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_05_Ctrl.pm" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.w0" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_06_Ctrl.FollowTranslate" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.ro" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.pim" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.rp" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp.rpt" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.t" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.rp" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Snake_IKSpline_05_Ctrl.rpt" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.r" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Snake_IKSpline_05_Ctrl.ro" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Snake_IKSpline_05_Ctrl.s" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Snake_IKSpline_05_Ctrl.pm" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.w0" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Snake_IKSpline_06_Ctrl.FollowRotate" "Snake_IKSpline_06_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_01_Jnt.tx";
connectAttr "Snake_IKSpline_01_Jnt.s" "Snake_IKSpline_02_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_02_Jnt.tx";
connectAttr "Snake_IKSpline_02_Jnt.s" "Snake_IKSpline_03_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_03_Jnt.tx";
connectAttr "Snake_IKSpline_03_Jnt.s" "Snake_IKSpline_04_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_04_Jnt.tx";
connectAttr "Snake_IKSpline_04_Jnt.s" "Snake_IKSpline_05_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_05_Jnt.tx";
connectAttr "Snake_IKSpline_05_Jnt.s" "Snake_IKSpline_06_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_06_Jnt.tx";
connectAttr "Snake_IKSpline_06_Jnt.s" "Snake_IKSpline_07_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_07_Jnt.tx";
connectAttr "Snake_IKSpline_07_Jnt.s" "Snake_IKSpline_08_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_08_Jnt.tx";
connectAttr "Snake_IKSpline_08_Jnt.s" "Snake_IKSpline_09_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_09_Jnt.tx";
connectAttr "Snake_IKSpline_09_Jnt.s" "Snake_IKSpline_10_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_10_Jnt.tx";
connectAttr "Snake_IKSpline_10_Jnt.s" "Snake_IKSpline_11_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_11_Jnt.tx";
connectAttr "Snake_IKSpline_11_Jnt.s" "Snake_IKSpline_12_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_12_Jnt.tx";
connectAttr "Snake_IKSpline_12_Jnt.s" "Snake_IKSpline_13_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_13_Jnt.tx";
connectAttr "Snake_IKSpline_13_Jnt.s" "Snake_IKSpline_14_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_14_Jnt.tx";
connectAttr "Snake_IKSpline_14_Jnt.s" "Snake_IKSpline_15_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_15_Jnt.tx";
connectAttr "Snake_IKSpline_15_Jnt.s" "Snake_IKSpline_16_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_16_Jnt.tx";
connectAttr "Snake_IKSpline_16_Jnt.s" "Snake_IKSpline_17_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_17_Jnt.tx";
connectAttr "Snake_IKSpline_17_Jnt.s" "Snake_IKSpline_18_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_18_Jnt.tx";
connectAttr "Snake_IKSpline_18_Jnt.s" "Snake_IKSpline_19_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_19_Jnt.tx";
connectAttr "Snake_IKSpline_19_Jnt.s" "Snake_IKSpline_20_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_20_Jnt.tx";
connectAttr "Snake_IKSpline_20_Jnt.s" "Snake_IKSpline_21_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_21_Jnt.tx";
connectAttr "Snake_IKSpline_21_Jnt.s" "Snake_IKSpline_22_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_22_Jnt.tx";
connectAttr "Snake_IKSpline_22_Jnt.s" "Snake_IKSpline_23_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_23_Jnt.tx";
connectAttr "Snake_IKSpline_23_Jnt.s" "Snake_IKSpline_24_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_24_Jnt.tx";
connectAttr "Snake_IKSpline_24_Jnt.s" "Snake_IKSpline_25_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_25_Jnt.tx";
connectAttr "Snake_IKSpline_25_Jnt.s" "Snake_IKSpline_26_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_26_Jnt.tx";
connectAttr "Snake_IKSpline_26_Jnt.s" "Snake_IKSpline_27_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_27_Jnt.tx";
connectAttr "Snake_IKSpline_27_Jnt.s" "Snake_IKSpline_28_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_28_Jnt.tx";
connectAttr "Snake_IKSpline_28_Jnt.s" "Snake_IKSpline_29_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_29_Jnt.tx";
connectAttr "Snake_IKSpline_29_Jnt.s" "Snake_IKSpline_30_Jnt.is";
connectAttr "Snake_IKSpline_Stretch_MD.ox" "Snake_IKSpline_30_Jnt.tx";
connectAttr "Snake_IKSpline_30_Jnt.tx" "effector1.tx";
connectAttr "Snake_IKSpline_30_Jnt.ty" "effector1.ty";
connectAttr "Snake_IKSpline_30_Jnt.tz" "effector1.tz";
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.ctx" "Snake_IKSpline_Ctrl_06_Jnt.tx"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.cty" "Snake_IKSpline_Ctrl_06_Jnt.ty"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.ctz" "Snake_IKSpline_Ctrl_06_Jnt.tz"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.crx" "Snake_IKSpline_Ctrl_06_Jnt.rx"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.cry" "Snake_IKSpline_Ctrl_06_Jnt.ry"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.crz" "Snake_IKSpline_Ctrl_06_Jnt.rz"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.csx" "Snake_IKSpline_Ctrl_06_Jnt.sx"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.csy" "Snake_IKSpline_Ctrl_06_Jnt.sy"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.csz" "Snake_IKSpline_Ctrl_06_Jnt.sz"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.ro" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.pim" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.rp" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.rpt" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.jo" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.cjo"
		;
connectAttr "Snake_IKSpline_06_Ctrl.t" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_06_Ctrl.rp" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_06_Ctrl.rpt" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_06_Ctrl.r" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_06_Ctrl.ro" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_06_Ctrl.s" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_06_Ctrl.pm" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.w0" "Snake_IKSpline_Ctrl_06_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.pim" "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_06_Ctrl.s" "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_06_Ctrl.pm" "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.w0" "Snake_IKSpline_Ctrl_06_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.csx" "Snake_IKSpline_Ctrl_05_Jnt.sx"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.csy" "Snake_IKSpline_Ctrl_05_Jnt.sy"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.csz" "Snake_IKSpline_Ctrl_05_Jnt.sz"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.ctx" "Snake_IKSpline_Ctrl_05_Jnt.tx"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.cty" "Snake_IKSpline_Ctrl_05_Jnt.ty"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.ctz" "Snake_IKSpline_Ctrl_05_Jnt.tz"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.crx" "Snake_IKSpline_Ctrl_05_Jnt.rx"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.cry" "Snake_IKSpline_Ctrl_05_Jnt.ry"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.crz" "Snake_IKSpline_Ctrl_05_Jnt.rz"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.ro" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.pim" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.rp" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.rpt" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.jo" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.cjo"
		;
connectAttr "Snake_IKSpline_05_Ctrl.t" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.rp" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_05_Ctrl.rpt" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_05_Ctrl.r" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_05_Ctrl.ro" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_05_Ctrl.s" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_05_Ctrl.pm" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.w0" "Snake_IKSpline_Ctrl_05_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.pim" "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_05_Ctrl.s" "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_05_Ctrl.pm" "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.w0" "Snake_IKSpline_Ctrl_05_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.csx" "Snake_IKSpline_Ctrl_04_Jnt.sx"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.csy" "Snake_IKSpline_Ctrl_04_Jnt.sy"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.csz" "Snake_IKSpline_Ctrl_04_Jnt.sz"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.ctx" "Snake_IKSpline_Ctrl_04_Jnt.tx"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.cty" "Snake_IKSpline_Ctrl_04_Jnt.ty"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.ctz" "Snake_IKSpline_Ctrl_04_Jnt.tz"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.crx" "Snake_IKSpline_Ctrl_04_Jnt.rx"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.cry" "Snake_IKSpline_Ctrl_04_Jnt.ry"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.crz" "Snake_IKSpline_Ctrl_04_Jnt.rz"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.ro" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.pim" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.rp" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.rpt" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.jo" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.cjo"
		;
connectAttr "Snake_IKSpline_04_Ctrl.t" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.rp" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_04_Ctrl.rpt" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_04_Ctrl.r" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_04_Ctrl.ro" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_04_Ctrl.s" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_04_Ctrl.pm" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.w0" "Snake_IKSpline_Ctrl_04_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.pim" "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_04_Ctrl.s" "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_04_Ctrl.pm" "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.w0" "Snake_IKSpline_Ctrl_04_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.csx" "Snake_IKSpline_Ctrl_03_Jnt.sx"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.csy" "Snake_IKSpline_Ctrl_03_Jnt.sy"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.csz" "Snake_IKSpline_Ctrl_03_Jnt.sz"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.ctx" "Snake_IKSpline_Ctrl_03_Jnt.tx"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.cty" "Snake_IKSpline_Ctrl_03_Jnt.ty"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.ctz" "Snake_IKSpline_Ctrl_03_Jnt.tz"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.crx" "Snake_IKSpline_Ctrl_03_Jnt.rx"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.cry" "Snake_IKSpline_Ctrl_03_Jnt.ry"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.crz" "Snake_IKSpline_Ctrl_03_Jnt.rz"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.ro" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.pim" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.rp" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.rpt" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.jo" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.cjo"
		;
connectAttr "Snake_IKSpline_03_Ctrl.t" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.rp" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_03_Ctrl.rpt" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_03_Ctrl.r" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_03_Ctrl.ro" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_03_Ctrl.s" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_03_Ctrl.pm" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.w0" "Snake_IKSpline_Ctrl_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.pim" "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_03_Ctrl.s" "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_03_Ctrl.pm" "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.w0" "Snake_IKSpline_Ctrl_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.csx" "Snake_IKSpline_Ctrl_02_Jnt.sx"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.csy" "Snake_IKSpline_Ctrl_02_Jnt.sy"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.csz" "Snake_IKSpline_Ctrl_02_Jnt.sz"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.ctx" "Snake_IKSpline_Ctrl_02_Jnt.tx"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.cty" "Snake_IKSpline_Ctrl_02_Jnt.ty"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.ctz" "Snake_IKSpline_Ctrl_02_Jnt.tz"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.crx" "Snake_IKSpline_Ctrl_02_Jnt.rx"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.cry" "Snake_IKSpline_Ctrl_02_Jnt.ry"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.crz" "Snake_IKSpline_Ctrl_02_Jnt.rz"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.ro" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.pim" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.rp" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.rpt" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.jo" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.cjo"
		;
connectAttr "Snake_IKSpline_02_Ctrl.t" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.rp" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_02_Ctrl.rpt" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_02_Ctrl.r" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_02_Ctrl.ro" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_02_Ctrl.s" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_02_Ctrl.pm" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.w0" "Snake_IKSpline_Ctrl_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.pim" "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_02_Ctrl.s" "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_02_Ctrl.pm" "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.w0" "Snake_IKSpline_Ctrl_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.csx" "Snake_IKSpline_Ctrl_01_Jnt.sx"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.csy" "Snake_IKSpline_Ctrl_01_Jnt.sy"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.csz" "Snake_IKSpline_Ctrl_01_Jnt.sz"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.ctx" "Snake_IKSpline_Ctrl_01_Jnt.tx"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.cty" "Snake_IKSpline_Ctrl_01_Jnt.ty"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.ctz" "Snake_IKSpline_Ctrl_01_Jnt.tz"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.crx" "Snake_IKSpline_Ctrl_01_Jnt.rx"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.cry" "Snake_IKSpline_Ctrl_01_Jnt.ry"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.crz" "Snake_IKSpline_Ctrl_01_Jnt.rz"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.ro" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.cro"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.pim" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.rp" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.crp"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.rpt" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.crt"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.jo" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.cjo"
		;
connectAttr "Snake_IKSpline_01_Ctrl.t" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.rp" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Snake_IKSpline_01_Ctrl.rpt" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Snake_IKSpline_01_Ctrl.r" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Snake_IKSpline_01_Ctrl.ro" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Snake_IKSpline_01_Ctrl.s" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_01_Ctrl.pm" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.w0" "Snake_IKSpline_Ctrl_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.pim" "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.cpim"
		;
connectAttr "Snake_IKSpline_01_Ctrl.s" "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "Snake_IKSpline_01_Ctrl.pm" "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.w0" "Snake_IKSpline_Ctrl_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Snake_IKSpline_01_Jnt.msg" "IK_Spline_Handle.hsj";
connectAttr "effector1.hp" "IK_Spline_Handle.hee";
connectAttr "ikSplineSolver.msg" "IK_Spline_Handle.hsv";
connectAttr "Snake_IKSpline_CurveShape.ws" "IK_Spline_Handle.ic";
connectAttr "skinCluster1.og[0]" "Snake_IKSpline_CurveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "Snake_IKSpline_CurveShape.twl";
connectAttr "skinCluster1GroupId.id" "Snake_IKSpline_CurveShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "Snake_IKSpline_CurveShape.iog.og[0].gco";
connectAttr "groupId6.id" "Snake_IKSpline_CurveShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "Snake_IKSpline_CurveShape.iog.og[1].gco";
connectAttr "groupId1.id" "Snake_GeoShape.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "Snake_GeoShape.iog.og[0].gco";
connectAttr "groupId2.id" "Snake_GeoShape.iog.og[1].gid";
connectAttr "blinn3SG.mwc" "Snake_GeoShape.iog.og[1].gco";
connectAttr "groupId3.id" "Snake_GeoShape.iog.og[2].gid";
connectAttr "teeth_shaderSG.mwc" "Snake_GeoShape.iog.og[2].gco";
connectAttr "groupId4.id" "Snake_GeoShape.iog.og[3].gid";
connectAttr "blinn2SG.mwc" "Snake_GeoShape.iog.og[3].gco";
connectAttr "skinCluster2GroupId.id" "Snake_GeoShape.iog.og[4].gid";
connectAttr "skinCluster2Set.mwc" "Snake_GeoShape.iog.og[4].gco";
connectAttr "groupId8.id" "Snake_GeoShape.iog.og[5].gid";
connectAttr "tweakSet2.mwc" "Snake_GeoShape.iog.og[5].gco";
connectAttr "skinCluster2.og[0]" "Snake_GeoShape.i";
connectAttr "tweak2.vl[0].vt[0]" "Snake_GeoShape.twl";
connectAttr "Snake_GeoShape_pnts_428__pntx.o" "Snake_GeoShapeOrig.pt[428].px";
connectAttr "Snake_GeoShape_pnts_428__pnty.o" "Snake_GeoShapeOrig.pt[428].py";
connectAttr "Snake_GeoShape_pnts_428__pntz.o" "Snake_GeoShapeOrig.pt[428].pz";
connectAttr "Snake_GeoShape_pnts_429__pntx.o" "Snake_GeoShapeOrig.pt[429].px";
connectAttr "Snake_GeoShape_pnts_429__pnty.o" "Snake_GeoShapeOrig.pt[429].py";
connectAttr "Snake_GeoShape_pnts_429__pntz.o" "Snake_GeoShapeOrig.pt[429].pz";
connectAttr "Snake_GeoShape_pnts_431__pntx.o" "Snake_GeoShapeOrig.pt[431].px";
connectAttr "Snake_GeoShape_pnts_431__pnty.o" "Snake_GeoShapeOrig.pt[431].py";
connectAttr "Snake_GeoShape_pnts_431__pntz.o" "Snake_GeoShapeOrig.pt[431].pz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SheSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "teeth_shaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SheSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "teeth_shaderSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "SheSG.msg" "materialInfo1.sg";
connectAttr "place2dTexture1.o" "MapFBXASC032FBXASC0352.uv";
connectAttr "place2dTexture1.ofu" "MapFBXASC032FBXASC0352.ofu";
connectAttr "place2dTexture1.ofv" "MapFBXASC032FBXASC0352.ofv";
connectAttr "place2dTexture1.rf" "MapFBXASC032FBXASC0352.rf";
connectAttr "place2dTexture1.reu" "MapFBXASC032FBXASC0352.reu";
connectAttr "place2dTexture1.rev" "MapFBXASC032FBXASC0352.rev";
connectAttr "place2dTexture1.vt1" "MapFBXASC032FBXASC0352.vt1";
connectAttr "place2dTexture1.vt2" "MapFBXASC032FBXASC0352.vt2";
connectAttr "place2dTexture1.vt3" "MapFBXASC032FBXASC0352.vt3";
connectAttr "place2dTexture1.vc1" "MapFBXASC032FBXASC0352.vc1";
connectAttr "place2dTexture1.ofs" "MapFBXASC032FBXASC0352.fs";
connectAttr ":defaultColorMgtGlobals.cme" "MapFBXASC032FBXASC0352.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "MapFBXASC032FBXASC0352.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "MapFBXASC032FBXASC0352.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "MapFBXASC032FBXASC0352.ws";
connectAttr "Snake_Model_renderLayerManager.rlmi[0]" "Snake_Model_defaultRenderLayer.rlid"
		;
connectAttr "blendColors1.op" "skin_shader.c";
connectAttr "skin_shader.oc" "blinn1SG.ss";
connectAttr "Snake_GeoShape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "groupId1.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "skin_shader.msg" "materialInfo2.m";
connectAttr "blendColors1.msg" "materialInfo2.t" -na;
connectAttr "blendColors1.op" "materialInfo2.tc";
connectAttr "eye_shader.oc" "blinn2SG.ss";
connectAttr "Snake_GeoShape.iog.og[3]" "blinn2SG.dsm" -na;
connectAttr "groupId4.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo3.sg";
connectAttr "eye_shader.msg" "materialInfo3.m";
connectAttr "tongue_shader.oc" "blinn3SG.ss";
connectAttr "Snake_GeoShape.iog.og[1]" "blinn3SG.dsm" -na;
connectAttr "groupId2.msg" "blinn3SG.gn" -na;
connectAttr "blinn3SG.msg" "materialInfo4.sg";
connectAttr "tongue_shader.msg" "materialInfo4.m";
connectAttr "teeth_shader.oc" "teeth_shaderSG.ss";
connectAttr "groupId3.msg" "teeth_shaderSG.gn" -na;
connectAttr "Snake_GeoShape.iog.og[2]" "teeth_shaderSG.dsm" -na;
connectAttr "teeth_shaderSG.msg" "materialInfo5.sg";
connectAttr "teeth_shader.msg" "materialInfo5.m";
connectAttr "place3dTexture1.wim" "cloud1.pm";
connectAttr "colorConstant1.oc" "blendColors1.c1";
connectAttr "cloud1.oc" "blendColors1.c2";
connectAttr "cloud1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blendColors1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "colorConstant1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "skin_shader.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "place3dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Snake_GeoShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.wm" "skinCluster1.ma[1]";
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.wm" "skinCluster1.ma[2]";
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.wm" "skinCluster1.ma[3]";
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.wm" "skinCluster1.ma[4]";
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.wm" "skinCluster1.ma[5]";
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.liw" "skinCluster1.lw[1]";
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.liw" "skinCluster1.lw[2]";
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.liw" "skinCluster1.lw[3]";
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.liw" "skinCluster1.lw[4]";
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.liw" "skinCluster1.lw[5]";
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.obcc" "skinCluster1.ifcl[5]";
connectAttr "groupParts6.og" "tweak1.ip[0].ig";
connectAttr "groupId6.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "Snake_IKSpline_CurveShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet1.gn" -na;
connectAttr "Snake_IKSpline_CurveShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "Snake_IKSpline_CurveShapeOrig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.msg" "bindPose1.m[0]";
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.msg" "bindPose1.m[1]";
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.msg" "bindPose1.m[2]";
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.msg" "bindPose1.m[3]";
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.msg" "bindPose1.m[4]";
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.msg" "bindPose1.m[5]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.w" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "bindPose1.w" "bindPose1.p[3]";
connectAttr "bindPose1.w" "bindPose1.p[4]";
connectAttr "bindPose1.w" "bindPose1.p[5]";
connectAttr "Snake_IKSpline_Ctrl_01_Jnt.bps" "bindPose1.wm[0]";
connectAttr "Snake_IKSpline_Ctrl_02_Jnt.bps" "bindPose1.wm[1]";
connectAttr "Snake_IKSpline_Ctrl_03_Jnt.bps" "bindPose1.wm[2]";
connectAttr "Snake_IKSpline_Ctrl_04_Jnt.bps" "bindPose1.wm[3]";
connectAttr "Snake_IKSpline_Ctrl_05_Jnt.bps" "bindPose1.wm[4]";
connectAttr "Snake_IKSpline_Ctrl_06_Jnt.bps" "bindPose1.wm[5]";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "Snake_IKSpline_01_Jnt.wm" "skinCluster2.ma[0]";
connectAttr "Snake_IKSpline_02_Jnt.wm" "skinCluster2.ma[1]";
connectAttr "Snake_IKSpline_03_Jnt.wm" "skinCluster2.ma[2]";
connectAttr "Snake_IKSpline_04_Jnt.wm" "skinCluster2.ma[3]";
connectAttr "Snake_IKSpline_05_Jnt.wm" "skinCluster2.ma[4]";
connectAttr "Snake_IKSpline_06_Jnt.wm" "skinCluster2.ma[5]";
connectAttr "Snake_IKSpline_07_Jnt.wm" "skinCluster2.ma[6]";
connectAttr "Snake_IKSpline_08_Jnt.wm" "skinCluster2.ma[7]";
connectAttr "Snake_IKSpline_09_Jnt.wm" "skinCluster2.ma[8]";
connectAttr "Snake_IKSpline_10_Jnt.wm" "skinCluster2.ma[9]";
connectAttr "Snake_IKSpline_11_Jnt.wm" "skinCluster2.ma[10]";
connectAttr "Snake_IKSpline_12_Jnt.wm" "skinCluster2.ma[11]";
connectAttr "Snake_IKSpline_13_Jnt.wm" "skinCluster2.ma[12]";
connectAttr "Snake_IKSpline_14_Jnt.wm" "skinCluster2.ma[13]";
connectAttr "Snake_IKSpline_15_Jnt.wm" "skinCluster2.ma[14]";
connectAttr "Snake_IKSpline_16_Jnt.wm" "skinCluster2.ma[15]";
connectAttr "Snake_IKSpline_17_Jnt.wm" "skinCluster2.ma[16]";
connectAttr "Snake_IKSpline_18_Jnt.wm" "skinCluster2.ma[17]";
connectAttr "Snake_IKSpline_19_Jnt.wm" "skinCluster2.ma[18]";
connectAttr "Snake_IKSpline_20_Jnt.wm" "skinCluster2.ma[19]";
connectAttr "Snake_IKSpline_21_Jnt.wm" "skinCluster2.ma[20]";
connectAttr "Snake_IKSpline_22_Jnt.wm" "skinCluster2.ma[21]";
connectAttr "Snake_IKSpline_23_Jnt.wm" "skinCluster2.ma[22]";
connectAttr "Snake_IKSpline_24_Jnt.wm" "skinCluster2.ma[23]";
connectAttr "Snake_IKSpline_25_Jnt.wm" "skinCluster2.ma[24]";
connectAttr "Snake_IKSpline_26_Jnt.wm" "skinCluster2.ma[25]";
connectAttr "Snake_IKSpline_27_Jnt.wm" "skinCluster2.ma[26]";
connectAttr "Snake_IKSpline_28_Jnt.wm" "skinCluster2.ma[27]";
connectAttr "Snake_IKSpline_29_Jnt.wm" "skinCluster2.ma[28]";
connectAttr "Snake_IKSpline_30_Jnt.wm" "skinCluster2.ma[29]";
connectAttr "Snake_IKSpline_01_Jnt.liw" "skinCluster2.lw[0]";
connectAttr "Snake_IKSpline_02_Jnt.liw" "skinCluster2.lw[1]";
connectAttr "Snake_IKSpline_03_Jnt.liw" "skinCluster2.lw[2]";
connectAttr "Snake_IKSpline_04_Jnt.liw" "skinCluster2.lw[3]";
connectAttr "Snake_IKSpline_05_Jnt.liw" "skinCluster2.lw[4]";
connectAttr "Snake_IKSpline_06_Jnt.liw" "skinCluster2.lw[5]";
connectAttr "Snake_IKSpline_07_Jnt.liw" "skinCluster2.lw[6]";
connectAttr "Snake_IKSpline_08_Jnt.liw" "skinCluster2.lw[7]";
connectAttr "Snake_IKSpline_09_Jnt.liw" "skinCluster2.lw[8]";
connectAttr "Snake_IKSpline_10_Jnt.liw" "skinCluster2.lw[9]";
connectAttr "Snake_IKSpline_11_Jnt.liw" "skinCluster2.lw[10]";
connectAttr "Snake_IKSpline_12_Jnt.liw" "skinCluster2.lw[11]";
connectAttr "Snake_IKSpline_13_Jnt.liw" "skinCluster2.lw[12]";
connectAttr "Snake_IKSpline_14_Jnt.liw" "skinCluster2.lw[13]";
connectAttr "Snake_IKSpline_15_Jnt.liw" "skinCluster2.lw[14]";
connectAttr "Snake_IKSpline_16_Jnt.liw" "skinCluster2.lw[15]";
connectAttr "Snake_IKSpline_17_Jnt.liw" "skinCluster2.lw[16]";
connectAttr "Snake_IKSpline_18_Jnt.liw" "skinCluster2.lw[17]";
connectAttr "Snake_IKSpline_19_Jnt.liw" "skinCluster2.lw[18]";
connectAttr "Snake_IKSpline_20_Jnt.liw" "skinCluster2.lw[19]";
connectAttr "Snake_IKSpline_21_Jnt.liw" "skinCluster2.lw[20]";
connectAttr "Snake_IKSpline_22_Jnt.liw" "skinCluster2.lw[21]";
connectAttr "Snake_IKSpline_23_Jnt.liw" "skinCluster2.lw[22]";
connectAttr "Snake_IKSpline_24_Jnt.liw" "skinCluster2.lw[23]";
connectAttr "Snake_IKSpline_25_Jnt.liw" "skinCluster2.lw[24]";
connectAttr "Snake_IKSpline_26_Jnt.liw" "skinCluster2.lw[25]";
connectAttr "Snake_IKSpline_27_Jnt.liw" "skinCluster2.lw[26]";
connectAttr "Snake_IKSpline_28_Jnt.liw" "skinCluster2.lw[27]";
connectAttr "Snake_IKSpline_29_Jnt.liw" "skinCluster2.lw[28]";
connectAttr "Snake_IKSpline_30_Jnt.liw" "skinCluster2.lw[29]";
connectAttr "Snake_IKSpline_01_Jnt.obcc" "skinCluster2.ifcl[0]";
connectAttr "Snake_IKSpline_02_Jnt.obcc" "skinCluster2.ifcl[1]";
connectAttr "Snake_IKSpline_03_Jnt.obcc" "skinCluster2.ifcl[2]";
connectAttr "Snake_IKSpline_04_Jnt.obcc" "skinCluster2.ifcl[3]";
connectAttr "Snake_IKSpline_05_Jnt.obcc" "skinCluster2.ifcl[4]";
connectAttr "Snake_IKSpline_06_Jnt.obcc" "skinCluster2.ifcl[5]";
connectAttr "Snake_IKSpline_07_Jnt.obcc" "skinCluster2.ifcl[6]";
connectAttr "Snake_IKSpline_08_Jnt.obcc" "skinCluster2.ifcl[7]";
connectAttr "Snake_IKSpline_09_Jnt.obcc" "skinCluster2.ifcl[8]";
connectAttr "Snake_IKSpline_10_Jnt.obcc" "skinCluster2.ifcl[9]";
connectAttr "Snake_IKSpline_11_Jnt.obcc" "skinCluster2.ifcl[10]";
connectAttr "Snake_IKSpline_12_Jnt.obcc" "skinCluster2.ifcl[11]";
connectAttr "Snake_IKSpline_13_Jnt.obcc" "skinCluster2.ifcl[12]";
connectAttr "Snake_IKSpline_14_Jnt.obcc" "skinCluster2.ifcl[13]";
connectAttr "Snake_IKSpline_15_Jnt.obcc" "skinCluster2.ifcl[14]";
connectAttr "Snake_IKSpline_16_Jnt.obcc" "skinCluster2.ifcl[15]";
connectAttr "Snake_IKSpline_17_Jnt.obcc" "skinCluster2.ifcl[16]";
connectAttr "Snake_IKSpline_18_Jnt.obcc" "skinCluster2.ifcl[17]";
connectAttr "Snake_IKSpline_19_Jnt.obcc" "skinCluster2.ifcl[18]";
connectAttr "Snake_IKSpline_20_Jnt.obcc" "skinCluster2.ifcl[19]";
connectAttr "Snake_IKSpline_21_Jnt.obcc" "skinCluster2.ifcl[20]";
connectAttr "Snake_IKSpline_22_Jnt.obcc" "skinCluster2.ifcl[21]";
connectAttr "Snake_IKSpline_23_Jnt.obcc" "skinCluster2.ifcl[22]";
connectAttr "Snake_IKSpline_24_Jnt.obcc" "skinCluster2.ifcl[23]";
connectAttr "Snake_IKSpline_25_Jnt.obcc" "skinCluster2.ifcl[24]";
connectAttr "Snake_IKSpline_26_Jnt.obcc" "skinCluster2.ifcl[25]";
connectAttr "Snake_IKSpline_27_Jnt.obcc" "skinCluster2.ifcl[26]";
connectAttr "Snake_IKSpline_28_Jnt.obcc" "skinCluster2.ifcl[27]";
connectAttr "Snake_IKSpline_29_Jnt.obcc" "skinCluster2.ifcl[28]";
connectAttr "Snake_IKSpline_30_Jnt.obcc" "skinCluster2.ifcl[29]";
connectAttr "groupParts8.og" "tweak2.ip[0].ig";
connectAttr "groupId8.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "Snake_GeoShape.iog.og[4]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet2.gn" -na;
connectAttr "Snake_GeoShape.iog.og[5]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupParts4.og" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "Skeleton.msg" "bindPose2.m[0]";
connectAttr "Snake_IKSpline_01_Jnt.msg" "bindPose2.m[1]";
connectAttr "Snake_IKSpline_02_Jnt.msg" "bindPose2.m[2]";
connectAttr "Snake_IKSpline_03_Jnt.msg" "bindPose2.m[3]";
connectAttr "Snake_IKSpline_04_Jnt.msg" "bindPose2.m[4]";
connectAttr "Snake_IKSpline_05_Jnt.msg" "bindPose2.m[5]";
connectAttr "Snake_IKSpline_06_Jnt.msg" "bindPose2.m[6]";
connectAttr "Snake_IKSpline_07_Jnt.msg" "bindPose2.m[7]";
connectAttr "Snake_IKSpline_08_Jnt.msg" "bindPose2.m[8]";
connectAttr "Snake_IKSpline_09_Jnt.msg" "bindPose2.m[9]";
connectAttr "Snake_IKSpline_10_Jnt.msg" "bindPose2.m[10]";
connectAttr "Snake_IKSpline_11_Jnt.msg" "bindPose2.m[11]";
connectAttr "Snake_IKSpline_12_Jnt.msg" "bindPose2.m[12]";
connectAttr "Snake_IKSpline_13_Jnt.msg" "bindPose2.m[13]";
connectAttr "Snake_IKSpline_14_Jnt.msg" "bindPose2.m[14]";
connectAttr "Snake_IKSpline_15_Jnt.msg" "bindPose2.m[15]";
connectAttr "Snake_IKSpline_16_Jnt.msg" "bindPose2.m[16]";
connectAttr "Snake_IKSpline_17_Jnt.msg" "bindPose2.m[17]";
connectAttr "Snake_IKSpline_18_Jnt.msg" "bindPose2.m[18]";
connectAttr "Snake_IKSpline_19_Jnt.msg" "bindPose2.m[19]";
connectAttr "Snake_IKSpline_20_Jnt.msg" "bindPose2.m[20]";
connectAttr "Snake_IKSpline_21_Jnt.msg" "bindPose2.m[21]";
connectAttr "Snake_IKSpline_22_Jnt.msg" "bindPose2.m[22]";
connectAttr "Snake_IKSpline_23_Jnt.msg" "bindPose2.m[23]";
connectAttr "Snake_IKSpline_24_Jnt.msg" "bindPose2.m[24]";
connectAttr "Snake_IKSpline_25_Jnt.msg" "bindPose2.m[25]";
connectAttr "Snake_IKSpline_26_Jnt.msg" "bindPose2.m[26]";
connectAttr "Snake_IKSpline_27_Jnt.msg" "bindPose2.m[27]";
connectAttr "Snake_IKSpline_28_Jnt.msg" "bindPose2.m[28]";
connectAttr "Snake_IKSpline_29_Jnt.msg" "bindPose2.m[29]";
connectAttr "Snake_IKSpline_30_Jnt.msg" "bindPose2.m[30]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[11]" "bindPose2.p[12]";
connectAttr "bindPose2.m[12]" "bindPose2.p[13]";
connectAttr "bindPose2.m[13]" "bindPose2.p[14]";
connectAttr "bindPose2.m[14]" "bindPose2.p[15]";
connectAttr "bindPose2.m[15]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[18]" "bindPose2.p[19]";
connectAttr "bindPose2.m[19]" "bindPose2.p[20]";
connectAttr "bindPose2.m[20]" "bindPose2.p[21]";
connectAttr "bindPose2.m[21]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[23]" "bindPose2.p[24]";
connectAttr "bindPose2.m[24]" "bindPose2.p[25]";
connectAttr "bindPose2.m[25]" "bindPose2.p[26]";
connectAttr "bindPose2.m[26]" "bindPose2.p[27]";
connectAttr "bindPose2.m[27]" "bindPose2.p[28]";
connectAttr "bindPose2.m[28]" "bindPose2.p[29]";
connectAttr "bindPose2.m[29]" "bindPose2.p[30]";
connectAttr "Snake_IKSpline_01_Jnt.bps" "bindPose2.wm[1]";
connectAttr "Snake_IKSpline_02_Jnt.bps" "bindPose2.wm[2]";
connectAttr "Snake_IKSpline_03_Jnt.bps" "bindPose2.wm[3]";
connectAttr "Snake_IKSpline_04_Jnt.bps" "bindPose2.wm[4]";
connectAttr "Snake_IKSpline_05_Jnt.bps" "bindPose2.wm[5]";
connectAttr "Snake_IKSpline_06_Jnt.bps" "bindPose2.wm[6]";
connectAttr "Snake_IKSpline_07_Jnt.bps" "bindPose2.wm[7]";
connectAttr "Snake_IKSpline_08_Jnt.bps" "bindPose2.wm[8]";
connectAttr "Snake_IKSpline_09_Jnt.bps" "bindPose2.wm[9]";
connectAttr "Snake_IKSpline_10_Jnt.bps" "bindPose2.wm[10]";
connectAttr "Snake_IKSpline_11_Jnt.bps" "bindPose2.wm[11]";
connectAttr "Snake_IKSpline_12_Jnt.bps" "bindPose2.wm[12]";
connectAttr "Snake_IKSpline_13_Jnt.bps" "bindPose2.wm[13]";
connectAttr "Snake_IKSpline_14_Jnt.bps" "bindPose2.wm[14]";
connectAttr "Snake_IKSpline_15_Jnt.bps" "bindPose2.wm[15]";
connectAttr "Snake_IKSpline_16_Jnt.bps" "bindPose2.wm[16]";
connectAttr "Snake_IKSpline_17_Jnt.bps" "bindPose2.wm[17]";
connectAttr "Snake_IKSpline_18_Jnt.bps" "bindPose2.wm[18]";
connectAttr "Snake_IKSpline_19_Jnt.bps" "bindPose2.wm[19]";
connectAttr "Snake_IKSpline_20_Jnt.bps" "bindPose2.wm[20]";
connectAttr "Snake_IKSpline_21_Jnt.bps" "bindPose2.wm[21]";
connectAttr "Snake_IKSpline_22_Jnt.bps" "bindPose2.wm[22]";
connectAttr "Snake_IKSpline_23_Jnt.bps" "bindPose2.wm[23]";
connectAttr "Snake_IKSpline_24_Jnt.bps" "bindPose2.wm[24]";
connectAttr "Snake_IKSpline_25_Jnt.bps" "bindPose2.wm[25]";
connectAttr "Snake_IKSpline_26_Jnt.bps" "bindPose2.wm[26]";
connectAttr "Snake_IKSpline_27_Jnt.bps" "bindPose2.wm[27]";
connectAttr "Snake_IKSpline_28_Jnt.bps" "bindPose2.wm[28]";
connectAttr "Snake_IKSpline_29_Jnt.bps" "bindPose2.wm[29]";
connectAttr "Snake_IKSpline_30_Jnt.bps" "bindPose2.wm[30]";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "Snake_IKSpline_CurveShape.ws" "Snake_IKSpline_CI.ic";
connectAttr "Snake_IKSpline_CI.al" "Snake_IKSpline_Scalar_MD.i1x";
connectAttr "Snake_IKSpline_CI.al" "Snake_IKSpline_COND.ft";
connectAttr "Snake_IKSpline_Scalar_MD.ox" "Snake_IKSpline_COND.ctr";
connectAttr "Snake_IKSpline_COND.ocr" "Snake_IKSpline_BLEND.c1r";
connectAttr "Transform_Ctrl.Stretch" "Snake_IKSpline_BLEND.b";
connectAttr "Snake_IKSpline_BLEND.opr" "Snake_IKSpline_Stretch_MD.i2x";
connectAttr "Snake_IKSpline_Scalar_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Snake_IKSpline_CI.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Snake_IKSpline_CurveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Snake_IKSpline_COND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Snake_IKSpline_BLEND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Transform_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "Snake_IKSpline_Stretch_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "SheSG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "teeth_shaderSG.pa" ":renderPartition.st" -na;
connectAttr "skin_shader.msg" ":defaultShaderList1.s" -na;
connectAttr "eye_shader.msg" ":defaultShaderList1.s" -na;
connectAttr "tongue_shader.msg" ":defaultShaderList1.s" -na;
connectAttr "teeth_shader.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "colorConstant1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place3dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Snake_IKSpline_CI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Snake_IKSpline_Scalar_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Snake_IKSpline_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Snake_IKSpline_BLEND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Snake_IKSpline_Stretch_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Snake_Model_defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "MapFBXASC032FBXASC0352.msg" ":defaultTextureList1.tx" -na;
connectAttr "cloud1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of Snake_Model.ma

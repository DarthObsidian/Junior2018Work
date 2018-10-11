//Maya ASCII 2018 scene
//Name: IKSpline.ma
//Last modified: Thu, Oct 11, 2018 01:05:07 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "49D77FFB-4ADE-071A-D98C-C0AA46CE3A26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.5640696207331359 20.226086154121365 53.612996432020054 ;
	setAttr ".r" -type "double3" -18.338352729604015 5.799999999999498 -5.9942262170955132e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "35C2AAC4-4FF5-BD91-0653-9EA0980C095A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 58.447481589524358;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0 3.3306690738754696e-16 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "93353082-4319-ACC9-F3F0-B0A8B0B8F505";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.465703971119115 1000.1 -0.67582009409740729 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F572C1FC-49DB-45E4-B827-718B52974083";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.613718411552343;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "01E4ACB1-47DB-69D7-6273-849FC581E3EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7BA1BA42-44A6-228D-7B88-2DA70FEEDD7D";
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
	rename -uid "A7A70E01-479A-34D9-4EED-4B8EFA32BA38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "58ADEB56-458E-C1B1-D39D-3A911D0C53C4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "IK_Spline";
	rename -uid "EB695BB4-4341-5ACB-23D5-DEA458503B1D";
createNode transform -n "Geometry" -p "IK_Spline";
	rename -uid "9E2DDB17-4EA0-3673-D090-258B793F6A28";
createNode transform -n "Snake" -p "Geometry";
	rename -uid "10CC7458-42A5-B27A-3D58-47BB4F6DCA3E";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -1.9361441241127602e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.9361441241127602e-16 0 ;
createNode mesh -n "SnakeShape" -p "Snake";
	rename -uid "27FCB568-4F37-0746-6D5D-5D8BFECB09A5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "SnakeShape1Orig" -p "Snake";
	rename -uid "CED12D6C-4CA9-CE64-AFD1-7797F7CB05E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Skeleton" -p "IK_Spline";
	rename -uid "BEBA156C-45D2-16D0-C77A-FE96145EF5C4";
	setAttr ".v" no;
createNode transform -n "Control_Jnts" -p "Skeleton";
	rename -uid "4012C62D-4E3B-7E28-0A06-09BFE4C04561";
createNode joint -n "Curve_05_Ctrl_Jnt" -p "Control_Jnts";
	rename -uid "1BA1EBD7-4DC1-2ED8-9864-448FD33506DA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 22.418497085571289 0 0.00022249651374295354 1;
	setAttr ".radi" 0.78114997201395375;
createNode parentConstraint -n "Curve_05_Ctrl_Jnt_parentConstraint1" -p "Curve_05_Ctrl_Jnt";
	rename -uid "0B31C8AE-46A0-97D3-8BC9-7D9F6CC9FFBF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_05_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 0.00022249651374295354 ;
	setAttr ".rst" -type "double3" 22.418497085571289 0 0.00022249651374295354 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Curve_05_Ctrl_Jnt_scaleConstraint1" -p "Curve_05_Ctrl_Jnt";
	rename -uid "1039D62D-4E13-2752-288A-808D615B284B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_05_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode joint -n "Curve_04_Ctrl_Jnt" -p "Control_Jnts";
	rename -uid "C4564821-4A8B-D3F9-3FAF-ACADE9BB69FF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.953496932983398 0 0.00022249651374295354 1;
	setAttr ".radi" 0.78114997201395375;
createNode parentConstraint -n "Curve_04_Ctrl_Jnt_parentConstraint1" -p "Curve_04_Ctrl_Jnt";
	rename -uid "6BAD1565-4EB6-CD73-44C4-32A210029782";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 0.00022249651374295354 ;
	setAttr ".rst" -type "double3" 11.953496932983398 0 0.00022249651374295354 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Curve_04_Ctrl_Jnt_scaleConstraint1" -p "Curve_04_Ctrl_Jnt";
	rename -uid "B0665242-4DAC-16CD-9623-538BA3A53769";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_04_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode joint -n "Curve_03_Ctrl_Jnt" -p "Control_Jnts";
	rename -uid "F3797CA5-4B15-ED72-6669-D29205A234D6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.72228393225125653;
createNode parentConstraint -n "Curve_03_Ctrl_Jnt_parentConstraint1" -p "Curve_03_Ctrl_Jnt";
	rename -uid "572FAD08-4912-5E88-5762-5494B3B5F79C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_03_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode scaleConstraint -n "Curve_03_Ctrl_Jnt_scaleConstraint1" -p "Curve_03_Ctrl_Jnt";
	rename -uid "14DD2EE4-45D2-407F-A559-269F629176FC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_03_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode joint -n "Curve_02_Ctrl_Jnt" -p "Control_Jnts";
	rename -uid "47BCE8C3-4371-D0F6-F2EC-E6B151B3AC32";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.966503143310547 0 0.00022249651374295354 1;
	setAttr ".radi" 0.77306185925468374;
createNode parentConstraint -n "Curve_02_Ctrl_Jnt_parentConstraint1" -p "Curve_02_Ctrl_Jnt";
	rename -uid "0F155C24-47DB-100D-3155-32B74832308D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 0.00022249651374295354 ;
	setAttr ".rst" -type "double3" -11.966503143310547 0 0.00022249651374295354 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Curve_02_Ctrl_Jnt_scaleConstraint1" -p "Curve_02_Ctrl_Jnt";
	rename -uid "0D2676F7-4181-3CBB-3B27-47966E5FE906";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_02_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode joint -n "Curve_01_Ctrl_Jnt" -p "Control_Jnts";
	rename -uid "12D90CF0-432A-22A1-1ACA-F3AA4CA0FC90";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -22.431503295898438 0 0 1;
	setAttr ".radi" 0.87704037626548004;
createNode parentConstraint -n "Curve_01_Ctrl_Jnt_parentConstraint1" -p "Curve_01_Ctrl_Jnt";
	rename -uid "E2279378-499E-B9AC-EDE7-A5BB60B3AA89";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -22.431503295898438 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Curve_01_Ctrl_Jnt_scaleConstraint1" -p "Curve_01_Ctrl_Jnt";
	rename -uid "474701D9-4B28-9801-A2C2-5EAA3DB51FBF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_01_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode joint -n "Snake_Bind_01_Jnt" -p "Skeleton";
	rename -uid "F4F75FFF-4D9E-3422-724F-05BD72B5BD4B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_02_Jnt" -p "Snake_Bind_01_Jnt";
	rename -uid "02FF237A-46FF-64D6-664D-ACA2008876F9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.4950000047683716 0 0.00022249651633988315 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_03_Jnt" -p "Snake_Bind_02_Jnt";
	rename -uid "111D9246-49EF-AF41-59F7-C5A2DD749462";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_04_Jnt" -p "Snake_Bind_03_Jnt";
	rename -uid "4E5DAC50-4C8F-496C-CD28-A9A8EF2041B5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.4950000047683716 0 1.1657341758564144e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_05_Jnt" -p "Snake_Bind_04_Jnt";
	rename -uid "6BC807DF-4D7A-CC25-8DCA-2597F63F1F2F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4950000047683716 0 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_06_Jnt" -p "Snake_Bind_05_Jnt";
	rename -uid "220D01F2-43E1-EFC9-AD66-C6BA95A3A58D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.4950000047683716 0 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_07_Jnt" -p "Snake_Bind_06_Jnt";
	rename -uid "43A999AD-4EF3-AB2B-9637-D7A7C29AE823";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.4950000047683716 0 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_08_Jnt" -p "Snake_Bind_07_Jnt";
	rename -uid "F6B1E3F0-44A4-C753-AE2B-8FAED2AD9A5A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_09_Jnt" -p "Snake_Bind_08_Jnt";
	rename -uid "B965C19A-47A0-5001-8284-B08A95A11F5F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.4950000047683716 0 1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_10_Jnt" -p "Snake_Bind_09_Jnt";
	rename -uid "018B2A19-4CB6-E197-38D7-3C9EC30A4607";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.4950000047683716 0 3.219646771412954e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_11_Jnt" -p "Snake_Bind_10_Jnt";
	rename -uid "A5E479C7-4E87-A730-233D-F3AE8912104A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_12_Jnt" -p "Snake_Bind_11_Jnt";
	rename -uid "64000521-422B-011D-732E-07B6D8F21B0E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_13_Jnt" -p "Snake_Bind_12_Jnt";
	rename -uid "E6DB6E61-4891-0F44-A89A-9EAD27BB9F6D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4950000047683716 0 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_14_Jnt" -p "Snake_Bind_13_Jnt";
	rename -uid "9BB6A978-4B9F-9E48-235E-55B73F76B1E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_15_Jnt" -p "Snake_Bind_14_Jnt";
	rename -uid "2B598A16-4E91-6032-FA73-5F9C533E1D38";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -1.9984014443252818e-15 ;
	setAttr ".r" -type "double3" 0 0.0085268112093319914 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_16_Jnt" -p "Snake_Bind_15_Jnt";
	rename -uid "02A8EF79-4DD6-3FBB-3BAE-74A7BFF9DC0C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 0 -0.017053622188044262 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_17_Jnt" -p "Snake_Bind_16_Jnt";
	rename -uid "8CE2E56C-435B-F329-E216-EF9C8418DF76";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.4950000047683716 0 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 0 0.0085268109528717148 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_18_Jnt" -p "Snake_Bind_17_Jnt";
	rename -uid "02811787-4EA5-684C-91F0-679EB06B5CE6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -1.1102230246251565e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_19_Jnt" -p "Snake_Bind_18_Jnt";
	rename -uid "040E0AD6-4C7F-B895-3677-97A27FEC5F99";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_20_Jnt" -p "Snake_Bind_19_Jnt";
	rename -uid "5E8CB43C-4820-0CFD-AD5F-4B921FC8A781";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.4950000047683716 0 1.1102230246251565e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_21_Jnt" -p "Snake_Bind_20_Jnt";
	rename -uid "95A0F58D-4A33-C46E-5FD4-4CA4428E63D5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4950000047683716 0 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_22_Jnt" -p "Snake_Bind_21_Jnt";
	rename -uid "AA9EF350-45AA-4BFA-3983-0E81C14256C4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_23_Jnt" -p "Snake_Bind_22_Jnt";
	rename -uid "D6FCB9A2-4BC3-8167-2115-1796CF364C25";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.4950000047683716 0 6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_24_Jnt" -p "Snake_Bind_23_Jnt";
	rename -uid "828628FA-452D-F5E3-FF8F-D0859A4DEF04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_25_Jnt" -p "Snake_Bind_24_Jnt";
	rename -uid "B068B549-430E-11EF-C723-74A4893FF5BA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -1.4432899320127035e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_26_Jnt" -p "Snake_Bind_25_Jnt";
	rename -uid "44004E6B-48D5-EDFF-A349-A4815B0D5029";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.4950000047683716 0 1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_27_Jnt" -p "Snake_Bind_26_Jnt";
	rename -uid "28758B42-459E-F12A-F594-8DB9594FE1FC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -2.1718737919229625e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_28_Jnt" -p "Snake_Bind_27_Jnt";
	rename -uid "970E3EEE-4A8A-09EA-8E4D-17870A80E9EE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -2.1094237467877974e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_29_Jnt" -p "Snake_Bind_28_Jnt";
	rename -uid "E02535C5-44F4-414A-23A8-11A9B7FF4336";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -5.5511151231257827e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_30_Jnt" -p "Snake_Bind_29_Jnt";
	rename -uid "2A8FD3EB-42B8-8245-C819-66A597EA47DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "Snake_Bind_31_Jnt" -p "Snake_Bind_30_Jnt";
	rename -uid "9747AFBD-415A-D331-7A9B-FCB97A8B03CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.4950000047683716 0 -3.8857805861880479e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector1" -p "Snake_Bind_30_Jnt";
	rename -uid "314EAC5B-452A-07ED-F989-AE9E693E9BF6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Deformers" -p "IK_Spline";
	rename -uid "B6A91D6E-4082-2912-0646-709A603C92E7";
createNode transform -n "IK_Spline_Curve" -p "Deformers";
	rename -uid "072057E6-46B0-E8F9-0458-95971DDD0E3A";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "IK_Spline_CurveShape" -p "IK_Spline_Curve";
	rename -uid "96DEB4CE-469B-B9BA-6DC9-F9937F2C1E37";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "IK_Spline_CurveShape1Orig" -p "IK_Spline_Curve";
	rename -uid "3544C38B-4E2D-D6F6-8952-C6898F023805";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 30 0 no 3
		35 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 30 30 30
		33
		-22.431503295901042 0 0
		-21.933169452170301 0 9.4038090415870561e-05
		-20.936501764708659 0 0.00028211427124761018
		-19.441504406640018 0 0.00020652199668426413
		-17.946501788694281 0 0.00022677682349923377
		-16.451504586618096 0 0.00022134979087986591
		-14.956502423409125 0 0.00022280309463377671
		-13.461503243501095 0 0.00022241691232990652
		-11.966502812319968 0 0.00022250833788389624
		-10.471504401689721 0 0.00022252881806425777
		-8.9764991588855523 0 0.00022235547188125175
		-7.4815192229853098 0 0.00022302837652536818
		-5.9864448904027361 0 0.00022051010422432442
		-4.4917199754140125 0 0.00022991028887644842
		-2.9956946470164199 0 0.00019482782265610631
		-1.5045215563702106 0 0.00032575750294557454
		0.0047607823940824514 0 -0.00016287875198068137
		1.4854784267938805 0 0.00032575750497715344
		2.9843054775476823 0 0.00019482781452978442
		4.4782796703307168 0 0.00022991031936142752
		5.9735552167947397 0 0.00022050999031557385
		7.4684810328125222 0 0.00022302880089711811
		8.9635015261663344 0 0.00022235388765450906
		10.458495898031705 0 0.00022253473013227043
		11.95349721843937 0 0.00022248627355604762
		13.448496867390963 0 0.00022249925747560643
		14.943496254865758 0 0.00022249577846603631
		16.438498360946117 0 0.00022249671067720147
		17.93349557736915 0 0.00022249646093455347
		19.428498190966671 0 0.0002224965277864163
		20.923495550860174 0 0.00022249651021395407
		21.920163240667577 0 0.00022249651256662037
		22.418497085571286 0 0.00022249651374295348
		;
createNode ikHandle -n "IK_Spine_Handle" -p "Deformers";
	rename -uid "6D2273E4-488F-AD36-4E94-929C7B2DD59B";
	setAttr ".t" -type "double3" 22.41849681403934 0 0.00022249651976182489 ;
	setAttr ".r" -type "double3" 0 -2.5840557833024957e-11 0 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode transform -n "Controls" -p "IK_Spline";
	rename -uid "0B792B58-4995-4105-1682-45AB2C8A2481";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "4AA9FE7E-4210-AF41-3DAC-41A00D887747";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "FF0C7181-4C36-2C82-7B75-44BD29A07075";
	addAttr -ci true -sn "Stretch" -ln "Stretch" -min 0 -max 1 -at "double";
	setAttr -k on ".Stretch";
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "DD9CA324-4098-BD70-47CD-E98B1EF644CC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Spline_01_Ctrl_Grp" -p "Controls";
	rename -uid "98E1B610-44A9-971D-448A-E2A35FD18C51";
createNode transform -n "Spline_01_Ctrl" -p "Spline_01_Ctrl_Grp";
	rename -uid "7E6ECCCC-443C-E341-6815-0EBCECF01089";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -nn "FollowTranslate" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spline_01_CtrlShape" -p "Spline_01_Ctrl";
	rename -uid "691282B1-46E0-0944-ADEE-C2AD486B0DD1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode parentConstraint -n "Spline_01_Ctrl_Grp_parentConstraint1" -p "Spline_01_Ctrl_Grp";
	rename -uid "9D5CA159-464B-BDEA-99C2-42A70BB4B8DB";
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
	setAttr ".tg[0].tot" -type "double3" -22.431503295898438 0 0 ;
	setAttr ".rst" -type "double3" -22.431503295898438 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spline_01_Ctrl_Grp_parentConstraint2" -p "Spline_01_Ctrl_Grp";
	rename -uid "1BA9F509-440E-B4B3-15E1-13A68712BA43";
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
	setAttr ".tg[0].tot" -type "double3" -22.431503295898438 0 0 ;
	setAttr ".rst" -type "double3" -22.431503295898438 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Spline_02_Ctrl_Grp" -p "Controls";
	rename -uid "7D1DD83F-4AB4-A187-9A1E-CDBF5F18EB6C";
createNode transform -n "Spline_02_Ctrl" -p "Spline_02_Ctrl_Grp";
	rename -uid "DEEFA133-409C-CD55-3C29-268397D84060";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spline_02_CtrlShape" -p "Spline_02_Ctrl";
	rename -uid "8C183BDF-4B7C-7968-ADF0-4DBAF7DD5803";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.2197910707351852e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		;
createNode parentConstraint -n "Spline_02_Ctrl_Grp_parentConstraint1" -p "Spline_02_Ctrl_Grp";
	rename -uid "74E9C7F4-4766-F47E-BDA4-E5967D67FFD9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 10.465000152587891 0 0 ;
	setAttr ".rst" -type "double3" -11.966503143310547 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spline_02_Ctrl_Grp_parentConstraint2" -p "Spline_02_Ctrl_Grp";
	rename -uid "A3FA3C31-4A0F-EC64-26A6-BCAF427DFEF9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 10.465000152587891 0 0 ;
	setAttr ".rst" -type "double3" -11.966503143310547 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Spline_03_Ctrl_Grp" -p "Controls";
	rename -uid "5B636821-4C44-BC65-7F9E-3BA62902DB21";
createNode transform -n "Spline_03_Ctrl" -p "Spline_03_Ctrl_Grp";
	rename -uid "46089592-4739-4F84-98EC-5696E004D18E";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spline_03_CtrlShape" -p "Spline_03_Ctrl";
	rename -uid "60D29EE1-4BAC-1114-12C4-6CAAC3157749";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.2197910707351852e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		;
createNode parentConstraint -n "Spline_03_Ctrl_Grp_parentConstraint1" -p "Spline_03_Ctrl_Grp";
	rename -uid "819C653D-48DA-740E-7E69-3DB8938DF0FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 11.966503143310547 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spline_03_Ctrl_Grp_parentConstraint2" -p "Spline_03_Ctrl_Grp";
	rename -uid "ADB76E12-4B67-6EDB-4195-06BD3CDC14D5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 11.966503143310547 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Spline_04_Ctrl_Grp" -p "Controls";
	rename -uid "DC04A9C3-4E49-8292-C4D2-4396909503C7";
createNode transform -n "Spline_04_Ctrl" -p "Spline_04_Ctrl_Grp";
	rename -uid "942531BA-46CA-F17D-2B91-5FB6E07DA994";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spline_04_CtrlShape" -p "Spline_04_Ctrl";
	rename -uid "808AEE8A-420A-796A-3420-53912DB41E67";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.2197910707351852e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		;
createNode parentConstraint -n "Spline_04_Ctrl_Grp_parentConstraint1" -p "Spline_04_Ctrl_Grp";
	rename -uid "46B52266-4A36-FC12-BA21-62A1850EC245";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 11.953496932983398 0 0 ;
	setAttr ".rst" -type "double3" 11.953496932983398 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spline_04_Ctrl_Grp_parentConstraint2" -p "Spline_04_Ctrl_Grp";
	rename -uid "CFC71FE2-4265-FD5A-F8E2-1D84A034204C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 11.953496932983398 0 0 ;
	setAttr ".rst" -type "double3" 11.953496932983398 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Spline_05_Ctrl_Grp" -p "Controls";
	rename -uid "925D0908-4F75-A607-8C31-17AF54929F7C";
createNode transform -n "Spline_05_Ctrl" -p "Spline_05_Ctrl_Grp";
	rename -uid "4FF70962-42DA-582F-4423-4DBC97830E91";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spline_05_CtrlShape" -p "Spline_05_Ctrl";
	rename -uid "D016229E-4CBA-6E29-C8FE-2F881371C866";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.2197910707351852e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.2197910707351852e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		;
createNode parentConstraint -n "Spline_05_Ctrl_Grp_parentConstraint1" -p "Spline_05_Ctrl_Grp";
	rename -uid "CC58C8EB-47D9-28CD-73C8-F6AE9BAE8728";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 10.465000152587891 0 0 ;
	setAttr ".rst" -type "double3" 22.418497085571289 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spline_05_Ctrl_Grp_parentConstraint2" -p "Spline_05_Ctrl_Grp";
	rename -uid "B33778E5-4E4D-77A7-64E5-E2A0633B34A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spline_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 10.465000152587891 0 0 ;
	setAttr ".rst" -type "double3" 22.418497085571289 0 0 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "851A1F86-4E88-387A-AE2D-F087853678E0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "91A9689C-4D97-7DE7-C719-9BB3E1B69AEA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "509688BE-4E3B-FA0B-BBDC-8F8410D221F2";
createNode displayLayerManager -n "layerManager";
	rename -uid "32ACB8E3-4818-9558-C98C-F097C8B5E4B6";
createNode displayLayer -n "defaultLayer";
	rename -uid "66BE7451-4B6E-B422-7FCA-4C9226FDEB1B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "14E28541-4C6D-E8E6-A81A-AF9D2A93E320";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "78A01970-4DA8-B850-C3D5-E2A6BB30D562";
	setAttr ".g" yes;
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "81AF287D-4A41-E3A6-41E6-F3B008001AC0";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "311226E8-40C7-A55F-50E9-25ACA2FF5847";
	setAttr ".sa" 16;
	setAttr ".sh" 30;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "3EADC182-48F0-700A-8720-A1811C390B4D";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 1 0 0 -22.431502854724105 4.9807941892519258e-15 0 0
		 0 0 1 0 0 -1.9361441241127602e-16 0 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C7A4561F-4621-DC8C-4767-59832DDB3939";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 955\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 955\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 955\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "48499B0B-4E6A-9692-CADC-73A3224F526A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "28957DBD-4AB1-B75B-8C2D-1C9BEF0B8958";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "5EBCAD83-4AC6-6652-835D-6C84BD9F224B";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 -1 0 0 1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 0 0 1;
createNode skinCluster -n "skinCluster1";
	rename -uid "FBC5DC86-4009-EAB8-4A26-40AFF134933F";
	setAttr -s 33 ".wl";
	setAttr ".wl[0:32].w"
		1 0 1
		2 0 0.98894326034406765 1 0.011056739655932252
		2 0 0.93629320252352288 1 0.063706797476477062
		2 0 0.79809605654684757 1 0.20190394345315246
		2 0 0.60623711210885134 1 0.39376288789114866
		2 0 0.39376287826088563 1 0.60623712173911437
		2 0 0.20190398700286516 1 0.79809601299713484
		2 0 0.063706695942295069 1 0.93629330405770494
		1 1 1
		2 1 0.94881651460959759 2 0.051183485390402392
		2 1 0.83875623814373779 2 0.16124376185626224
		2 1 0.68299098519163814 2 0.31700901480836191
		2 1 0.50040028239991063 2 0.49959971760008937
		2 1 0.31778948419786601 2 0.68221051580213399
		2 1 0.16175880757207736 2 0.83824119242792261
		2 1 0.051714894081640206 2 0.94828510591835979
		2 2 0.99999204001743303 3 7.9599825669908825e-06
		2 2 0.94925583706063832 3 0.050744162939361674
		2 2 0.8389778973936054 3 0.16102210260639455
		2 2 0.68320310281043262 3 0.31679689718956744
		2 2 0.5004007087590111 3 0.49959929124098884
		2 2 0.31757808311770763 3 0.68242191688229248
		2 2 0.16153735116091603 3 0.83846264883908395
		2 2 0.051274223774689841 3 0.94872577622531018
		1 3 1
		2 3 0.93629331560554041 4 0.063706684394459534
		2 3 0.79809600816091208 4 0.20190399183908797
		2 3 0.60623712363773619 4 0.39376287636226376
		2 3 0.39376288757294237 4 0.60623711242705758
		2 3 0.20190394348218746 4 0.79809605651781257
		2 3 0.063706796131284493 4 0.93629320386871551
		2 3 0.011056739405891674 4 0.98894326059410831
		1 4 1;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 22.431503295898438 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.966503143310547 0 -0.00022249651374295354 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.953496932983398 0 -0.00022249651374295354 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -22.418497085571289 0 -0.00022249651374295354 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  1.5 1.5 1.5 1.5 1.5;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "DB7ED2D4-47BB-CA14-5C7A-46B74C34998D";
createNode objectSet -n "skinCluster1Set";
	rename -uid "7CAE1210-45D4-6B1B-0DE8-19BF64AF0741";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "D9165399-476A-26D0-FC51-779428AC55CF";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "FC888229-4E21-2135-D9B7-319CFDF07EE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "CDCFE5BC-4FAD-9CEB-0609-25B502F24769";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "3B380715-41CD-A658-449D-64AF0D84AC65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "A7820E38-4694-2B78-079D-E9934D1319FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode dagPose -n "bindPose1";
	rename -uid "671CD07F-44F2-1CF9-105E-BF802405F073";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -22.431503295898438 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.966503143310547 0
		 0.00022249651374295354 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.953496932983398 0 0.00022249651374295354 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.418497085571289 0 0.00022249651374295354 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes no no no no no;
	setAttr ".bp" yes;
createNode curveInfo -n "IK_Spline_CI";
	rename -uid "1CB1B4D5-4BED-6273-CDE2-D8B38445ABB0";
createNode multiplyDivide -n "IK_Spline_Scalar_MD";
	rename -uid "9053B5E5-4441-EF6A-FED0-7CA76F8DBF3B";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 44.850002 1 1 ;
createNode condition -n "IK_Spline_COND";
	rename -uid "03D8FEC7-4793-F90B-806C-A4B23A85A773";
	setAttr ".op" 2;
	setAttr ".st" 44.850002288818359;
createNode blendColors -n "IK_Spline_BC";
	rename -uid "91FF02A8-4980-6144-AC08-C8804E291ED3";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "4C2A98A7-4E9B-CCB9-5A81-99BCFDB5DE90";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "05CAA831-4626-F0E0-C363-B1AF2425138F";
	setAttr ".txf" -type "matrix" 24.06870569294054 0 0 0 0 24.06870569294054 0 0 0 0 24.06870569294054 0
		 0 0 0 1;
createNode multiplyDivide -n "IK_Spline_Stretch_MD";
	rename -uid "F8CC8C2F-4C1C-C33D-3739-4B91557A1AE1";
	setAttr ".i1" -type "float3" 1.495 0 0 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "1BA3217D-4D24-555C-EE14-73B23FEB90D4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -235.97173245540776 -363.79750241371153 ;
	setAttr ".tgi[0].vh" -type "double2" 887.33262453084308 293.53555730490308 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 418.58718872070313;
	setAttr ".tgi[0].ni[0].y" 11.069170951843262;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -33.995681762695313;
	setAttr ".tgi[0].ni[1].y" 47.639797210693359;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 199.59382629394531;
	setAttr ".tgi[0].ni[2].y" -97.540397644042969;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 201.75926208496094;
	setAttr ".tgi[0].ni[3].y" 98.752105712890625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 672.74969482421875;
	setAttr ".tgi[0].ni[4].y" 8.2845468521118164;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -238.67561340332031;
	setAttr ".tgi[0].ni[5].y" -22.621658325195313;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -451.93276977539063;
	setAttr ".tgi[0].ni[6].y" -19.747905731201172;
	setAttr ".tgi[0].ni[6].nvs" 18304;
createNode skinCluster -n "skinCluster2";
	rename -uid "B4C58538-49C3-F8E7-ABFE-668B5B10282C";
	setAttr -s 498 ".wl";
	setAttr ".wl[0:166].w"
		3 28 0.17044735021500285 29 0.41477632489249855 30 0.41477632489249855
		3 28 0.17045797132876753 29 0.41477101433561619 30 0.41477101433561619
		3 28 0.17046507076758538 29 0.41476746461620739 30 0.41476746461620728
		3 28 0.17046756496240786 29 0.41476621751879605 30 0.41476621751879605
		3 28 0.17046507548051609 29 0.41476746225974193 30 0.41476746225974193
		3 28 0.17045797755722861 29 0.41477101122138571 30 0.41477101122138571
		3 28 0.17044735197301875 29 0.41477632401349063 30 0.41477632401349063
		3 28 0.17043481395132085 29 0.41478259302433956 30 0.41478259302433956
		3 28 0.17042226882750539 29 0.41478886558624734 30 0.41478886558624734
		3 28 0.17041163828345568 29 0.41479418085827219 30 0.41479418085827219
		3 28 0.17040453313390827 29 0.41479773343304588 30 0.41479773343304588
		3 28 0.17040204011400539 29 0.4147989799429973 30 0.4147989799429973
		3 28 0.1704045325534303 29 0.41479773372328488 30 0.41479773372328488
		3 28 0.17041163827563685 29 0.41479418086218156 30 0.41479418086218156
		3 28 0.17042227107304506 29 0.41478886446347751 30 0.41478886446347751
		3 28 0.17043481393959312 29 0.41478259303020343 30 0.41478259303020343
		3 28 0.41349589914031326 29 0.41354491149903283 30 0.17295918936065391
		3 28 0.41349058633335312 29 0.41353959099354359 30 0.17296982267310332
		3 28 0.41348703511538148 29 0.41353603463035932 30 0.17297693025425923
		3 28 0.41348578749252751 29 0.41353478520000658 30 0.17297942730746599
		3 28 0.4134870327579227 29 0.41353603226948527 30 0.17297693497259203
		3 28 0.41349058321780596 29 0.41353958787348216 30 0.17296982890871188
		3 28 0.41349589826093203 29 0.41354491061837728 30 0.17295919112069069
		3 28 0.41350216994053118 29 0.41355119138754004 30 0.17294663867192875
		3 28 0.41350844518633134 29 0.41355747572978419 30 0.17293407908388453
		3 28 0.41351376274331664 29 0.41356280099631143 30 0.17292343626037193
		3 28 0.41351731685075022 29 0.41356636025727467 30 0.17291632289197517
		3 28 0.41351856389951019 29 0.41356760911441159 30 0.1729138269860783
		3 28 0.41351731714111456 29 0.41356636054806029 30 0.17291632231082527
		3 28 0.41351376274722762 29 0.41356280100022835 30 0.17292343625254408
		3 28 0.41350844406307979 29 0.41355747460490433 30 0.17293408133201582
		3 28 0.41350216994639755 29 0.41355119139341495 30 0.1729466386601875
		3 27 0.41351941880841808 28 0.41356510997129237 29 0.17291547122028955
		3 27 0.41351410578910908 28 0.4135597897751262 29 0.17292610443576467
		3 27 0.41351055442912288 28 0.41355623361858007 29 0.17293321195229708
		3 27 0.41350930675636166 28 0.41355498426080084 29 0.17293570898283753
		3 27 0.41351055207156984 28 0.41355623125784308 29 0.17293321667058711
		3 27 0.41351410267343736 28 0.41355978665524606 29 0.17292611067131655
		3 27 0.41351941792900182 28 0.413565109090688 29 0.17291547298031024
		3 27 0.41352568985910199 28 0.41357138949441979 29 0.1729029206464783
		3 27 0.41353196535535791 28 0.41357767347072122 29 0.17289036117392098
		3 27 0.41353728312442878 28 0.41358299842691587 29 0.17287971844865535
		3 27 0.41354083737353936 28 0.41358655748033968 29 0.17287260514612091
		3 27 0.41354208447199609 28 0.41358780626463304 29 0.17287010926337096
		3 27 0.41354083766391531 28 0.41358655777110825 29 0.17287260456497647
		3 27 0.41353728312834004 28 0.4135829984308324 29 0.17287971844082758
		3 27 0.41353196423206151 28 0.41357767234590687 29 0.17289036342203162
		3 27 0.41352568986496868 28 0.41357138950029404 29 0.17290292063473717
		3 26 0.41354276058438644 27 0.41358526070314588 28 0.17287197871246768
		3 26 0.41353744736440623 27 0.41357994080753818 28 0.17288261182805562
		3 26 0.41353389587021044 27 0.41357638485177312 28 0.17288971927801641
		3 26 0.41353264815028418 27 0.41357513556450975 28 0.17289221628520604
		3 26 0.41353389351256831 27 0.41357638249116929 28 0.17288972399626235
		3 26 0.41353744424861671 27 0.41357993768783424 28 0.17288261806354896
		3 26 0.41354275970493687 27 0.41358525982259142 28 0.17287198047247179
		3 26 0.4135490318717519 27 0.41359153987124153 28 0.17285942825700662
		3 26 0.41355530760466808 27 0.41359782349195923 28 0.17284686890337267
		3 26 0.41356062557413398 27 0.41360314814660171 28 0.17283622627926432
		3 26 0.41356417995710715 27 0.41360670699835639 28 0.17282911304453652
		3 26 0.41356542710251865 27 0.41360795571186598 28 0.17282661718561548
		3 26 0.41356418024749403 27 0.41360670728910831 28 0.17282911246339761
		3 26 0.41356062557804524 27 0.41360314815051819 28 0.1728362262714366
		3 26 0.41355530648132954 27 0.4135978223672086 28 0.17284687115146199
		3 26 0.41354903187761871 27 0.41359153987711572 28 0.17285942824526557
		3 25 0.41356613062895964 26 0.41360554169298264 27 0.17282832767805784
		3 25 0.41356081721821325 26 0.41360022209181985 27 0.17283896068996693
		3 25 0.41355726559642786 26 0.4135966663327495 27 0.1728460680708227
		3 25 0.41355601783166174 26 0.41359541711456671 27 0.17284856505377155
		3 25 0.41355726323870096 26 0.41359666397227629 27 0.17284607278902284
		3 25 0.41356081410231177 26 0.4136002189722886 27 0.17283896692539966
		3 25 0.41356612974947848 26 0.41360554081247675 27 0.17282832943804477
		3 25 0.41357240214131252 26 0.4136118205132634 27 0.17281577734542411
		3 25 0.41357867809918403 26 0.41361810378561992 27 0.17280321811519608
		3 25 0.41358399625912368 26 0.41362342814483138 27 0.17279257559604499
		3 25 0.41358755076932763 26 0.41362698679900778 27 0.17278546243166459
		3 25 0.41358879795936654 26 0.4136282354431694 27 0.17278296659746406
		3 25 0.41358755105972494 26 0.41362698708974366 27 0.17278546185053142
		3 25 0.41358399626303521 26 0.41362342814874736 27 0.17279257558821737
		3 25 0.41357867697580514 26 0.41361810266093152 27 0.17280322036326329
		3 25 0.4135724021471795 26 0.41361182051913725 27 0.1728157773336832
		3 24 0.41358942569019852 25 0.41362586405931029 26 0.17278471025049122
		3 24 0.41358411209950185 25 0.41362054474513138 26 0.17279534315536682
		3 24 0.4135805603573553 25 0.41361698917776962 26 0.17280245046487513
		3 24 0.41357931255028896 25 0.4136157400269157 26 0.17280494742279531
		3 24 0.41358055799954846 25 0.41361698681742365 26 0.17280245518302798
		3 24 0.41358410898349485 25 0.41362054162576822 26 0.17279534939073693
		3 24 0.41358942481068767 25 0.41362586317885186 26 0.17278471201046047
		3 24 0.41359569741477148 25 0.41363214254058389 26 0.17277216004464452
		3 24 0.4136019735848197 25 0.41363842547339569 26 0.17275960094178475
		3 24 0.4136072919244031 25 0.41364374954464839 26 0.17274895853094846
		3 24 0.4136108465545984 25 0.41364730800624194 26 0.17274184543915955
		3 24 0.41361209378672453 25 0.41364855658280841 26 0.17273934963046694
		3 24 0.41361084684500543 25 0.41364730829696228 26 0.17274184485803232
		3 24 0.41360729192831475 25 0.41364374954856437 26 0.17274895852312097
		3 24 0.41360197246140273 25 0.41363842434876819 26 0.17275960318982905
		3 24 0.41359569742063873 25 0.41363214254645753 26 0.17277216003290372
		3 23 0.41361264576372797 24 0.41364622781993188 25 0.1727411264163401
		3 23 0.4136073320038966 24 0.41364090878527282 25 0.17275175921083064
		3 23 0.41360378014861782 24 0.41363735340463109 25 0.17275886644675115
		3 23 0.41360253230179067 24 0.4136361043193536 25 0.17276136337885573
		3 23 0.41360377779073576 24 0.41363735104440902 25 0.17275887116485522
		3 23 0.41360732888779045 24 0.41364090566607359 25 0.17275176544613605
		3 23 0.41361264488418914 24 0.41364622693951997 25 0.172741128176291
		3 23 0.41361891768775294 24 0.41365250597101094 25 0.17272857634123617
		3 23 0.41362519405719855 24 0.4136587885730984 25 0.17271601736970316
		3 23 0.41363051256559552 24 0.4136641123638683 25 0.17270537507053624
		3 23 0.41363406730854252 24 0.41366767063787674 25 0.17269826205358071
		3 23 0.4136353145802158 24 0.41366891914860154 25 0.17269576627118274
		3 23 0.41363406759895888 24 0.41366767092858159 25 0.17269826147245962
		3 23 0.41363051256950722 24 0.413664112367784 25 0.1727053750627088
		3 23 0.41362519293374606 24 0.41365878744852991 25 0.17271601961772401
		3 23 0.41361891769362041 24 0.41365250597688419 25 0.17272857632949545
		3 22 0.41363574004522852 23 0.41366658808829371 24 0.17269767186647783
		3 22 0.4136304261274143 23 0.41366126932509645 24 0.17270830454748923
		3 22 0.41362687416645683 23 0.41365771412578972 24 0.17271541170775351
		3 22 0.41362562628248734 23 0.4136564651041969 24 0.17271790861331562
		3 22 0.41362687180850471 23 0.413657711765688 24 0.1727154164258074
		3 22 0.41363042301121528 23 0.41366126620605642 24 0.17270831078272833
		3 22 0.41363573916566343 23 0.41366658720792671 24 0.17269767362640992
		3 22 0.41364201215554114 23 0.4136728659186914 24 0.17268512192576752
		3 22 0.41364828871120912 23 0.41367914819957713 24 0.17267256308921372
		3 22 0.41365360737725376 23 0.41368447171793604 24 0.17266192090481011
		3 22 0.41365716222548915 23 0.41368802980975516 24 0.17265480796475557
		3 22 0.41365840953409033 23 0.41368927825653218 24 0.17265231220937752
		3 22 0.41365716251591411 23 0.41368803010044514 24 0.17265480738364078
		3 22 0.41365360738116563 23 0.41368447172185147 24 0.17266192089698279
		3 22 0.41364828758772326 23 0.41367914707506642 24 0.17267256533721034
		3 22 0.41364201216140856 23 0.41367286592456454 24 0.17268512191402696
		3 21 0.41365881029545937 22 0.41368703459954764 23 0.17265415510499302
		3 21 0.41365349623011849 22 0.41368171610094701 23 0.17266478766893456
		3 21 0.41364994417047046 22 0.4136781610783869 23 0.17267189475114272
		3 21 0.4136486962518135 22 0.4136769121188672 23 0.17267439162931933
		3 21 0.41364994181245279 22 0.41367815871840241 23 0.1726718994691448
		3 21 0.41365349311383304 22 0.4136817129820618 23 0.17266479390410511
		3 21 0.41365880941586997 22 0.41368703371922422 23 0.17265415686490576
		3 21 0.41366508257971596 22 0.41369331211736837 23 0.1726416053029157
		3 21 0.4136713593092517 22 0.41369959408516388 23 0.17262904660558437
		3 21 0.413676678122473 22 0.41370491733798626 23 0.17261840453954072
		3 21 0.41368023306899693 22 0.4137084752522116 23 0.17261129167879136
		3 21 0.41368148041207009 22 0.41370972363665293 23 0.17260879595127693
		3 21 0.41368023335942988 22 0.41370847554288709 23 0.17261129109768306
		3 21 0.41367667812638492 22 0.41370491734190162 23 0.17261840453171345
		3 21 0.41367135818573486 22 0.41369959296070918 23 0.17262904885355604
		3 21 0.41366508258558382 22 0.41369331212324084 23 0.17264160529117531
		3 20 0.41368180554541989 21 0.41370752255806614 22 0.172610671896514
		3 20 0.41367649134336837 21 0.41370220431658733 22 0.17262130434004438
		3 20 0.41367293919225856 21 0.4136986494657785 22 0.17262841134196297
		3 20 0.41367169124145375 21 0.41369740056657683 22 0.17263090819196944
		3 20 0.41367293683418022 21 0.41369864710590798 22 0.17262841605991186
		3 20 0.41367648822700254 21 0.41370220119785306 22 0.17262131057514438
		3 20 0.41368180466580778 21 0.41370752167778541 22 0.17261067365640678
		3 20 0.41368807799085228 21 0.41371379977213441 22 0.17259812223701329
		3 20 0.41369435488147616 21 0.41372008143567296 22 0.17258556368285088
		3 20 0.41369967383104322 21 0.41372540443044553 22 0.17257492173851124
		3 20 0.41370322886861627 21 0.41372896217208155 22 0.17256780895930218
		3 20 0.41370447624362094 21 0.4137302104959435 22 0.17256531326043556
		3 20 0.41370322915905661 21 0.41372896246274288 22 0.17256780837820049
		3 20 0.41369967383495532 21 0.41372540443436062 22 0.17257492173068406
		3 20 0.4136943537579304 21 0.41372008031127278 22 0.17258556593079688
		3 20 0.41368807799672019 21 0.41371379977800676 22 0.17259812222527299
		3 19 0.41370470063827919 20 0.41372802939261016 21 0.17256726996911065
		3 19 0.4136993863104656 20 0.41372271140050437 21 0.17257790228903006
		3 19 0.41369583407521171 20 0.41371915671626813 21 0.1725850092085201
		3 19 0.4136945860948299 20 0.41371790787556512 21 0.17258750602960488
		3 19 0.41369583171707741 20 0.41371915435650819 21 0.17258501392641437
		3 19 0.41369938319402616 20 0.41372270828191615 21 0.17257790852405777
		2 19 0.41370469975864638 20 0.41372802851237073;
	setAttr ".wl[166:333].w"
		1 21 0.17256727172898295
		3 19 0.41371097323196315 20 0.41373430631207414 21 0.17255472045596279
		3 19 0.41371725027073986 20 0.41374058768051258 21 0.17254216204874762
		3 19 0.41372256934569029 20 0.41374591042499648 21 0.17253152022931317
		3 19 0.41372612446698448 20 0.41374946799923168 21 0.17252440753378381
		3 19 0.41372737187134928 20 0.41375071626433507 21 0.17252191186431562
		3 19 0.4137261247574317 20 0.41374946828987935 21 0.17252440695268903
		3 19 0.41372256934960239 20 0.41374591042891151 21 0.1725315202214861
		3 19 0.41371724914716757 20 0.41374058655616502 21 0.17254216429666727
		3 19 0.41371097323783113 20 0.41373430631794622 21 0.1725547204442226
		3 18 0.41372752088776416 19 0.41374857761826089 20 0.17252390149397501
		3 18 0.41372220644498081 19 0.41374325986806271 20 0.17253453368695648
		3 18 0.41371865413279607 19 0.41373970534540999 20 0.17254164052179402
		3 18 0.41371740612537072 19 0.41373845656145353 20 0.1725441373131758
		3 18 0.4137186517746107 19 0.41373970298575719 20 0.17254164523963214
		3 18 0.41372220332847387 19 0.41374325674961632 20 0.17253453992190984
		3 18 0.41372752000811236 19 0.41374857673806148 20 0.17252390325382622
		3 18 0.41373379361695906 19 0.41375485425193409 20 0.17251135213110688
		3 18 0.41374007079113728 19 0.41376113533409414 20 0.17249879387476852
		3 18 0.41374538998066407 19 0.41376645783576671 20 0.17248815218356922
		3 18 0.41374894517845578 19 0.41377001524759915 20 0.17248103957394509
		3 18 0.41375019260964602 19 0.41377126345569776 20 0.17247854393465631
		3 18 0.41374894546890922 19 0.4137700155382335 20 0.17248103899285727
		3 18 0.41374538998457638 19 0.41376645783968141 20 0.17248815217574223
		3 18 0.41374006966754079 19 0.41376113420979804 20 0.17249879612266114
		3 18 0.41373379362282725 19 0.41375485425780589 20 0.17251135211936688
		3 17 0.41375026629006839 18 0.41376916725236396 19 0.17248056645756762
		3 17 0.41374495174310777 18 0.41376384973660468 19 0.17249119852028758
		3 17 0.41374139936120508 18 0.41376029537054387 19 0.17249830526825105
		3 17 0.41374015132927061 18 0.41375904664158009 19 0.1725008020291493
		3 17 0.41374139700297341 18 0.41376029301099498 19 0.17249830998603155
		3 17 0.41374494862653954 18 0.41376384661829596 19 0.17249120475516461
		3 17 0.41375026541039928 18 0.41376916637220335 19 0.17248056821739732
		3 17 0.41375653914203397 18 0.41377544360906376 19 0.17246801724890221
		3 17 0.41376281643886248 18 0.4137817244137712 19 0.17245545914736635
		3 17 0.41376813573215876 18 0.41378704668011268 19 0.17244481758772862
		3 17 0.4137716909992239 18 0.41379060393454292 19 0.17243770506623304
		3 17 0.4137729384547047 18 0.41379185208739161 19 0.17243520945790364
		3 17 0.41377169128968305 18 0.4137906042251645 19 0.17243770448515244
		3 17 0.41376813573607113 18 0.41378704668402722 19 0.17244481757990171
		3 17 0.41376281531524406 18 0.41378172328952484 19 0.17245546139523121
		3 17 0.41375653914790234 18 0.4137754436149354 19 0.17246801723716232
		3 16 0.41377294929435504 17 0.41378980967494355 18 0.17243724103070149
		3 16 0.41376763465396088 17 0.41378449238627379 18 0.17244787295976535
		3 16 0.41376408220952116 17 0.41378093817189282 18 0.17245497961858594
		3 16 0.41376283415560006 17 0.41377968949619631 18 0.17245747634820355
		3 16 0.41376407985124786 17 0.41378093581244491 18 0.17245498433630729
		3 16 0.41376763153733787 17 0.41378448926809802 18 0.17244787919456417
		3 16 0.41377294841467038 17 0.41378980879482063 18 0.17243724279050904
		3 16 0.41377922225640817 17 0.41379608576334642 18 0.1724246919802454
		3 16 0.41378549966319245 17 0.41380236629928568 18 0.17241213403752181
		3 16 0.41379081904949966 17 0.41380768833765669 18 0.17240149261284365
		3 16 0.41379437437864663 17 0.41381124543960551 18 0.17239438018174788
		3 16 0.41379562185589458 17 0.41381249353893063 18 0.17239188460517493
		3 16 0.4137943746691109 17 0.41381124573021449 18 0.17239437960067466
		3 16 0.41379081905341208 17 0.41380768834157111 18 0.17240149260501689
		3 16 0.41378549853955437 17 0.41380236517508728 18 0.17241213628535826
		3 16 0.41377922226227654 17 0.41379608576921773 18 0.17242469196850568
		3 15 0.41379556356755554 16 0.41381049927887992 17 0.17239393715356452
		3 15 0.41379024884451104 16 0.41380518220987494 17 0.17240456894561387
		3 15 0.4137866963447408 16 0.41380162814221261 17 0.17241167551304659
		3 15 0.41378544827136465 16 0.41380037951804033 17 0.17241417221059496
		3 15 0.4137866939864307 16 0.41380162578286184 17 0.17241168023070738
		3 15 0.41379024572783962 16 0.41380517909182801 17 0.17240457518033242
		3 15 0.41379556268785739 16 0.41381049839879336 17 0.17239393891334936
		3 15 0.41380183662696707 16 0.41381677510775083 17 0.17238138826528199
		3 15 0.41380811413096696 16 0.41382305538369529 17 0.17236883048533769
		3 15 0.41381343359948741 16 0.41382837720153159 17 0.17235818919898088
		3 15 0.41381698898349872 16 0.41383193415596958 17 0.17235107686053172
		3 15 0.41381823647998084 16 0.41383318220351573 17 0.17234858131650349
		3 15 0.41381698927396743 16 0.41383193444656635 17 0.17235107627946614
		3 15 0.41381343360339984 16 0.41382837720544596 17 0.1723581891911542
		3 15 0.41380811300731141 16 0.41382305425954363 17 0.17236883273314491
		3 15 0.41380183663283548 16 0.41381677511362208 17 0.17238138825354241
		3 14 0.41382730400518791 15 0.41384020527835852 16 0.17233249071645365
		3 14 0.41382978782254848 15 0.41384249666550044 16 0.17232771551195109
		3 14 0.4138314453045136 15 0.41384402637427109 16 0.17232452832121534
		3 14 0.41383202657745755 15 0.41384456293193533 16 0.17232341049060707
		3 14 0.41383144295525398 15 0.41384402402389153 16 0.17232453302085449
		3 14 0.41382978472207166 15 0.41384249356343444 16 0.17232772171449393
		3 14 0.41382730314682781 15 0.41384020441913616 16 0.17233249243403603
		3 14 0.41382437615137879 15 0.41383750626936028 16 0.1723381175792609
		3 14 0.41382145062574011 15 0.4138348116008328 16 0.1723437377734271
		3 14 0.41381896650138944 15 0.41383252476107202 16 0.17234850873753857
		3 14 0.41381730685197637 15 0.41383099773849569 16 0.17235169540952791
		3 14 0.41381672291207072 15 0.41383046052356648 16 0.17235281656436294
		3 14 0.41381730713946496 15 0.41383099802617396 16 0.17235169483436105
		3 14 0.41381896649956651 15 0.41383252475939458 16 0.17234850874103891
		3 14 0.41382144949437266 15 0.41383481046921827 16 0.17234374003640915
		3 14 0.41382437614864781 15 0.41383750626684412 16 0.17233811758450812
		3 13 0.41383764087830271 14 0.41384929276109023 15 0.17231306636060711
		3 13 0.41382984962364522 14 0.41384168392269893 15 0.17232846645365579
		3 13 0.4138246419390883 14 0.41383659889726809 15 0.17233875916364366
		3 13 0.41382281256142811 14 0.41383481273847128 15 0.17234237470010053
		3 13 0.41382463957753729 14 0.413836596535123 15 0.17233876388733971
		3 13 0.4138298465014395 14 0.41384168079981049 15 0.1723284726987499
		3 13 0.41383763999175971 14 0.41384929187474978 15 0.17231306813349059
		3 13 0.41384683423220736 14 0.41385827272579945 15 0.17229489304199311
		3 13 0.41385603099197893 14 0.41386725802884672 15 0.17227671097917432
		3 13 0.41386382446669095 14 0.41387487375203169 15 0.17226130178127741
		3 13 0.41386903250956691 14 0.41387996379990455 15 0.1722510036905284
		3 13 0.41387086026329478 14 0.41388175026617524 15 0.17224738947052995
		3 13 0.41386903280095194 14 0.41387996409131828 15 0.17225100310772989
		3 13 0.4138638244724212 14 0.41387487375763204 15 0.17226130176994681
		3 13 0.41385602987079495 14 0.41386725690710785 15 0.17227671322209723
		3 13 0.41384683424080437 14 0.41385827273419823 15 0.1722948930249974
		3 12 0.41386294590178757 13 0.41387280746692701 14 0.17226424663128548
		3 12 0.41385763099547374 13 0.41386749101166531 14 0.17227487799286093
		3 12 0.41385407837294264 13 0.41386393735391519 14 0.17228198427314226
		3 12 0.41385283025638869 13 0.41386268887369154 14 0.17228448086991971
		3 12 0.41385407601455115 13 0.41386393499483654 14 0.17228198899061239
		3 12 0.41385762787869457 13 0.41386748789397815 14 0.17227488422732723
		3 12 0.41386294502205911 13 0.41387280658694203 14 0.17226424839099891
		3 12 0.41386921917691782 13 0.41387908257062511 14 0.17225169825245706
		3 12 0.41387549689614195 13 0.41388536212005794 14 0.17223914098380022
		3 12 0.41388081654653364 13 0.41389068332161288 14 0.17222850013185359
		3 12 0.41388437205184347 13 0.41389423986381479 14 0.17222138808434165
		3 12 0.41388561959083708 13 0.41389548776665491 14 0.17221889264250798
		3 12 0.41388437234232189 13 0.4138942401543782 14 0.17222138750329979
		3 12 0.41388081655044623 13 0.41389068332552653 14 0.17222850012402718
		3 12 0.41387549577244798 13 0.41388536099603634 14 0.17223914323151573
		3 12 0.41386921918278652 13 0.41387908257649547 14 0.17225169824071801
		3 11 0.41388524189334835 12 0.4138936460524863 13 0.17222111205416535
		3 11 0.41387992694763065 12 0.41388832978673884 13 0.17223174326563051
		3 11 0.41387637429867324 12 0.41388477625555659 13 0.1722388494457702
		3 11 0.41387512617281846 12 0.41388352781977866 13 0.17224134600740293
		3 11 0.41387637194026422 12 0.41388477389656186 13 0.17223885416317394
		3 11 0.4138799238308285 12 0.4138883266691627 13 0.17223174950000888
		3 11 0.41388524101361329 12 0.41389364517253285 13 0.17222111381385391
		3 11 0.41389151521478479 12 0.41389992093224814 13 0.17220856385296709
		3 11 0.4138977929801283 12 0.41390620025731523 13 0.1721960067625565
		3 11 0.41390311266942903 12 0.41391152126853387 13 0.17218536606203716
		3 11 0.41390666820065658 12 0.41391507768341212 13 0.17217825411593132
		3 11 0.41390791574872743 12 0.41391632554155677 13 0.17217575870971583
		3 11 0.41390666849113722 12 0.41391507797396498 13 0.1721782535348978
		3 11 0.41390311267334162 12 0.41391152127244746 13 0.17218536605421086
		3 11 0.41389779185642622 12 0.41390619913333371 13 0.1721960090102401
		3 11 0.41389151522065359 12 0.41389992093811823 13 0.17220856384122818
		3 10 0.41390748742482247 11 0.41391454916572845 12 0.17217796340944913
		3 10 0.41390217245046745 11 0.4139092330821989 12 0.17218859446733356
		3 10 0.41389861978227926 11 0.41390567967270875 12 0.17219570054501201
		3 10 0.4138973716496514 11 0.41390443127966337 12 0.17219819707068515
		3 10 0.41389861742385747 11 0.41390567731379468 12 0.17219570526234781
		3 10 0.41390216933364832 11 0.41390922996472979 12 0.1721886007016219
		3 10 0.41390748654508269 11 0.4139145482858051 12 0.17217796516911227
		3 10 0.41391376077985548 11 0.41392082383016676 12 0.17216541538997779
		3 10 0.41392003857859744 11 0.41392710293948892 12 0.17215285848191364
		3 10 0.41392535829602572 11 0.41393242376767797 12 0.17214221793629633
		3 10 0.41392891384596403 11 0.41393598006011673 12 0.17213510609391924
		3 10 0.4139301614005832 11 0.41393722787527981 12 0.17213261072413696
		3 10 0.41392891413644628 11 0.41393598035065965 12 0.17213510551289418
		3 10 0.41392535829993837 11 0.41393242377159145 12 0.17214221792847018
		3 10 0.41392003745488926 11 0.41392710181554609 12 0.17215286072956457
		3 10 0.41391376078572423 11 0.41392082383603673 12 0.17216541537823904
		3 9 0.41392963358842694 10 0.41393547086994692 11 0.17213489554162614
		3 9 0.41392431859626333 10 0.41393015496093588 11 0.17214552644280079
		3 9 0.41392076591608207 10 0.41392660166799156 11 0.17215263241592643
		3 9 0.41391951777922364 10 0.41392535331587127 11 0.17215512890490506
		3 9 0.41392076355765217 10 0.41392659930915499 11 0.17215263713319282
		3 9 0.41392431547943381 10 0.41393015184356879 11 0.17214553267699742
		3 9 0.41392963270868427 10 0.41393546999005243 11 0.1721348973012633
		3 9 0.41393590696427324 10 0.41394174532815248 11 0.17212234770757429
		3 9 0.41394218478361977 10 0.41394802423082894 11 0.17210979098555126
		3 9 0.41394750451833279 10 0.41395334488370106 11 0.17209915059796624
		3 9 0.41395106007973415 10 0.41395690105885596 11 0.17209203886140986
		3 9 0.41395230763835855 10 0.41395814883284671 11 0.17208954352879474
		3 9 0.41395106037021728 10 0.41395690134938934 11 0.17209203828039346
		1 9 0.41394750452224538;
	setAttr ".wl[333:497].w"
		2 10 0.41395334488761443 11 0.17209915059014022
		3 9 0.41394218365990781 10 0.41394802310692352 11 0.17210979323316872
		3 9 0.41393590697014199 10 0.41394174533402217 11 0.17212234769583573
		3 8 0.41395170487473948 9 0.41395643413580113 10 0.17209186098945939
		3 8 0.41394638987555876 9 0.41395111839380988 10 0.17210249173063139
		3 8 0.41394283719059688 9 0.41394756521240011 10 0.17210959759700301
		3 8 0.41394158905204176 9 0.41394631689944428 10 0.17211209404851388
		3 8 0.41394283483216388 9 0.41394756285363754 10 0.17210960231419867
		3 8 0.41394638675872514 9 0.4139511152765406 10 0.17210249796473429
		3 8 0.41395170399499565 9 0.41395643325593429 10 0.17209186274907001
		3 8 0.41395797825866004 9 0.4139627083966263 10 0.17207931334471363
		3 8 0.41396425608586068 9 0.41396898710151842 10 0.17206675681262085
		3 8 0.41396957582705274 9 0.41397430758658332 10 0.17205611658636397
		3 8 0.41397313139269404 9 0.41397786364947498 10 0.17204900495783104
		3 8 0.41397437895278894 9 0.41397911138405513 10 0.17204650966315591
		3 8 0.41397313168317756 9 0.41397786393999897 10 0.17204900437682349
		3 8 0.41396957583096539 9 0.41397430759049664 10 0.17205611657853803
		3 8 0.4139642549621475 9 0.41396898597764814 10 0.17206675906020436
		3 8 0.41395797826452885 9 0.41396270840249588 10 0.17207931333297524
		3 7 0.41397372544475614 8 0.41397746211687309 9 0.17204881243837075
		3 7 0.41396841044935967 8 0.41397214653457137 9 0.17205944301606901
		3 7 0.41396485776683611 8 0.4139685934597972 9 0.17206654877336669
		3 7 0.41396360962912043 8 0.41396734518428491 9 0.17206904518659466
		3 7 0.41396485540840466 8 0.4139685911011054 9 0.17206655349048991
		3 7 0.4139684073325281 8 0.4139721434173958 9 0.17205944925007607
		3 7 0.41397372456501302 8 0.41397746123703277 9 0.17204881419795426
		3 7 0.41397999882399988 8 0.41398373618897144 9 0.17203626498702854
		3 7 0.41398627664629228 8 0.41399001470474089 9 0.17202370864896693
		3 7 0.4139915963831467 8 0.41399533502933988 9 0.17201306858751345
		3 7 0.41399515194579767 8 0.41399889098487525 9 0.17200595706932706
		3 7 0.41399639950482592 8 0.41400013868176705 9 0.17200346181340709
		3 7 0.41399515223628086 8 0.41399889127539063 9 0.1720059564883285
		3 7 0.41399159638705935 8 0.41399533503325292 9 0.17201306857968771
		3 7 0.41398627552257994 8 0.41399001358090437 9 0.17202371089651564
		3 7 0.41397999882986874 8 0.41398373619484108 9 0.17203626497529032
		3 6 0.41399567096691131 7 0.41399853178448104 8 0.17200579724860765
		3 6 0.41399035598611372 7 0.41399321635434716 8 0.17201642765953915
		3 6 0.41398680331325649 7 0.41398966338118171 8 0.17202353330556178
		3 6 0.41398555517891911 7 0.41398841514134732 8 0.1720260296797336
		3 6 0.41398680095483137 7 0.41398966102255752 8 0.17202353802261117
		3 6 0.41399035286929076 7 0.41399321323726068 8 0.17201643389344856
		3 6 0.41399567008717064 7 0.41399853090466587 8 0.17200579900816357
		3 6 0.41400194432871162 7 0.41400480567673276 8 0.17199324999455565
		3 6 0.41400822213331845 7 0.41401108401226666 8 0.17198069385441475
		3 6 0.41401354185500616 7 0.41401640418393337 8 0.17197005396106049
		3 6 0.41401709740742804 7 0.41401996003714847 8 0.17196294255542335
		3 6 0.41401834496284962 7 0.41402120769811901 8 0.17196044733903143
		3 6 0.4140170976979104 7 0.41401996032765565 8 0.17196294197443399
		3 6 0.41401354185891892 7 0.41401640418784635 8 0.17197005395323484
		3 6 0.41400822100960927 7 0.41401108288846278 8 0.17198069610192795
		3 6 0.41400194433458049 7 0.41400480568260201 8 0.17199324998281762
		3 5 0.41401754143849911 6 0.41401964315522322 7 0.17196281540627761
		3 5 0.41401222648311448 6 0.4140143278697328 7 0.17197344564715278
		3 5 0.41400867382715123 6 0.41401077499314731 7 0.1719805511797014
		3 5 0.41400742569873161 6 0.41400952678722369 7 0.17198304751404464
		3 5 0.41400867146873738 6 0.41401077263458708 7 0.1719805558966756
		3 5 0.41401222336630639 6 0.41401432475273098 7 0.17197345188096261
		3 5 0.41401754055876261 6 0.41401964227543209 7 0.1719628171658053
		3 5 0.41402381477008976 6 0.41402591687651163 7 0.17195026835339869
		3 5 0.41403009254423356 6 0.41403219504070271 7 0.17193771241506375
		3 5 0.4140354122399259 6 0.41403751506697306 7 0.17192707269310115
		3 5 0.41403896777488014 6 0.41404107082290598 7 0.17191996140221383
		3 5 0.41404021532415519 6 0.41404231844972272 7 0.17191746622612214
		3 5 0.41403896806536111 6 0.41404107111340505 7 0.17191996082123387
		3 5 0.41403541224383844 6 0.41403751507088593 7 0.1719270726852756
		3 5 0.41403009142052993 6 0.41403219391692925 7 0.17193771466254082
		3 5 0.41402381477595857 6 0.41402591688238072 7 0.1719502683416608
		3 4 0.41403928902404347 5 0.41404074969677795 6 0.17191996127917852
		3 4 0.4140339741047947 5 0.41403543454810959 6 0.17193059134709576
		3 4 0.41403042147289215 5 0.41403188176287731 6 0.17193769676423046
		3 4 0.41402917335290779 5 0.41403063358902897 6 0.1719401930580633
		3 4 0.41403041911449423 5 0.4140318794043778 6 0.17193770148112802
		3 4 0.4140339709880077 5 0.41403543143118809 6 0.17193059758080423
		3 4 0.41403928814431301 5 0.41404074881700931 6 0.17191996303867763
		3 4 0.41404556231276718 5 0.41404702325633641 6 0.17190741443089644
		3 4 0.41405184004378021 5 0.41405330125842715 6 0.17189485869779267
		3 4 0.41405715970274115 5 0.41405862114713565 6 0.17188421915012325
		3 4 0.41406071521305182 5 0.41406217681102347 6 0.17187710797592462
		3 4 0.4140619627536623 5 0.41406342440552446 6 0.17187461284081326
		3 4 0.41406071550353069 5 0.41406217710151527 6 0.17187710739495415
		3 4 0.41405715970665374 5 0.41405862115104841 6 0.17188421914229787
		3 4 0.41405183892008435 5 0.41405330013468272 6 0.17189486094523296
		3 4 0.41404556231863593 5 0.41404702326220527 6 0.17190741441915874
		3 3 0.41406100955175512 4 0.41406194443154487 5 0.17187704601670009
		3 3 0.41405569467952341 4 0.41405662941247762 5 0.17188767590799903
		3 3 0.41405214207895386 4 0.41405307671377256 5 0.17189478120727353
		3 3 0.41405089396995964 4 0.41405182857030354 5 0.17189727745973682
		3 3 0.41405213972057686 4 0.41405307435533023 5 0.17189478592409294
		3 3 0.41405569156276384 4 0.41405662629563206 5 0.17188768214160405
		3 3 0.41406100867203244 4 0.41406194355179771 5 0.17187704777616988
		3 3 0.41406728278476584 4 0.41406821783789821 5 0.17186449937733597
		3 3 0.41407356045979055 4 0.41407449568642091 5 0.17185194385378863
		3 3 0.41407888007112287 4 0.41407981544479883 5 0.17184130448407831
		3 3 0.41408243554950558 4 0.4140833710214753 5 0.17183419342901898
		3 3 0.41408368307889531 4 0.41408461858535672 5 0.17183169833574799
		3 3 0.41408243583998178 4 0.41408337131195988 5 0.17183419284805829
		3 3 0.41407888007503546 4 0.41407981544871142 5 0.17184130447625307
		3 3 0.41407355933610474 4 0.4140744945627039 5 0.17185194610119137
		3 3 0.41406728279063459 4 0.41406821784376702 5 0.1718644993655985
		3 2 0.41408265502134306 3 0.41408318091880247 4 0.17183416405985452
		3 2 0.41407734020694181 3 0.41407786602180219 4 0.17184479377125592
		3 2 0.41407378764493269 3 0.41407431340458906 4 0.17185189895047823
		3 2 0.41407253954946738 3 0.41407306528973087 4 0.17185439516080178
		3 2 0.41407378528658112 3 0.41407431104620085 4 0.17185190366721803
		3 2 0.41407733709021632 3 0.41407786290502813 4 0.17184480000475558
		3 2 0.41408265414162998 3 0.41408318003907552 4 0.17183416581929456
		3 2 0.41408892818587595 3 0.41408945418084497 4 0.17182161763327908
		3 2 0.41409520579213616 3 0.41409573188470244 4 0.17180906232316148
		3 2 0.41410052534501218 3 0.41410105152029542 4 0.17179842313469249
		3 2 0.41410408078422878 3 0.41410460701480523 4 0.17179131220096608
		3 2 0.41410532829985802 3 0.41410585454983684 4 0.17178881715030511
		3 2 0.41410408107470192 3 0.41410460730528276 4 0.17179131162001532
		3 2 0.41410052534892461 3 0.41410105152420812 4 0.17179842312686733
		3 2 0.41409520466846256 3 0.41409573076101142 4 0.17180906457052597
		3 2 0.41408892819174459 3 0.41408945418671372 4 0.1718216176215418
		3 1 0.41410422543047198 2 0.4141044591748797 3 0.17179131539464834
		3 1 0.41409891068471422 2 0.41409914439240963 3 0.17180194492287615
		3 1 0.41409535816849224 2 0.41409559185165123 3 0.1718090499798566
		3 1 0.41409411008909469 2 0.41409434376363435 3 0.17181154614727104
		3 1 0.41409535581017098 2 0.41409558949331371 3 0.17180905469651525
		3 1 0.41409890756802892 2 0.41409914127570263 3 0.17180195115626851
		3 1 0.41410422455077017 2 0.41410445829517184 3 0.17179131715405796
		3 1 0.41411049851376225 2 0.41411073230150963 3 0.17177876918472809
		3 1 0.41411677603848224 2 0.41411700986960831 3 0.17176621409190951
		3 1 0.41412209552207424 2 0.41412232938996535 3 0.17175557508796047
		3 1 0.41412565091488746 2 0.41412588480735413 3 0.1717484642777585
		3 1 0.41412689841421657 2 0.41412713231530701 3 0.17174596927047647
		3 1 0.41412565120535677 2 0.4141258850978255 3 0.17174846369681784
		3 1 0.41412209552598683 2 0.41412232939387766 3 0.17175557508013553
		3 1 0.41411677491482335 2 0.41411700874594159 3 0.17176621633923508
		3 1 0.41411049851963078 2 0.41411073230737816 3 0.17177876917299101
		3 0 0.41412562643019124 1 0.41412568538433892 2 0.17174868818546976
		3 0 0.41412031176351649 1 0.41412037070840468 2 0.17175931752807874
		3 0 0.41411675930005909 1 0.41411681823875912 2 0.17176642246118179
		3 0 0.41411551123918072 1 0.41411557017570683 2 0.17176891858511245
		3 0 0.4141167569417728 1 0.41411681588046895 2 0.17176642717775822
		3 0 0.41412030864687738 1 0.41412036759176041 2 0.17175932376136227
		3 0 0.41412562555050253 1 0.41412568450464887 2 0.1717486899448486
		3 0 0.41413189941991618 1 0.41413195838499489 2 0.1717361421950889
		3 0 0.41413817685076354 1 0.41413823582678305 2 0.17172358732245335
		3 0 0.41414349625462066 1 0.41414355523991275 2 0.17171294850546659
		3 0 0.41414705159404464 1 0.41414711058553511 2 0.17170583782042034
		3 0 0.41414829907462258 1 0.41414835806828787 2 0.17170334285708952
		3 0 0.41414705188450951 1 0.41414711087600065 2 0.17170583723948987
		3 0 0.41414349625853303 1 0.41414355524382529 2 0.17171294849764174
		3 0 0.41413817572712142 1 0.41413823470313899 2 0.17172358956973949
		3 0 0.4141318994257846 1 0.41413195839086347 2 0.17173614218335201
		3 0 0.62767682980649186 1 0.26020204677356468 2 0.11212112341994346
		3 0 0.62768307433517001 1 0.26019591498538913 2 0.11212101067944082
		3 0 0.62768724041518276 1 0.26019182182136591 2 0.11212093776345133
		3 0 0.62768870088514417 1 0.2601903860037772 2 0.11212091311107864
		3 0 0.62768723198917287 1 0.26019182692543436 2 0.11212094108539278
		3 0 0.6276830632134961 1 0.26019592172115352 2 0.11212101506535042
		3 0 0.62767682672179148 1 0.26020204863675223 2 0.11212112464145639
		3 0 0.62766947415302121 1 0.26020927370711899 2 0.11212125213985971
		3 0 0.62766213075394406 1 0.26021649341495595 2 0.11212137583110003
		3 0 0.62765589453983639 1 0.26022262063385532 2 0.11212148482630836
		3 0 0.62765173010380981 1 0.2602267132712619 2 0.11212155662492831
		3 0 0.62765026397133161 1 0.26022815271482846 2 0.11212158331383995
		3 0 0.62765173113545747 1 0.26022671264684571 2 0.11212155621769686
		3 0 0.62765589453526405 1 0.26022262063835178 2 0.11212148482638422
		3 0 0.6276621267005652 1 0.26021649587408457 2 0.11212137742535026
		3 0 0.62766947414616725 1 0.26020927371386071 2 0.112121252139972
		3 28 0.00040042972266682362 29 0.49979978513866663 30 0.49979978513866663
		1 0 1;
	setAttr -s 31 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 22.431503295901042 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 20.93650329113267 0 -0.00022249651633988315 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 19.441503286364298 0 -0.00022249651633921702 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 17.946503281595927 0 -0.00022249651634038276 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 16.451503276827555 0 -0.0002224965163406048 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 14.956503272059184 0 -0.00022249651634071582 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 13.461503267290812 0 -0.00022249651634093787 1;
	setAttr ".pm[7]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 11.966503262522441 0 -0.00022249651634071582 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 10.471503257754069 0 -0.00022249651634249218 1;
	setAttr ".pm[9]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 8.9765032529856974 0 -0.00022249651634571183 1;
	setAttr ".pm[10]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 7.4815032482173258 0 -0.00022249651634537876 1;
	setAttr ".pm[11]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 5.9865032434489542 0 -0.00022249651634493467 1;
	setAttr ".pm[12]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 4.4915032386805827 0 -0.0002224965163475992 1;
	setAttr ".pm[13]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 2.9965032339122111 0 -0.00022249651634693307 1;
	setAttr ".pm[14]" -type "matrix" 0.99999998892616537 -0 0.00014882092974946321 -0
		 -0 1 -0 0 -0.00014882092974946321 -0 0.99999998892616537 -0 1.5015032456285795 0 9.5859270196247434e-07 1;
	setAttr ".pm[15]" -type "matrix" 0.99999998892616615 -0 -0.00014882092572438989 -0
		 -0 1 -0 0 0.00014882092572438989 -0 0.99999998892616615 -0 0.0065032408574619708 0 -9.7704399506742759e-07 1;
	setAttr ".pm[16]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -1.4884967472821389 0 -0.00022249650965724401 1;
	setAttr ".pm[17]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -2.9834967520505105 0 -0.00022249650965613379 1;
	setAttr ".pm[18]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -4.478496756818882 0 -0.00022249650965591172 1;
	setAttr ".pm[19]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -5.9734967615872536 0 -0.00022249650965702194 1;
	setAttr ".pm[20]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -7.4684967663556252 0 -0.00022249650965724399 1;
	setAttr ".pm[21]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -8.9634967711239959 0 -0.00022249650965702194 1;
	setAttr ".pm[22]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -10.458496775892367 0 -0.00022249650965768805 1;
	setAttr ".pm[23]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -11.953496780660739 0 -0.00022249650965635578 1;
	setAttr ".pm[24]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -13.448496785429111 0 -0.00022249650965491249 1;
	setAttr ".pm[25]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -14.943496790197482 0 -0.00022249650965624476 1;
	setAttr ".pm[26]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -16.438496794965854 0 -0.00022249650965407286 1;
	setAttr ".pm[27]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -17.933496799734225 0 -0.00022249650965196343 1;
	setAttr ".pm[28]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -19.428496804502597 0 -0.00022249650965140832 1;
	setAttr ".pm[29]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -20.923496809270969 0 -0.00022249650965140832 1;
	setAttr ".pm[30]" -type "matrix" 1 -0 -4.5100281473829662e-13 -0 -0 1 -0 0 4.5100281473829662e-13 -0 1 -0
		 -22.41849681403934 0 -0.00022249650965101972 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 31 ".ma";
	setAttr -s 31 ".dpf[0:30]"  1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 
		1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5;
	setAttr -s 31 ".lw";
	setAttr -s 31 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 31 ".ifcl";
	setAttr -s 31 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "55E9F832-4D29-360B-903F-559388C6F1E0";
createNode objectSet -n "skinCluster2Set";
	rename -uid "DFCD3E1F-4522-51CD-6838-02956A3539A9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "945F31A1-4220-42C3-A642-5B87A5761E20";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "A0927A55-487A-11C5-33F8-94A36254A7FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "450FC232-4996-9C8F-75DB-FC8D088AFC17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "1D6C77BA-4995-66AB-BB47-DAA4FC116511";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "92D22FC2-472E-3E59-3FD2-DF81B41F5D57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "EAA4418A-41D2-4C7A-4E0A-6AA4E78E522B";
	setAttr -s 33 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -22.431503295901042 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -20.93650329113267 0 0.00022249651633988315 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -19.441503286364298 0 0.00022249651633921702 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -17.946503281595927 0 0.00022249651634038276 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -16.451503276827555 0 0.0002224965163406048 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -14.956503272059184 0 0.00022249651634071582 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -13.461503267290812 0 0.00022249651634093787 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.966503262522441 0 0.00022249651634071582 1;
	setAttr ".wm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -10.471503257754069 0 0.00022249651634249218 1;
	setAttr ".wm[11]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.9765032529856974 0 0.00022249651634571183 1;
	setAttr ".wm[12]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.4815032482173258 0 0.00022249651634537876 1;
	setAttr ".wm[13]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.9865032434489542 0 0.00022249651634493467 1;
	setAttr ".wm[14]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4915032386805827 0 0.0002224965163475992 1;
	setAttr ".wm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.9965032339122111 0 0.00022249651634693307 1;
	setAttr ".wm[16]" -type "matrix" 0.99999998892616537 0 -0.00014882092974946321 0
		 0 1 0 0 0.00014882092974946321 0 0.99999998892616537 0 -1.5015032291438395 0 0.00022249651634493467 1;
	setAttr ".wm[17]" -type "matrix" 0.99999998892616593 0 0.00014882092572438986 0 0 1 0 0
		 -0.00014882092572438986 0 0.99999998892616593 0 -0.0065032409308507511 0 9.2256596316390993e-09 1;
	setAttr ".wm[18]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 1.4884967472821389 0 0.00022249651032856023 1;
	setAttr ".wm[19]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 2.9834967520505105 0 0.00022249651100169921 1;
	setAttr ".wm[20]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 4.478496756818882 0 0.00022249651167572637 1;
	setAttr ".wm[21]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 5.9734967615872536 0 0.0002224965123510858 1;
	setAttr ".wm[22]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 7.4684967663556252 0 0.00022249651302555705 1;
	setAttr ".wm[23]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 8.9634967711239959 0 0.00022249651369958421 1;
	setAttr ".wm[24]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 10.458496775892367 0 0.00022249651437449954 1;
	setAttr ".wm[25]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 11.953496780660739 0 0.00022249651504741648 1;
	setAttr ".wm[26]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 13.448496785429111 0 0.00022249651572022239 1;
	setAttr ".wm[27]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 14.943496790197482 0 0.00022249651639580386 1;
	setAttr ".wm[28]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 16.438496794965854 0 0.00022249651706788119 1;
	setAttr ".wm[29]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 17.933496799734225 0 0.00022249651774002097 1;
	setAttr ".wm[30]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 19.428496804502597 0 0.00022249651841371506 1;
	setAttr ".wm[31]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 20.923496809270969 0 0.00022249651908796427 1;
	setAttr ".wm[32]" -type "matrix" 1 0 4.5100281473829662e-13 0 0 1 0 0 -4.5100281473829662e-13 0 1 0
		 22.41849681403934 0 0.00022249651976182489 1;
	setAttr -s 33 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 -0 0 0 -22.431503295901042 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 0.00022249651633988315 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 1.1657341758564144e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 3.219646771412954e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -3.3306690738754696e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0.00014882093029880268 0 0 1.4950000047683716
		 0 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 -0.00029764185657253194 0 0 1.4950000047683716
		 0 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0.00014882092582272645 0 0 1.4950000047683716
		 0 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -1.4432899320127035e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -2.1718737919229625e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -2.1094237467877974e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 -5.5511151231257827e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.4950000047683716 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4950000047683716 0
		 -3.8857805861880479e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 33 ".m";
	setAttr -s 33 ".p";
	setAttr -s 33 ".g[0:32]" yes yes no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
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
connectAttr "skinCluster2.og[0]" "SnakeShape.i";
connectAttr "skinCluster2GroupId.id" "SnakeShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "SnakeShape.iog.og[0].gco";
connectAttr "groupId4.id" "SnakeShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "SnakeShape.iog.og[1].gco";
connectAttr "tweak2.vl[0].vt[0]" "SnakeShape.twl";
connectAttr "transformGeometry1.og" "SnakeShape1Orig.i";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.ctx" "Curve_05_Ctrl_Jnt.tx";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.cty" "Curve_05_Ctrl_Jnt.ty";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.ctz" "Curve_05_Ctrl_Jnt.tz";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.crx" "Curve_05_Ctrl_Jnt.rx";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.cry" "Curve_05_Ctrl_Jnt.ry";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.crz" "Curve_05_Ctrl_Jnt.rz";
connectAttr "Curve_05_Ctrl_Jnt_scaleConstraint1.csx" "Curve_05_Ctrl_Jnt.sx";
connectAttr "Curve_05_Ctrl_Jnt_scaleConstraint1.csy" "Curve_05_Ctrl_Jnt.sy";
connectAttr "Curve_05_Ctrl_Jnt_scaleConstraint1.csz" "Curve_05_Ctrl_Jnt.sz";
connectAttr "Curve_05_Ctrl_Jnt.ro" "Curve_05_Ctrl_Jnt_parentConstraint1.cro";
connectAttr "Curve_05_Ctrl_Jnt.pim" "Curve_05_Ctrl_Jnt_parentConstraint1.cpim";
connectAttr "Curve_05_Ctrl_Jnt.rp" "Curve_05_Ctrl_Jnt_parentConstraint1.crp";
connectAttr "Curve_05_Ctrl_Jnt.rpt" "Curve_05_Ctrl_Jnt_parentConstraint1.crt";
connectAttr "Curve_05_Ctrl_Jnt.jo" "Curve_05_Ctrl_Jnt_parentConstraint1.cjo";
connectAttr "Spline_05_Ctrl.t" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spline_05_Ctrl.rp" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spline_05_Ctrl.rpt" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_05_Ctrl.r" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spline_05_Ctrl.ro" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spline_05_Ctrl.s" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spline_05_Ctrl.pm" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.w0" "Curve_05_Ctrl_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Curve_05_Ctrl_Jnt.pim" "Curve_05_Ctrl_Jnt_scaleConstraint1.cpim";
connectAttr "Spline_05_Ctrl.s" "Curve_05_Ctrl_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spline_05_Ctrl.pm" "Curve_05_Ctrl_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Curve_05_Ctrl_Jnt_scaleConstraint1.w0" "Curve_05_Ctrl_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.ctx" "Curve_04_Ctrl_Jnt.tx";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.cty" "Curve_04_Ctrl_Jnt.ty";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.ctz" "Curve_04_Ctrl_Jnt.tz";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.crx" "Curve_04_Ctrl_Jnt.rx";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.cry" "Curve_04_Ctrl_Jnt.ry";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.crz" "Curve_04_Ctrl_Jnt.rz";
connectAttr "Curve_04_Ctrl_Jnt_scaleConstraint1.csx" "Curve_04_Ctrl_Jnt.sx";
connectAttr "Curve_04_Ctrl_Jnt_scaleConstraint1.csy" "Curve_04_Ctrl_Jnt.sy";
connectAttr "Curve_04_Ctrl_Jnt_scaleConstraint1.csz" "Curve_04_Ctrl_Jnt.sz";
connectAttr "Curve_04_Ctrl_Jnt.ro" "Curve_04_Ctrl_Jnt_parentConstraint1.cro";
connectAttr "Curve_04_Ctrl_Jnt.pim" "Curve_04_Ctrl_Jnt_parentConstraint1.cpim";
connectAttr "Curve_04_Ctrl_Jnt.rp" "Curve_04_Ctrl_Jnt_parentConstraint1.crp";
connectAttr "Curve_04_Ctrl_Jnt.rpt" "Curve_04_Ctrl_Jnt_parentConstraint1.crt";
connectAttr "Curve_04_Ctrl_Jnt.jo" "Curve_04_Ctrl_Jnt_parentConstraint1.cjo";
connectAttr "Spline_04_Ctrl.t" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spline_04_Ctrl.rp" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spline_04_Ctrl.rpt" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_04_Ctrl.r" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spline_04_Ctrl.ro" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spline_04_Ctrl.s" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spline_04_Ctrl.pm" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.w0" "Curve_04_Ctrl_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Curve_04_Ctrl_Jnt.pim" "Curve_04_Ctrl_Jnt_scaleConstraint1.cpim";
connectAttr "Spline_04_Ctrl.s" "Curve_04_Ctrl_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spline_04_Ctrl.pm" "Curve_04_Ctrl_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Curve_04_Ctrl_Jnt_scaleConstraint1.w0" "Curve_04_Ctrl_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.ctx" "Curve_03_Ctrl_Jnt.tx";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.cty" "Curve_03_Ctrl_Jnt.ty";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.ctz" "Curve_03_Ctrl_Jnt.tz";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.crx" "Curve_03_Ctrl_Jnt.rx";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.cry" "Curve_03_Ctrl_Jnt.ry";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.crz" "Curve_03_Ctrl_Jnt.rz";
connectAttr "Curve_03_Ctrl_Jnt_scaleConstraint1.csx" "Curve_03_Ctrl_Jnt.sx";
connectAttr "Curve_03_Ctrl_Jnt_scaleConstraint1.csy" "Curve_03_Ctrl_Jnt.sy";
connectAttr "Curve_03_Ctrl_Jnt_scaleConstraint1.csz" "Curve_03_Ctrl_Jnt.sz";
connectAttr "Curve_03_Ctrl_Jnt.ro" "Curve_03_Ctrl_Jnt_parentConstraint1.cro";
connectAttr "Curve_03_Ctrl_Jnt.pim" "Curve_03_Ctrl_Jnt_parentConstraint1.cpim";
connectAttr "Curve_03_Ctrl_Jnt.rp" "Curve_03_Ctrl_Jnt_parentConstraint1.crp";
connectAttr "Curve_03_Ctrl_Jnt.rpt" "Curve_03_Ctrl_Jnt_parentConstraint1.crt";
connectAttr "Curve_03_Ctrl_Jnt.jo" "Curve_03_Ctrl_Jnt_parentConstraint1.cjo";
connectAttr "Spline_03_Ctrl.t" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spline_03_Ctrl.rp" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spline_03_Ctrl.rpt" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_03_Ctrl.r" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spline_03_Ctrl.ro" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spline_03_Ctrl.s" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spline_03_Ctrl.pm" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.w0" "Curve_03_Ctrl_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Curve_03_Ctrl_Jnt.pim" "Curve_03_Ctrl_Jnt_scaleConstraint1.cpim";
connectAttr "Spline_03_Ctrl.s" "Curve_03_Ctrl_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spline_03_Ctrl.pm" "Curve_03_Ctrl_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Curve_03_Ctrl_Jnt_scaleConstraint1.w0" "Curve_03_Ctrl_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.ctx" "Curve_02_Ctrl_Jnt.tx";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.cty" "Curve_02_Ctrl_Jnt.ty";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.ctz" "Curve_02_Ctrl_Jnt.tz";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.crx" "Curve_02_Ctrl_Jnt.rx";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.cry" "Curve_02_Ctrl_Jnt.ry";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.crz" "Curve_02_Ctrl_Jnt.rz";
connectAttr "Curve_02_Ctrl_Jnt_scaleConstraint1.csx" "Curve_02_Ctrl_Jnt.sx";
connectAttr "Curve_02_Ctrl_Jnt_scaleConstraint1.csy" "Curve_02_Ctrl_Jnt.sy";
connectAttr "Curve_02_Ctrl_Jnt_scaleConstraint1.csz" "Curve_02_Ctrl_Jnt.sz";
connectAttr "Curve_02_Ctrl_Jnt.ro" "Curve_02_Ctrl_Jnt_parentConstraint1.cro";
connectAttr "Curve_02_Ctrl_Jnt.pim" "Curve_02_Ctrl_Jnt_parentConstraint1.cpim";
connectAttr "Curve_02_Ctrl_Jnt.rp" "Curve_02_Ctrl_Jnt_parentConstraint1.crp";
connectAttr "Curve_02_Ctrl_Jnt.rpt" "Curve_02_Ctrl_Jnt_parentConstraint1.crt";
connectAttr "Curve_02_Ctrl_Jnt.jo" "Curve_02_Ctrl_Jnt_parentConstraint1.cjo";
connectAttr "Spline_02_Ctrl.t" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spline_02_Ctrl.rp" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spline_02_Ctrl.rpt" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_02_Ctrl.r" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spline_02_Ctrl.ro" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spline_02_Ctrl.s" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spline_02_Ctrl.pm" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.w0" "Curve_02_Ctrl_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Curve_02_Ctrl_Jnt.pim" "Curve_02_Ctrl_Jnt_scaleConstraint1.cpim";
connectAttr "Spline_02_Ctrl.s" "Curve_02_Ctrl_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spline_02_Ctrl.pm" "Curve_02_Ctrl_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Curve_02_Ctrl_Jnt_scaleConstraint1.w0" "Curve_02_Ctrl_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.ctx" "Curve_01_Ctrl_Jnt.tx";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.cty" "Curve_01_Ctrl_Jnt.ty";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.ctz" "Curve_01_Ctrl_Jnt.tz";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.crx" "Curve_01_Ctrl_Jnt.rx";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.cry" "Curve_01_Ctrl_Jnt.ry";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.crz" "Curve_01_Ctrl_Jnt.rz";
connectAttr "Curve_01_Ctrl_Jnt_scaleConstraint1.csx" "Curve_01_Ctrl_Jnt.sx";
connectAttr "Curve_01_Ctrl_Jnt_scaleConstraint1.csy" "Curve_01_Ctrl_Jnt.sy";
connectAttr "Curve_01_Ctrl_Jnt_scaleConstraint1.csz" "Curve_01_Ctrl_Jnt.sz";
connectAttr "Curve_01_Ctrl_Jnt.ro" "Curve_01_Ctrl_Jnt_parentConstraint1.cro";
connectAttr "Curve_01_Ctrl_Jnt.pim" "Curve_01_Ctrl_Jnt_parentConstraint1.cpim";
connectAttr "Curve_01_Ctrl_Jnt.rp" "Curve_01_Ctrl_Jnt_parentConstraint1.crp";
connectAttr "Curve_01_Ctrl_Jnt.rpt" "Curve_01_Ctrl_Jnt_parentConstraint1.crt";
connectAttr "Curve_01_Ctrl_Jnt.jo" "Curve_01_Ctrl_Jnt_parentConstraint1.cjo";
connectAttr "Spline_01_Ctrl.t" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spline_01_Ctrl.rp" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spline_01_Ctrl.rpt" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_01_Ctrl.r" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spline_01_Ctrl.ro" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spline_01_Ctrl.s" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spline_01_Ctrl.pm" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.w0" "Curve_01_Ctrl_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Curve_01_Ctrl_Jnt.pim" "Curve_01_Ctrl_Jnt_scaleConstraint1.cpim";
connectAttr "Spline_01_Ctrl.s" "Curve_01_Ctrl_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spline_01_Ctrl.pm" "Curve_01_Ctrl_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Curve_01_Ctrl_Jnt_scaleConstraint1.w0" "Curve_01_Ctrl_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_01_Jnt.tx";
connectAttr "Snake_Bind_01_Jnt.s" "Snake_Bind_02_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_02_Jnt.tx";
connectAttr "Snake_Bind_02_Jnt.s" "Snake_Bind_03_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_03_Jnt.tx";
connectAttr "Snake_Bind_03_Jnt.s" "Snake_Bind_04_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_04_Jnt.tx";
connectAttr "Snake_Bind_04_Jnt.s" "Snake_Bind_05_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_05_Jnt.tx";
connectAttr "Snake_Bind_05_Jnt.s" "Snake_Bind_06_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_06_Jnt.tx";
connectAttr "Snake_Bind_06_Jnt.s" "Snake_Bind_07_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_07_Jnt.tx";
connectAttr "Snake_Bind_07_Jnt.s" "Snake_Bind_08_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_08_Jnt.tx";
connectAttr "Snake_Bind_08_Jnt.s" "Snake_Bind_09_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_09_Jnt.tx";
connectAttr "Snake_Bind_09_Jnt.s" "Snake_Bind_10_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_10_Jnt.tx";
connectAttr "Snake_Bind_10_Jnt.s" "Snake_Bind_11_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_11_Jnt.tx";
connectAttr "Snake_Bind_11_Jnt.s" "Snake_Bind_12_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_12_Jnt.tx";
connectAttr "Snake_Bind_12_Jnt.s" "Snake_Bind_13_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_13_Jnt.tx";
connectAttr "Snake_Bind_13_Jnt.s" "Snake_Bind_14_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_14_Jnt.tx";
connectAttr "Snake_Bind_14_Jnt.s" "Snake_Bind_15_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_15_Jnt.tx";
connectAttr "Snake_Bind_15_Jnt.s" "Snake_Bind_16_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_16_Jnt.tx";
connectAttr "Snake_Bind_16_Jnt.s" "Snake_Bind_17_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_17_Jnt.tx";
connectAttr "Snake_Bind_17_Jnt.s" "Snake_Bind_18_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_18_Jnt.tx";
connectAttr "Snake_Bind_18_Jnt.s" "Snake_Bind_19_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_19_Jnt.tx";
connectAttr "Snake_Bind_19_Jnt.s" "Snake_Bind_20_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_20_Jnt.tx";
connectAttr "Snake_Bind_20_Jnt.s" "Snake_Bind_21_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_21_Jnt.tx";
connectAttr "Snake_Bind_21_Jnt.s" "Snake_Bind_22_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_22_Jnt.tx";
connectAttr "Snake_Bind_22_Jnt.s" "Snake_Bind_23_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_23_Jnt.tx";
connectAttr "Snake_Bind_23_Jnt.s" "Snake_Bind_24_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_24_Jnt.tx";
connectAttr "Snake_Bind_24_Jnt.s" "Snake_Bind_25_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_25_Jnt.tx";
connectAttr "Snake_Bind_25_Jnt.s" "Snake_Bind_26_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_26_Jnt.tx";
connectAttr "Snake_Bind_26_Jnt.s" "Snake_Bind_27_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_27_Jnt.tx";
connectAttr "Snake_Bind_27_Jnt.s" "Snake_Bind_28_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_28_Jnt.tx";
connectAttr "Snake_Bind_28_Jnt.s" "Snake_Bind_29_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_29_Jnt.tx";
connectAttr "Snake_Bind_29_Jnt.s" "Snake_Bind_30_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_30_Jnt.tx";
connectAttr "Snake_Bind_30_Jnt.s" "Snake_Bind_31_Jnt.is";
connectAttr "IK_Spline_Stretch_MD.ox" "Snake_Bind_31_Jnt.tx";
connectAttr "Snake_Bind_31_Jnt.tx" "effector1.tx";
connectAttr "Snake_Bind_31_Jnt.ty" "effector1.ty";
connectAttr "Snake_Bind_31_Jnt.tz" "effector1.tz";
connectAttr "skinCluster1.og[0]" "IK_Spline_CurveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "IK_Spline_CurveShape.twl";
connectAttr "skinCluster1GroupId.id" "IK_Spline_CurveShape.iog.og[36].gid";
connectAttr "skinCluster1Set.mwc" "IK_Spline_CurveShape.iog.og[36].gco";
connectAttr "groupId2.id" "IK_Spline_CurveShape.iog.og[37].gid";
connectAttr "tweakSet1.mwc" "IK_Spline_CurveShape.iog.og[37].gco";
connectAttr "Snake_Bind_01_Jnt.msg" "IK_Spine_Handle.hsj";
connectAttr "effector1.hp" "IK_Spine_Handle.hee";
connectAttr "ikSplineSolver.msg" "IK_Spine_Handle.hsv";
connectAttr "IK_Spline_CurveShape.ws" "IK_Spine_Handle.ic";
connectAttr "Spline_01_Ctrl.wm" "IK_Spine_Handle.dwum";
connectAttr "Spline_05_Ctrl.wm" "IK_Spine_Handle.dwue";
connectAttr "transformGeometry3.og" "Transform_CtrlShape.cr";
connectAttr "Spline_01_Ctrl_Grp_parentConstraint1.ctx" "Spline_01_Ctrl_Grp.tx";
connectAttr "Spline_01_Ctrl_Grp_parentConstraint1.cty" "Spline_01_Ctrl_Grp.ty";
connectAttr "Spline_01_Ctrl_Grp_parentConstraint1.ctz" "Spline_01_Ctrl_Grp.tz";
connectAttr "Spline_01_Ctrl_Grp_parentConstraint2.crx" "Spline_01_Ctrl_Grp.rx";
connectAttr "Spline_01_Ctrl_Grp_parentConstraint2.cry" "Spline_01_Ctrl_Grp.ry";
connectAttr "Spline_01_Ctrl_Grp_parentConstraint2.crz" "Spline_01_Ctrl_Grp.rz";
connectAttr "transformGeometry2.og" "Spline_01_CtrlShape.cr";
connectAttr "Spline_01_Ctrl_Grp.ro" "Spline_01_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spline_01_Ctrl_Grp.pim" "Spline_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spline_01_Ctrl_Grp.rp" "Spline_01_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spline_01_Ctrl_Grp.rpt" "Spline_01_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Transform_Ctrl.t" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Transform_Ctrl.rp" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Transform_Ctrl.rpt" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Transform_Ctrl.r" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Transform_Ctrl.ro" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Transform_Ctrl.s" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Transform_Ctrl.pm" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spline_01_Ctrl_Grp_parentConstraint1.w0" "Spline_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spline_01_Ctrl.FollowTranslate" "Spline_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spline_01_Ctrl_Grp.ro" "Spline_01_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spline_01_Ctrl_Grp.pim" "Spline_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spline_01_Ctrl_Grp.rp" "Spline_01_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spline_01_Ctrl_Grp.rpt" "Spline_01_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Transform_Ctrl.t" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Transform_Ctrl.rp" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Transform_Ctrl.rpt" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Transform_Ctrl.r" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Transform_Ctrl.ro" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Transform_Ctrl.s" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Transform_Ctrl.pm" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spline_01_Ctrl_Grp_parentConstraint2.w0" "Spline_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spline_01_Ctrl.FollowRotate" "Spline_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spline_02_Ctrl_Grp_parentConstraint1.ctx" "Spline_02_Ctrl_Grp.tx";
connectAttr "Spline_02_Ctrl_Grp_parentConstraint1.cty" "Spline_02_Ctrl_Grp.ty";
connectAttr "Spline_02_Ctrl_Grp_parentConstraint1.ctz" "Spline_02_Ctrl_Grp.tz";
connectAttr "Spline_02_Ctrl_Grp_parentConstraint2.crx" "Spline_02_Ctrl_Grp.rx";
connectAttr "Spline_02_Ctrl_Grp_parentConstraint2.cry" "Spline_02_Ctrl_Grp.ry";
connectAttr "Spline_02_Ctrl_Grp_parentConstraint2.crz" "Spline_02_Ctrl_Grp.rz";
connectAttr "Spline_02_Ctrl_Grp.ro" "Spline_02_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spline_02_Ctrl_Grp.pim" "Spline_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spline_02_Ctrl_Grp.rp" "Spline_02_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spline_02_Ctrl_Grp.rpt" "Spline_02_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spline_01_Ctrl.t" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spline_01_Ctrl.rp" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spline_01_Ctrl.rpt" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_01_Ctrl.r" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spline_01_Ctrl.ro" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spline_01_Ctrl.s" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spline_01_Ctrl.pm" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spline_02_Ctrl_Grp_parentConstraint1.w0" "Spline_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spline_02_Ctrl.FollowTranslate" "Spline_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spline_02_Ctrl_Grp.ro" "Spline_02_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spline_02_Ctrl_Grp.pim" "Spline_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spline_02_Ctrl_Grp.rp" "Spline_02_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spline_02_Ctrl_Grp.rpt" "Spline_02_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spline_01_Ctrl.t" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spline_01_Ctrl.rp" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spline_01_Ctrl.rpt" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spline_01_Ctrl.r" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spline_01_Ctrl.ro" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spline_01_Ctrl.s" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spline_01_Ctrl.pm" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spline_02_Ctrl_Grp_parentConstraint2.w0" "Spline_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spline_02_Ctrl.FollowRotate" "Spline_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spline_03_Ctrl_Grp_parentConstraint1.ctx" "Spline_03_Ctrl_Grp.tx";
connectAttr "Spline_03_Ctrl_Grp_parentConstraint1.cty" "Spline_03_Ctrl_Grp.ty";
connectAttr "Spline_03_Ctrl_Grp_parentConstraint1.ctz" "Spline_03_Ctrl_Grp.tz";
connectAttr "Spline_03_Ctrl_Grp_parentConstraint2.crx" "Spline_03_Ctrl_Grp.rx";
connectAttr "Spline_03_Ctrl_Grp_parentConstraint2.cry" "Spline_03_Ctrl_Grp.ry";
connectAttr "Spline_03_Ctrl_Grp_parentConstraint2.crz" "Spline_03_Ctrl_Grp.rz";
connectAttr "Spline_03_Ctrl_Grp.ro" "Spline_03_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spline_03_Ctrl_Grp.pim" "Spline_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spline_03_Ctrl_Grp.rp" "Spline_03_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spline_03_Ctrl_Grp.rpt" "Spline_03_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spline_02_Ctrl.t" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spline_02_Ctrl.rp" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spline_02_Ctrl.rpt" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_02_Ctrl.r" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spline_02_Ctrl.ro" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spline_02_Ctrl.s" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spline_02_Ctrl.pm" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spline_03_Ctrl_Grp_parentConstraint1.w0" "Spline_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spline_03_Ctrl.FollowTranslate" "Spline_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spline_03_Ctrl_Grp.ro" "Spline_03_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spline_03_Ctrl_Grp.pim" "Spline_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spline_03_Ctrl_Grp.rp" "Spline_03_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spline_03_Ctrl_Grp.rpt" "Spline_03_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spline_02_Ctrl.t" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spline_02_Ctrl.rp" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spline_02_Ctrl.rpt" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spline_02_Ctrl.r" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spline_02_Ctrl.ro" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spline_02_Ctrl.s" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spline_02_Ctrl.pm" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spline_03_Ctrl_Grp_parentConstraint2.w0" "Spline_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spline_03_Ctrl.FollowRotate" "Spline_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spline_04_Ctrl_Grp_parentConstraint1.ctx" "Spline_04_Ctrl_Grp.tx";
connectAttr "Spline_04_Ctrl_Grp_parentConstraint1.cty" "Spline_04_Ctrl_Grp.ty";
connectAttr "Spline_04_Ctrl_Grp_parentConstraint1.ctz" "Spline_04_Ctrl_Grp.tz";
connectAttr "Spline_04_Ctrl_Grp_parentConstraint2.crx" "Spline_04_Ctrl_Grp.rx";
connectAttr "Spline_04_Ctrl_Grp_parentConstraint2.cry" "Spline_04_Ctrl_Grp.ry";
connectAttr "Spline_04_Ctrl_Grp_parentConstraint2.crz" "Spline_04_Ctrl_Grp.rz";
connectAttr "Spline_04_Ctrl_Grp.ro" "Spline_04_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spline_04_Ctrl_Grp.pim" "Spline_04_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spline_04_Ctrl_Grp.rp" "Spline_04_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spline_04_Ctrl_Grp.rpt" "Spline_04_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spline_03_Ctrl.t" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spline_03_Ctrl.rp" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spline_03_Ctrl.rpt" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_03_Ctrl.r" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spline_03_Ctrl.ro" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spline_03_Ctrl.s" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spline_03_Ctrl.pm" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spline_04_Ctrl_Grp_parentConstraint1.w0" "Spline_04_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spline_04_Ctrl.FollowTranslate" "Spline_04_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spline_04_Ctrl_Grp.ro" "Spline_04_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spline_04_Ctrl_Grp.pim" "Spline_04_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spline_04_Ctrl_Grp.rp" "Spline_04_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spline_04_Ctrl_Grp.rpt" "Spline_04_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spline_03_Ctrl.t" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spline_03_Ctrl.rp" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spline_03_Ctrl.rpt" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spline_03_Ctrl.r" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spline_03_Ctrl.ro" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spline_03_Ctrl.s" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spline_03_Ctrl.pm" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spline_04_Ctrl_Grp_parentConstraint2.w0" "Spline_04_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spline_04_Ctrl.FollowRotate" "Spline_04_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spline_05_Ctrl_Grp_parentConstraint1.ctx" "Spline_05_Ctrl_Grp.tx";
connectAttr "Spline_05_Ctrl_Grp_parentConstraint1.cty" "Spline_05_Ctrl_Grp.ty";
connectAttr "Spline_05_Ctrl_Grp_parentConstraint1.ctz" "Spline_05_Ctrl_Grp.tz";
connectAttr "Spline_05_Ctrl_Grp_parentConstraint2.crx" "Spline_05_Ctrl_Grp.rx";
connectAttr "Spline_05_Ctrl_Grp_parentConstraint2.cry" "Spline_05_Ctrl_Grp.ry";
connectAttr "Spline_05_Ctrl_Grp_parentConstraint2.crz" "Spline_05_Ctrl_Grp.rz";
connectAttr "Spline_05_Ctrl_Grp.ro" "Spline_05_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spline_05_Ctrl_Grp.pim" "Spline_05_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spline_05_Ctrl_Grp.rp" "Spline_05_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spline_05_Ctrl_Grp.rpt" "Spline_05_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spline_04_Ctrl.t" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spline_04_Ctrl.rp" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spline_04_Ctrl.rpt" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spline_04_Ctrl.r" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spline_04_Ctrl.ro" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spline_04_Ctrl.s" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spline_04_Ctrl.pm" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spline_05_Ctrl_Grp_parentConstraint1.w0" "Spline_05_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spline_05_Ctrl.FollowTranslate" "Spline_05_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spline_05_Ctrl_Grp.ro" "Spline_05_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spline_05_Ctrl_Grp.pim" "Spline_05_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spline_05_Ctrl_Grp.rp" "Spline_05_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spline_05_Ctrl_Grp.rpt" "Spline_05_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spline_04_Ctrl.t" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spline_04_Ctrl.rp" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spline_04_Ctrl.rpt" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spline_04_Ctrl.r" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spline_04_Ctrl.ro" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spline_04_Ctrl.s" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spline_04_Ctrl.pm" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spline_05_Ctrl_Grp_parentConstraint2.w0" "Spline_05_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spline_05_Ctrl.FollowRotate" "Spline_05_Ctrl_Grp_parentConstraint2.w0"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "transformGeometry1.ig";
connectAttr "makeNurbCircle1.oc" "transformGeometry2.ig";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Curve_01_Ctrl_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Curve_02_Ctrl_Jnt.wm" "skinCluster1.ma[1]";
connectAttr "Curve_03_Ctrl_Jnt.wm" "skinCluster1.ma[2]";
connectAttr "Curve_04_Ctrl_Jnt.wm" "skinCluster1.ma[3]";
connectAttr "Curve_05_Ctrl_Jnt.wm" "skinCluster1.ma[4]";
connectAttr "Curve_01_Ctrl_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Curve_02_Ctrl_Jnt.liw" "skinCluster1.lw[1]";
connectAttr "Curve_03_Ctrl_Jnt.liw" "skinCluster1.lw[2]";
connectAttr "Curve_04_Ctrl_Jnt.liw" "skinCluster1.lw[3]";
connectAttr "Curve_05_Ctrl_Jnt.liw" "skinCluster1.lw[4]";
connectAttr "Curve_01_Ctrl_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Curve_02_Ctrl_Jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "Curve_03_Ctrl_Jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "Curve_04_Ctrl_Jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "Curve_05_Ctrl_Jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "IK_Spline_CurveShape.iog.og[36]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "IK_Spline_CurveShape.iog.og[37]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "IK_Spline_CurveShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "IK_Spline.msg" "bindPose1.m[0]";
connectAttr "Skeleton.msg" "bindPose1.m[1]";
connectAttr "Control_Jnts.msg" "bindPose1.m[2]";
connectAttr "Curve_01_Ctrl_Jnt.msg" "bindPose1.m[3]";
connectAttr "Curve_02_Ctrl_Jnt.msg" "bindPose1.m[4]";
connectAttr "Curve_03_Ctrl_Jnt.msg" "bindPose1.m[5]";
connectAttr "Curve_04_Ctrl_Jnt.msg" "bindPose1.m[6]";
connectAttr "Curve_05_Ctrl_Jnt.msg" "bindPose1.m[7]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[2]" "bindPose1.p[4]";
connectAttr "bindPose1.m[2]" "bindPose1.p[5]";
connectAttr "bindPose1.m[2]" "bindPose1.p[6]";
connectAttr "bindPose1.m[2]" "bindPose1.p[7]";
connectAttr "Curve_01_Ctrl_Jnt.bps" "bindPose1.wm[3]";
connectAttr "Curve_02_Ctrl_Jnt.bps" "bindPose1.wm[4]";
connectAttr "Curve_03_Ctrl_Jnt.bps" "bindPose1.wm[5]";
connectAttr "Curve_04_Ctrl_Jnt.bps" "bindPose1.wm[6]";
connectAttr "Curve_05_Ctrl_Jnt.bps" "bindPose1.wm[7]";
connectAttr "IK_Spline_CurveShape.ws" "IK_Spline_CI.ic";
connectAttr "IK_Spline_CI.al" "IK_Spline_Scalar_MD.i1x";
connectAttr "IK_Spline_CI.al" "IK_Spline_COND.ft";
connectAttr "IK_Spline_Scalar_MD.ox" "IK_Spline_COND.ctr";
connectAttr "IK_Spline_COND.ocr" "IK_Spline_BC.c1r";
connectAttr "Transform_Ctrl.Stretch" "IK_Spline_BC.b";
connectAttr "makeNurbCircle2.oc" "transformGeometry3.ig";
connectAttr "IK_Spline_BC.opr" "IK_Spline_Stretch_MD.i2x";
connectAttr "IK_Spline_BC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "IK_Spline_Scalar_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "IK_Spline_COND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Transform_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "IK_Spline_Stretch_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "IK_Spline_CI.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "IK_Spline_CurveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "Snake_Bind_01_Jnt.wm" "skinCluster2.ma[0]";
connectAttr "Snake_Bind_02_Jnt.wm" "skinCluster2.ma[1]";
connectAttr "Snake_Bind_03_Jnt.wm" "skinCluster2.ma[2]";
connectAttr "Snake_Bind_04_Jnt.wm" "skinCluster2.ma[3]";
connectAttr "Snake_Bind_05_Jnt.wm" "skinCluster2.ma[4]";
connectAttr "Snake_Bind_06_Jnt.wm" "skinCluster2.ma[5]";
connectAttr "Snake_Bind_07_Jnt.wm" "skinCluster2.ma[6]";
connectAttr "Snake_Bind_08_Jnt.wm" "skinCluster2.ma[7]";
connectAttr "Snake_Bind_09_Jnt.wm" "skinCluster2.ma[8]";
connectAttr "Snake_Bind_10_Jnt.wm" "skinCluster2.ma[9]";
connectAttr "Snake_Bind_11_Jnt.wm" "skinCluster2.ma[10]";
connectAttr "Snake_Bind_12_Jnt.wm" "skinCluster2.ma[11]";
connectAttr "Snake_Bind_13_Jnt.wm" "skinCluster2.ma[12]";
connectAttr "Snake_Bind_14_Jnt.wm" "skinCluster2.ma[13]";
connectAttr "Snake_Bind_15_Jnt.wm" "skinCluster2.ma[14]";
connectAttr "Snake_Bind_16_Jnt.wm" "skinCluster2.ma[15]";
connectAttr "Snake_Bind_17_Jnt.wm" "skinCluster2.ma[16]";
connectAttr "Snake_Bind_18_Jnt.wm" "skinCluster2.ma[17]";
connectAttr "Snake_Bind_19_Jnt.wm" "skinCluster2.ma[18]";
connectAttr "Snake_Bind_20_Jnt.wm" "skinCluster2.ma[19]";
connectAttr "Snake_Bind_21_Jnt.wm" "skinCluster2.ma[20]";
connectAttr "Snake_Bind_22_Jnt.wm" "skinCluster2.ma[21]";
connectAttr "Snake_Bind_23_Jnt.wm" "skinCluster2.ma[22]";
connectAttr "Snake_Bind_24_Jnt.wm" "skinCluster2.ma[23]";
connectAttr "Snake_Bind_25_Jnt.wm" "skinCluster2.ma[24]";
connectAttr "Snake_Bind_26_Jnt.wm" "skinCluster2.ma[25]";
connectAttr "Snake_Bind_27_Jnt.wm" "skinCluster2.ma[26]";
connectAttr "Snake_Bind_28_Jnt.wm" "skinCluster2.ma[27]";
connectAttr "Snake_Bind_29_Jnt.wm" "skinCluster2.ma[28]";
connectAttr "Snake_Bind_30_Jnt.wm" "skinCluster2.ma[29]";
connectAttr "Snake_Bind_31_Jnt.wm" "skinCluster2.ma[30]";
connectAttr "Snake_Bind_01_Jnt.liw" "skinCluster2.lw[0]";
connectAttr "Snake_Bind_02_Jnt.liw" "skinCluster2.lw[1]";
connectAttr "Snake_Bind_03_Jnt.liw" "skinCluster2.lw[2]";
connectAttr "Snake_Bind_04_Jnt.liw" "skinCluster2.lw[3]";
connectAttr "Snake_Bind_05_Jnt.liw" "skinCluster2.lw[4]";
connectAttr "Snake_Bind_06_Jnt.liw" "skinCluster2.lw[5]";
connectAttr "Snake_Bind_07_Jnt.liw" "skinCluster2.lw[6]";
connectAttr "Snake_Bind_08_Jnt.liw" "skinCluster2.lw[7]";
connectAttr "Snake_Bind_09_Jnt.liw" "skinCluster2.lw[8]";
connectAttr "Snake_Bind_10_Jnt.liw" "skinCluster2.lw[9]";
connectAttr "Snake_Bind_11_Jnt.liw" "skinCluster2.lw[10]";
connectAttr "Snake_Bind_12_Jnt.liw" "skinCluster2.lw[11]";
connectAttr "Snake_Bind_13_Jnt.liw" "skinCluster2.lw[12]";
connectAttr "Snake_Bind_14_Jnt.liw" "skinCluster2.lw[13]";
connectAttr "Snake_Bind_15_Jnt.liw" "skinCluster2.lw[14]";
connectAttr "Snake_Bind_16_Jnt.liw" "skinCluster2.lw[15]";
connectAttr "Snake_Bind_17_Jnt.liw" "skinCluster2.lw[16]";
connectAttr "Snake_Bind_18_Jnt.liw" "skinCluster2.lw[17]";
connectAttr "Snake_Bind_19_Jnt.liw" "skinCluster2.lw[18]";
connectAttr "Snake_Bind_20_Jnt.liw" "skinCluster2.lw[19]";
connectAttr "Snake_Bind_21_Jnt.liw" "skinCluster2.lw[20]";
connectAttr "Snake_Bind_22_Jnt.liw" "skinCluster2.lw[21]";
connectAttr "Snake_Bind_23_Jnt.liw" "skinCluster2.lw[22]";
connectAttr "Snake_Bind_24_Jnt.liw" "skinCluster2.lw[23]";
connectAttr "Snake_Bind_25_Jnt.liw" "skinCluster2.lw[24]";
connectAttr "Snake_Bind_26_Jnt.liw" "skinCluster2.lw[25]";
connectAttr "Snake_Bind_27_Jnt.liw" "skinCluster2.lw[26]";
connectAttr "Snake_Bind_28_Jnt.liw" "skinCluster2.lw[27]";
connectAttr "Snake_Bind_29_Jnt.liw" "skinCluster2.lw[28]";
connectAttr "Snake_Bind_30_Jnt.liw" "skinCluster2.lw[29]";
connectAttr "Snake_Bind_31_Jnt.liw" "skinCluster2.lw[30]";
connectAttr "Snake_Bind_01_Jnt.obcc" "skinCluster2.ifcl[0]";
connectAttr "Snake_Bind_02_Jnt.obcc" "skinCluster2.ifcl[1]";
connectAttr "Snake_Bind_03_Jnt.obcc" "skinCluster2.ifcl[2]";
connectAttr "Snake_Bind_04_Jnt.obcc" "skinCluster2.ifcl[3]";
connectAttr "Snake_Bind_05_Jnt.obcc" "skinCluster2.ifcl[4]";
connectAttr "Snake_Bind_06_Jnt.obcc" "skinCluster2.ifcl[5]";
connectAttr "Snake_Bind_07_Jnt.obcc" "skinCluster2.ifcl[6]";
connectAttr "Snake_Bind_08_Jnt.obcc" "skinCluster2.ifcl[7]";
connectAttr "Snake_Bind_09_Jnt.obcc" "skinCluster2.ifcl[8]";
connectAttr "Snake_Bind_10_Jnt.obcc" "skinCluster2.ifcl[9]";
connectAttr "Snake_Bind_11_Jnt.obcc" "skinCluster2.ifcl[10]";
connectAttr "Snake_Bind_12_Jnt.obcc" "skinCluster2.ifcl[11]";
connectAttr "Snake_Bind_13_Jnt.obcc" "skinCluster2.ifcl[12]";
connectAttr "Snake_Bind_14_Jnt.obcc" "skinCluster2.ifcl[13]";
connectAttr "Snake_Bind_15_Jnt.obcc" "skinCluster2.ifcl[14]";
connectAttr "Snake_Bind_16_Jnt.obcc" "skinCluster2.ifcl[15]";
connectAttr "Snake_Bind_17_Jnt.obcc" "skinCluster2.ifcl[16]";
connectAttr "Snake_Bind_18_Jnt.obcc" "skinCluster2.ifcl[17]";
connectAttr "Snake_Bind_19_Jnt.obcc" "skinCluster2.ifcl[18]";
connectAttr "Snake_Bind_20_Jnt.obcc" "skinCluster2.ifcl[19]";
connectAttr "Snake_Bind_21_Jnt.obcc" "skinCluster2.ifcl[20]";
connectAttr "Snake_Bind_22_Jnt.obcc" "skinCluster2.ifcl[21]";
connectAttr "Snake_Bind_23_Jnt.obcc" "skinCluster2.ifcl[22]";
connectAttr "Snake_Bind_24_Jnt.obcc" "skinCluster2.ifcl[23]";
connectAttr "Snake_Bind_25_Jnt.obcc" "skinCluster2.ifcl[24]";
connectAttr "Snake_Bind_26_Jnt.obcc" "skinCluster2.ifcl[25]";
connectAttr "Snake_Bind_27_Jnt.obcc" "skinCluster2.ifcl[26]";
connectAttr "Snake_Bind_28_Jnt.obcc" "skinCluster2.ifcl[27]";
connectAttr "Snake_Bind_29_Jnt.obcc" "skinCluster2.ifcl[28]";
connectAttr "Snake_Bind_30_Jnt.obcc" "skinCluster2.ifcl[29]";
connectAttr "Snake_Bind_31_Jnt.obcc" "skinCluster2.ifcl[30]";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "SnakeShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "SnakeShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "SnakeShape1Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "IK_Spline.msg" "bindPose2.m[0]";
connectAttr "Skeleton.msg" "bindPose2.m[1]";
connectAttr "Snake_Bind_01_Jnt.msg" "bindPose2.m[2]";
connectAttr "Snake_Bind_02_Jnt.msg" "bindPose2.m[3]";
connectAttr "Snake_Bind_03_Jnt.msg" "bindPose2.m[4]";
connectAttr "Snake_Bind_04_Jnt.msg" "bindPose2.m[5]";
connectAttr "Snake_Bind_05_Jnt.msg" "bindPose2.m[6]";
connectAttr "Snake_Bind_06_Jnt.msg" "bindPose2.m[7]";
connectAttr "Snake_Bind_07_Jnt.msg" "bindPose2.m[8]";
connectAttr "Snake_Bind_08_Jnt.msg" "bindPose2.m[9]";
connectAttr "Snake_Bind_09_Jnt.msg" "bindPose2.m[10]";
connectAttr "Snake_Bind_10_Jnt.msg" "bindPose2.m[11]";
connectAttr "Snake_Bind_11_Jnt.msg" "bindPose2.m[12]";
connectAttr "Snake_Bind_12_Jnt.msg" "bindPose2.m[13]";
connectAttr "Snake_Bind_13_Jnt.msg" "bindPose2.m[14]";
connectAttr "Snake_Bind_14_Jnt.msg" "bindPose2.m[15]";
connectAttr "Snake_Bind_15_Jnt.msg" "bindPose2.m[16]";
connectAttr "Snake_Bind_16_Jnt.msg" "bindPose2.m[17]";
connectAttr "Snake_Bind_17_Jnt.msg" "bindPose2.m[18]";
connectAttr "Snake_Bind_18_Jnt.msg" "bindPose2.m[19]";
connectAttr "Snake_Bind_19_Jnt.msg" "bindPose2.m[20]";
connectAttr "Snake_Bind_20_Jnt.msg" "bindPose2.m[21]";
connectAttr "Snake_Bind_21_Jnt.msg" "bindPose2.m[22]";
connectAttr "Snake_Bind_22_Jnt.msg" "bindPose2.m[23]";
connectAttr "Snake_Bind_23_Jnt.msg" "bindPose2.m[24]";
connectAttr "Snake_Bind_24_Jnt.msg" "bindPose2.m[25]";
connectAttr "Snake_Bind_25_Jnt.msg" "bindPose2.m[26]";
connectAttr "Snake_Bind_26_Jnt.msg" "bindPose2.m[27]";
connectAttr "Snake_Bind_27_Jnt.msg" "bindPose2.m[28]";
connectAttr "Snake_Bind_28_Jnt.msg" "bindPose2.m[29]";
connectAttr "Snake_Bind_29_Jnt.msg" "bindPose2.m[30]";
connectAttr "Snake_Bind_30_Jnt.msg" "bindPose2.m[31]";
connectAttr "Snake_Bind_31_Jnt.msg" "bindPose2.m[32]";
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
connectAttr "bindPose2.m[30]" "bindPose2.p[31]";
connectAttr "bindPose2.m[31]" "bindPose2.p[32]";
connectAttr "IK_Spline_CI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_Spline_Scalar_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_Spline_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_Spline_BC.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IK_Spline_Stretch_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SnakeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of IKSpline.ma

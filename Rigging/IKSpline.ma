//Maya ASCII 2018 scene
//Name: IKSpline.ma
//Last modified: Wed, Oct 10, 2018 08:16:07 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "49D77FFB-4ADE-071A-D98C-C0AA46CE3A26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.2187092584267862 24.399981899047507 50.047615652531462 ;
	setAttr ".r" -type "double3" -27.338352729601553 -8.6000000000001524 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "35C2AAC4-4FF5-BD91-0653-9EA0980C095A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 66.646258681833984;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.27341031362400514 0 0.00022249651633976519 ;
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
createNode transform -n "pCylinder1";
	rename -uid "10CC7458-42A5-B27A-3D58-47BB4F6DCA3E";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 -1.9361441241127602e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.9361441241127602e-16 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "27FCB568-4F37-0746-6D5D-5D8BFECB09A5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "IK_Spline";
	rename -uid "EB695BB4-4341-5ACB-23D5-DEA458503B1D";
createNode transform -n "Skeleton" -p "IK_Spline";
	rename -uid "BEBA156C-45D2-16D0-C77A-FE96145EF5C4";
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
createNode joint -n "joint1" -p "Skeleton";
	rename -uid "F4F75FFF-4D9E-3422-724F-05BD72B5BD4B";
	setAttr ".t" -type "double3" -22.431503295901042 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "02FF237A-46FF-64D6-664D-ACA2008876F9";
	setAttr ".t" -type "double3" 1.495 0 0.00022249651633988315 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "111D9246-49EF-AF41-59F7-C5A2DD749462";
	setAttr ".t" -type "double3" 1.495 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint3";
	rename -uid "4E5DAC50-4C8F-496C-CD28-A9A8EF2041B5";
	setAttr ".t" -type "double3" 1.495 0 1.1657341758564144e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint4";
	rename -uid "6BC807DF-4D7A-CC25-8DCA-2597F63F1F2F";
	setAttr ".t" -type "double3" 1.495 0 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint5";
	rename -uid "220D01F2-43E1-EFC9-AD66-C6BA95A3A58D";
	setAttr ".t" -type "double3" 1.495 0 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint6";
	rename -uid "43A999AD-4EF3-AB2B-9637-D7A7C29AE823";
	setAttr ".t" -type "double3" 1.495 0 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "joint7";
	rename -uid "F6B1E3F0-44A4-C753-AE2B-8FAED2AD9A5A";
	setAttr ".t" -type "double3" 1.495 0 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint9" -p "joint8";
	rename -uid "B965C19A-47A0-5001-8284-B08A95A11F5F";
	setAttr ".t" -type "double3" 1.495 0 1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint10" -p "joint9";
	rename -uid "018B2A19-4CB6-E197-38D7-3C9EC30A4607";
	setAttr ".t" -type "double3" 1.495 0 3.219646771412954e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint11" -p "joint10";
	rename -uid "A5E479C7-4E87-A730-233D-F3AE8912104A";
	setAttr ".t" -type "double3" 1.495 0 -3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint12" -p "joint11";
	rename -uid "64000521-422B-011D-732E-07B6D8F21B0E";
	setAttr ".t" -type "double3" 1.495 0 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint13" -p "joint12";
	rename -uid "E6DB6E61-4891-0F44-A89A-9EAD27BB9F6D";
	setAttr ".t" -type "double3" 1.495 0 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint14" -p "joint13";
	rename -uid "9BB6A978-4B9F-9E48-235E-55B73F76B1E4";
	setAttr ".t" -type "double3" 1.495 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint15" -p "joint14";
	rename -uid "2B598A16-4E91-6032-FA73-5F9C533E1D38";
	setAttr ".t" -type "double3" 1.495 0 -1.9984014443252818e-15 ;
	setAttr ".r" -type "double3" 0 0.008526811252075368 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint16" -p "joint15";
	rename -uid "02A8EF79-4DD6-3FBB-3BAE-74A7BFF9DC0C";
	setAttr ".t" -type "double3" 1.495 0 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 0 -0.017053622188044262 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint17" -p "joint16";
	rename -uid "8CE2E56C-435B-F329-E216-EF9C8418DF76";
	setAttr ".t" -type "double3" 1.495 0 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 0 0.0085268109101283348 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint18" -p "joint17";
	rename -uid "02811787-4EA5-684C-91F0-679EB06B5CE6";
	setAttr ".t" -type "double3" 1.495 0 -1.1102230246251565e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint19" -p "joint18";
	rename -uid "040E0AD6-4C7F-B895-3677-97A27FEC5F99";
	setAttr ".t" -type "double3" 1.495 0 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint20" -p "joint19";
	rename -uid "5E8CB43C-4820-0CFD-AD5F-4B921FC8A781";
	setAttr ".t" -type "double3" 1.495 0 1.1102230246251565e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint21" -p "joint20";
	rename -uid "95A0F58D-4A33-C46E-5FD4-4CA4428E63D5";
	setAttr ".t" -type "double3" 1.495 0 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint22" -p "joint21";
	rename -uid "AA9EF350-45AA-4BFA-3983-0E81C14256C4";
	setAttr ".t" -type "double3" 1.495 0 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint23" -p "joint22";
	rename -uid "D6FCB9A2-4BC3-8167-2115-1796CF364C25";
	setAttr ".t" -type "double3" 1.495 0 6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint24" -p "joint23";
	rename -uid "828628FA-452D-F5E3-FF8F-D0859A4DEF04";
	setAttr ".t" -type "double3" 1.495 0 -1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint25" -p "joint24";
	rename -uid "B068B549-430E-11EF-C723-74A4893FF5BA";
	setAttr ".t" -type "double3" 1.495 0 -1.4432899320127035e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint26" -p "joint25";
	rename -uid "44004E6B-48D5-EDFF-A349-A4815B0D5029";
	setAttr ".t" -type "double3" 1.495 0 1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint27" -p "joint26";
	rename -uid "28758B42-459E-F12A-F594-8DB9594FE1FC";
	setAttr ".t" -type "double3" 1.495 0 -2.1718737919229625e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint28" -p "joint27";
	rename -uid "970E3EEE-4A8A-09EA-8E4D-17870A80E9EE";
	setAttr ".t" -type "double3" 1.495 0 -2.1094237467877974e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint29" -p "joint28";
	rename -uid "E02535C5-44F4-414A-23A8-11A9B7FF4336";
	setAttr ".t" -type "double3" 1.495 0 -5.5511151231257827e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint30" -p "joint29";
	rename -uid "2A8FD3EB-42B8-8245-C819-66A597EA47DF";
	setAttr ".t" -type "double3" 1.495 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "joint31" -p "joint30";
	rename -uid "9747AFBD-415A-D331-7A9B-FCB97A8B03CF";
	setAttr ".t" -type "double3" 1.495 0 -3.8857805861880479e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector1" -p "joint30";
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
	setAttr ".t" -type "double3" 22.418496670988212 0 0.00022249651753124817 ;
	setAttr ".r" -type "double3" 0 -2.5840560939035389e-11 0 ;
	setAttr ".roc" yes;
createNode transform -n "Controls" -p "IK_Spline";
	rename -uid "0B792B58-4995-4105-1682-45AB2C8A2481";
createNode transform -n "Spline_01_Ctrl_Grp" -p "Controls";
	rename -uid "98E1B610-44A9-971D-448A-E2A35FD18C51";
	setAttr ".t" -type "double3" -22.431503295898438 0 0 ;
createNode transform -n "Spline_01_Ctrl" -p "Spline_01_Ctrl_Grp";
	rename -uid "7E6ECCCC-443C-E341-6815-0EBCECF01089";
createNode nurbsCurve -n "Spline_01_CtrlShape" -p "Spline_01_Ctrl";
	rename -uid "691282B1-46E0-0944-ADEE-C2AD486B0DD1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
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
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.219791070735185e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
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
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.219791070735185e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
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
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.219791070735185e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
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
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
		6.7857323231109134e-17 -6.7857323231109109e-17 -1.1081941875543877
		-1.2601436025374905e-16 0.78361162489122449 -0.78361162489122438
		-2.4606854055573016e-16 1.1081941875543881 -5.7448982375248304e-17
		-2.219791070735185e-16 0.78361162489122449 0.78361162489122449
		-6.7857323231109196e-17 1.1100856969603224e-16 1.1081941875543884
		1.2601436025374905e-16 -0.78361162489122449 0.78361162489122438
		2.4606854055573016e-16 -1.1081941875543881 1.511240500779959e-16
		2.219791070735185e-16 -0.78361162489122449 -0.7836116248912246
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
	rename -uid "B0FEB015-4D6D-63B7-D45E-528366A29AC1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0E317479-4850-2B84-AE23-418AE91A8C5D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2358BB2D-4FCF-EAD3-AB13-15A323B0116F";
createNode displayLayerManager -n "layerManager";
	rename -uid "AC4979E4-4652-7710-C6CD-01B7836FD4D4";
createNode displayLayer -n "defaultLayer";
	rename -uid "66BE7451-4B6E-B422-7FCA-4C9226FDEB1B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9829A968-4523-6433-51F4-9893F82FDA9E";
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
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 553\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 336\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1114\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1114\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1114\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "48499B0B-4E6A-9692-CADC-73A3224F526A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "5778CA45-480A-230A-EEF5-7B9C7BE0DD9C";
	setAttr -s 33 ".wl";
	setAttr ".wl[0:32].w"
		1 0 1
		5 0 0.98272423016998445 1 0.0011704350936121231 2 0.001752544197849111 
		3 0.0033655818661522093 4 0.010987208672402111
		5 0 0.90643999597952019 1 0.0058042052198553212 2 0.0087842713642203602 
		3 0.017295987025765333 4 0.061675540410638809
		5 0 0.7343350036814088 1 0.014018511850742649 2 0.021582910681093786 
		3 0.044290029558925956 4 0.18577354422782891
		5 0 0.53487846647616411 1 0.01981032442592524 2 0.031073648609588243 
		3 0.066823511721497933 4 0.34741404876682447
		5 0 0.34297201166949165 1 0.020696098258790093 2 0.033129744861739321 
		3 0.075162615150904555 4 0.52803953005907434
		5 0 0.18043973307037364 1 0.016139023513931261 2 0.026416697113314215 
		3 0.063753492237317591 4 0.71325105406506328
		5 0 0.060329815591624855 1 0.0075412269147612466 2 0.012649853351651733 
		3 0.032815598242372901 4 0.8866635058995892
		1 4 1
		5 0 0.039282169874806823 1 0.0086138308465395965 2 0.01530007157262195 
		3 0.047948890147413249 4 0.88885503755861839
		5 0 0.07588952558297439 1 0.021292023569647083 2 0.039115948939823238 
		3 0.13926664053223975 4 0.72443586137531568
		5 0 0.091417987366608625 1 0.032321061306117033 2 0.061675885259133832 
		3 0.25823080927186559 4 0.55635425679627493
		5 0 0.08747754768555617 1 0.038535311185328998 2 0.076774709982447634 
		3 0.3982871054681556 4 0.39892532567851158
		5 0 0.069522868348820085 1 0.037842312732826983 2 0.079212562459598512 
		3 0.5549252171436625 4 0.25849703931509188
		5 0 0.043733322644164199 1 0.029248388525730636 2 0.064832062021014464 
		3 0.72272001085538362 4 0.13946621595370712
		5 0 0.01710520520075396 1 0.013994719995369054 2 0.03316778737470704 
		3 0.88734099129599953 4 0.048391296133170433
		5 0 3.0935926187757755e-06 1 3.0982577887026073e-06 2 7.9598700983076648e-06 
		3 0.99997791086739751 4 7.9374120967797373e-06
		5 0 0.013764699333264248 1 0.016810417362992269 2 0.047536758513038575 
		3 0.88925588441308723 4 0.032632240377617729
		5 0 0.029124119194906924 1 0.043557102380416005 2 0.13892447344531361 
		3 0.72384201138256876 4 0.064552293596794708
		5 0 0.037749644580939462 1 0.069348425759293217 2 0.25783533218080984 
		3 0.55604679377487554 4 0.079019803704082001
		5 0 0.038484988491302836 1 0.08736477835538696 2 0.39841847304718353 
		3 0.39905758432976873 4 0.07667417577635792
		5 0 0.032299457354961522 1 0.091356442335126076 2 0.55597554159352147 
		3 0.25873384542843569 4 0.061634713287955264
		5 0 0.021285497546011712 1 0.07586636903551254 2 0.72421723439200314 
		3 0.13952694717021386 4 0.039103951856258833
		5 0 0.0086130786685027147 1 0.039278724277951621 2 0.88877528284279417 
		3 0.048034177925689765 4 0.015298736285061719
		1 2 1
		5 0 0.0075408667946695223 1 0.060326932569888282 2 0.88662130595961253 
		3 0.032861645362674718 4 0.012649249313155019
		5 0 0.016137680232783315 1 0.1804247166738957 2 0.71319167510942938 
		3 0.063831429598268263 4 0.026414498385623323
		5 0 0.020694251867242386 1 0.3429414124391722 2 0.52799242369946986 
		3 0.07524512277714103 4 0.033126789216974539
		5 0 0.019808884133571094 1 0.53483957944328941 2 0.34738879041363063 
		3 0.066891356581321421 4 0.031071389428187417
		5 0 0.014017888301154554 1 0.73430234066944577 2 0.18576528110692747 
		3 0.044332539256924534 4 0.021581950665547769
		5 0 0.0058041114809157775 1 0.90642537772522958 2 0.061674544371744314 
		3 0.017311836924900972 4 0.0087841294972094072
		5 0 0.0011704315605313396 1 0.98272128645571677 2 0.010987175509377466 
		3 0.0033685675667008584 4 0.0017525389076735545
		1 1 1;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 22.431503295898438 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -22.418497085571289 0 -0.00022249651374295354 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -11.953496932983398 0 -0.00022249651374295354 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 11.966503143310547 0 -0.00022249651374295354 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  1.5 1.5 1.5 1.5 1.5;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "0B2E8C3C-4A63-6E0D-CD3B-71B3E4ED22A0";
createNode objectSet -n "skinCluster1Set";
	rename -uid "4987117A-4476-F66B-B1E8-81B35FB157CF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "0702E47D-4545-67B7-4684-82BD68E65792";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "434C3EA1-458A-E9E5-8AA6-E2BD58E24E68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "D4725B05-422C-2E07-AF54-72BBD2946D8F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "0D632DAF-4AFF-752F-5123-C3BE60B1FA5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "999F5F66-4E12-8273-1CC8-1091F83D81AB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode dagPose -n "bindPose1";
	rename -uid "24E4A5F4-4D04-935F-3555-2696FA42BF76";
	setAttr -s 5 ".wm";
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -22.431503295898438 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.418497085571289 0 0.00022249651374295354 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.953496932983398 0 0.00022249651374295354 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.966503143310547 0
		 0.00022249651374295354 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr ".bp" yes;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "28957DBD-4AB1-B75B-8C2D-1C9BEF0B8958";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "5EBCAD83-4AC6-6652-835D-6C84BD9F224B";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 -1 0 0 1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 0 0 1;
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
connectAttr "transformGeometry1.og" "pCylinderShape1.i";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.ctx" "Curve_05_Ctrl_Jnt.tx";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.cty" "Curve_05_Ctrl_Jnt.ty";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.ctz" "Curve_05_Ctrl_Jnt.tz";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.crx" "Curve_05_Ctrl_Jnt.rx";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.cry" "Curve_05_Ctrl_Jnt.ry";
connectAttr "Curve_05_Ctrl_Jnt_parentConstraint1.crz" "Curve_05_Ctrl_Jnt.rz";
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
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.ctx" "Curve_04_Ctrl_Jnt.tx";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.cty" "Curve_04_Ctrl_Jnt.ty";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.ctz" "Curve_04_Ctrl_Jnt.tz";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.crx" "Curve_04_Ctrl_Jnt.rx";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.cry" "Curve_04_Ctrl_Jnt.ry";
connectAttr "Curve_04_Ctrl_Jnt_parentConstraint1.crz" "Curve_04_Ctrl_Jnt.rz";
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
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.ctx" "Curve_03_Ctrl_Jnt.tx";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.cty" "Curve_03_Ctrl_Jnt.ty";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.ctz" "Curve_03_Ctrl_Jnt.tz";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.crx" "Curve_03_Ctrl_Jnt.rx";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.cry" "Curve_03_Ctrl_Jnt.ry";
connectAttr "Curve_03_Ctrl_Jnt_parentConstraint1.crz" "Curve_03_Ctrl_Jnt.rz";
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
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.ctx" "Curve_02_Ctrl_Jnt.tx";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.cty" "Curve_02_Ctrl_Jnt.ty";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.ctz" "Curve_02_Ctrl_Jnt.tz";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.crx" "Curve_02_Ctrl_Jnt.rx";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.cry" "Curve_02_Ctrl_Jnt.ry";
connectAttr "Curve_02_Ctrl_Jnt_parentConstraint1.crz" "Curve_02_Ctrl_Jnt.rz";
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
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.ctx" "Curve_01_Ctrl_Jnt.tx";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.cty" "Curve_01_Ctrl_Jnt.ty";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.ctz" "Curve_01_Ctrl_Jnt.tz";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.crx" "Curve_01_Ctrl_Jnt.rx";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.cry" "Curve_01_Ctrl_Jnt.ry";
connectAttr "Curve_01_Ctrl_Jnt_parentConstraint1.crz" "Curve_01_Ctrl_Jnt.rz";
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
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8.s" "joint9.is";
connectAttr "joint9.s" "joint10.is";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint11.s" "joint12.is";
connectAttr "joint12.s" "joint13.is";
connectAttr "joint13.s" "joint14.is";
connectAttr "joint14.s" "joint15.is";
connectAttr "joint15.s" "joint16.is";
connectAttr "joint16.s" "joint17.is";
connectAttr "joint17.s" "joint18.is";
connectAttr "joint18.s" "joint19.is";
connectAttr "joint19.s" "joint20.is";
connectAttr "joint20.s" "joint21.is";
connectAttr "joint21.s" "joint22.is";
connectAttr "joint22.s" "joint23.is";
connectAttr "joint23.s" "joint24.is";
connectAttr "joint24.s" "joint25.is";
connectAttr "joint25.s" "joint26.is";
connectAttr "joint26.s" "joint27.is";
connectAttr "joint27.s" "joint28.is";
connectAttr "joint28.s" "joint29.is";
connectAttr "joint29.s" "joint30.is";
connectAttr "joint30.s" "joint31.is";
connectAttr "joint31.tx" "effector1.tx";
connectAttr "joint31.ty" "effector1.ty";
connectAttr "joint31.tz" "effector1.tz";
connectAttr "skinCluster1.og[0]" "IK_Spline_CurveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "IK_Spline_CurveShape.twl";
connectAttr "skinCluster1GroupId.id" "IK_Spline_CurveShape.iog.og[10].gid";
connectAttr "skinCluster1Set.mwc" "IK_Spline_CurveShape.iog.og[10].gco";
connectAttr "groupId2.id" "IK_Spline_CurveShape.iog.og[11].gid";
connectAttr "tweakSet1.mwc" "IK_Spline_CurveShape.iog.og[11].gco";
connectAttr "joint1.msg" "IK_Spine_Handle.hsj";
connectAttr "effector1.hp" "IK_Spine_Handle.hee";
connectAttr "ikSplineSolver.msg" "IK_Spine_Handle.hsv";
connectAttr "IK_Spline_CurveShape.ws" "IK_Spine_Handle.ic";
connectAttr "transformGeometry2.og" "Spline_01_CtrlShape.cr";
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
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Curve_01_Ctrl_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Curve_05_Ctrl_Jnt.wm" "skinCluster1.ma[1]";
connectAttr "Curve_04_Ctrl_Jnt.wm" "skinCluster1.ma[2]";
connectAttr "Curve_03_Ctrl_Jnt.wm" "skinCluster1.ma[3]";
connectAttr "Curve_02_Ctrl_Jnt.wm" "skinCluster1.ma[4]";
connectAttr "Curve_01_Ctrl_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Curve_05_Ctrl_Jnt.liw" "skinCluster1.lw[1]";
connectAttr "Curve_04_Ctrl_Jnt.liw" "skinCluster1.lw[2]";
connectAttr "Curve_03_Ctrl_Jnt.liw" "skinCluster1.lw[3]";
connectAttr "Curve_02_Ctrl_Jnt.liw" "skinCluster1.lw[4]";
connectAttr "Curve_01_Ctrl_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Curve_05_Ctrl_Jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "Curve_04_Ctrl_Jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "Curve_03_Ctrl_Jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "Curve_02_Ctrl_Jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "IK_Spline_CurveShape.iog.og[10]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "IK_Spline_CurveShape.iog.og[11]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "IK_Spline_CurveShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Curve_01_Ctrl_Jnt.msg" "bindPose1.m[0]";
connectAttr "Curve_05_Ctrl_Jnt.msg" "bindPose1.m[1]";
connectAttr "Curve_04_Ctrl_Jnt.msg" "bindPose1.m[2]";
connectAttr "Curve_03_Ctrl_Jnt.msg" "bindPose1.m[3]";
connectAttr "Curve_02_Ctrl_Jnt.msg" "bindPose1.m[4]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.w" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "bindPose1.w" "bindPose1.p[3]";
connectAttr "bindPose1.w" "bindPose1.p[4]";
connectAttr "Curve_01_Ctrl_Jnt.bps" "bindPose1.wm[0]";
connectAttr "Curve_05_Ctrl_Jnt.bps" "bindPose1.wm[1]";
connectAttr "Curve_04_Ctrl_Jnt.bps" "bindPose1.wm[2]";
connectAttr "Curve_03_Ctrl_Jnt.bps" "bindPose1.wm[3]";
connectAttr "Curve_02_Ctrl_Jnt.bps" "bindPose1.wm[4]";
connectAttr "makeNurbCircle1.oc" "transformGeometry2.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of IKSpline.ma

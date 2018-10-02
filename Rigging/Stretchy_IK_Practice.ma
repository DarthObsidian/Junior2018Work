//Maya ASCII 2018 scene
//Name: Stretchy_IK_Practice.ma
//Last modified: Tue, Oct 02, 2018 05:11:40 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "D7936018-4D2B-752D-D397-5D8878316567";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.82821255565048002 14.484069158021219 32.709155501849807 ;
	setAttr ".r" -type "double3" -23.138352729618312 -2.2000000000001658 -3.4812976902479461e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3CA9D29B-4734-504B-8F11-BBB3E714B922";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 38.219305480194713;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 4.108342741584404 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0BA4ED10-4764-DE1C-93A6-E587F4FBB3A5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.6621983914209117 1000.1 -0.3485254691688997 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C64A3763-4662-8CB2-A03F-0183269D9C48";
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
	rename -uid "E2E52F41-491A-11FE-401C-178E0D8B2A55";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.97122302158273044 7.2302158273381307 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F6113C86-4807-FD51-AA11-C39B1AA5FFC3";
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
	rename -uid "99383C33-4036-6486-E842-588E3FF1E15F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9EE3B910-4657-410A-0C7F-B4B4D4F9B387";
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
createNode transform -n "IK_Stretch";
	rename -uid "2B998501-4900-E492-CB60-E3BE0B827115";
createNode transform -n "Controls" -p "IK_Stretch";
	rename -uid "ED28D875-4061-3804-6222-DCB7AF5BA4E5";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "95047686-4E6F-310D-77F5-6280D7CD5723";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "179AF625-4347-F54A-42A3-C2A24837FE03";
	addAttr -ci true -sn "GlobalScale" -ln "GlobalScale" -dv 1 -min 0 -at "double";
	setAttr -k on ".GlobalScale";
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "193D9CEC-4631-06E3-2189-AC8D2B5DE6DD";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "IK_Master_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "20DF8926-442C-DE43-5322-C0AB1B5CD7B7";
createNode transform -n "L_Arm_IK_03_Jnt_Ctrl_Grp" -p "IK_Master_Ctrl_Grp";
	rename -uid "33841B7F-4DAC-21D1-E8DB-38935B5B4A80";
	setAttr ".t" -type "double3" 9.7520141230083084 5.4999999999999991 1.0962206251521875 ;
	setAttr ".r" -type "double3" -89.999999999999972 -32.687062448980036 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
createNode transform -n "L_Arm_IK_03_Jnt_Ctrl" -p "L_Arm_IK_03_Jnt_Ctrl_Grp";
	rename -uid "FF4272FF-424D-D264-82F4-6393C2996FBC";
	addAttr -ci true -sn "Stretch" -ln "Stretch" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Length1" -ln "Length1" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "Length2" -ln "Length2" -dv 1 -min 0 -at "double";
	setAttr ".rp" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -k on ".Stretch";
	setAttr -k on ".Length1";
	setAttr -k on ".Length2";
createNode nurbsCurve -n "L_Arm_IK_03_Jnt_CtrlShape" -p "L_Arm_IK_03_Jnt_Ctrl";
	rename -uid "EACF84CB-4214-CF8C-E7B3-568F3CD1BDC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode ikHandle -n "L_Arm_IK_Handle" -p "L_Arm_IK_03_Jnt_Ctrl";
	rename -uid "47660893-4F5E-F477-8CE0-F3BC9DA5859B";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 89.999999999999972 0 32.687062448980036 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Arm_IK_Handle_poleVectorConstraint1" -p "L_Arm_IK_Handle";
	rename -uid "8118BDFE-426F-FD60-2CC9-14A46AC4F8F7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_PoleVector_CtrlW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.9300594237535362 6.038478204642038 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_IK_03_Jnt_Ctrl_Grp" -p "IK_Master_Ctrl_Grp";
	rename -uid "93F5EF54-4EEB-C41D-5E66-47B8A2737365";
	setAttr ".t" -type "double3" -9.9968195472886485 5.4999999999999982 0.77545924198379856 ;
	setAttr ".r" -type "double3" 89.999999999999929 -153.9589779179959 2.5444437451708134e-14 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
createNode transform -n "R_Arm_IK_03_Jnt_Ctrl" -p "R_Arm_IK_03_Jnt_Ctrl_Grp";
	rename -uid "D0BC8A9D-4858-AC2A-F268-64BC396E4FAF";
	addAttr -ci true -sn "Stretch" -ln "Stretch" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Length1" -ln "Length1" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "Length2" -ln "Length2" -dv 1 -min 0 -at "double";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -k on ".Stretch";
	setAttr -k on ".Length1";
	setAttr -k on ".Length2";
createNode nurbsCurve -n "R_Arm_IK_03_Jnt_CtrlShape" -p "R_Arm_IK_03_Jnt_Ctrl";
	rename -uid "EE1F5311-4864-E814-FF5D-1AA45BCF40D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode ikHandle -n "R_Arm_IK_Handle" -p "R_Arm_IK_03_Jnt_Ctrl";
	rename -uid "002E7F68-4378-1100-EE55-7A98B5A5BB3D";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" -90.000000000000057 0 -153.9589779179959 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_Arm_IK_Handle_poleVectorConstraint1" -p "R_Arm_IK_Handle";
	rename -uid "4B22F6BD-4597-8E37-91B4-9886EDDF684A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_PoleVector_CtrlW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.6316034886040995 5.7821700326247969 7.9936057773011271e-15 ;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_IK_01_Jnt_Ctrl_Grp" -p "IK_Master_Ctrl_Grp";
	rename -uid "C28EFC56-465D-3716-6C54-EA9E2C357036";
	setAttr ".t" -type "double3" 1.5 5.5 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" -89.999999999999972 12.286261836997046 -8.1377690725788e-16 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
createNode transform -n "L_Arm_IK_01_Jnt_Ctrl" -p "L_Arm_IK_01_Jnt_Ctrl_Grp";
	rename -uid "1BAF13AD-4E80-092C-1F4F-BD8E102DBA50";
	setAttr ".rp" -type "double3" 0 5.5511151231257827e-17 0 ;
	setAttr ".sp" -type "double3" 0 5.5511151231257827e-17 0 ;
createNode nurbsCurve -n "L_Arm_IK_01_Jnt_CtrlShape" -p "L_Arm_IK_01_Jnt_Ctrl";
	rename -uid "E3C65807-4919-0F53-26DB-1FAC23F2135D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode transform -n "R_Arm_IK_01_Jnt_Ctrl_Grp" -p "IK_Master_Ctrl_Grp";
	rename -uid "EA65BC59-4B04-9476-17A8-428F69B5E1E2";
	setAttr ".t" -type "double3" -1.5 5.5 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 89.999999999999957 168.68985414309452 0 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
createNode transform -n "R_Arm_IK_01_Jnt_Ctrl" -p "R_Arm_IK_01_Jnt_Ctrl_Grp";
	rename -uid "62D5A3E0-48D4-76A5-01BC-A98D5DF5F7E4";
createNode nurbsCurve -n "R_Arm_IK_01_Jnt_CtrlShape" -p "R_Arm_IK_01_Jnt_Ctrl";
	rename -uid "40F527A7-4920-0152-92E8-4AA3AB98349C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode transform -n "L_Arm_IK_PoleVector_Ctrl_Grp" -p "IK_Master_Ctrl_Grp";
	rename -uid "739CB76E-49A0-DABF-CE82-66B8FB9A20F7";
	setAttr ".t" -type "double3" 6.3854831298002521 5.5 -1.0639805395011375 ;
	setAttr ".r" -type "double3" -89.999999999999972 -32.687062448980036 -2.6453203983758715e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "L_Arm_IK_PoleVector_Ctrl" -p "L_Arm_IK_PoleVector_Ctrl_Grp";
	rename -uid "AE1D71E8-43A5-FCF0-F1F5-35B29472086B";
	setAttr ".rp" -type "double3" -1.6071201694136676 2.5045907523196664 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -1.6071201694136676 2.5045907523196664 8.8817841970012523e-16 ;
createNode nurbsCurve -n "L_Arm_IK_PoleVector_CtrlShape" -p "L_Arm_IK_PoleVector_Ctrl";
	rename -uid "FE9F6AD5-48D9-674A-8C60-BB96A336A97F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8601376031575327 2.3434008698156186 0.29999999999999966
		-1.607120169413667 2.5045907523196655 -1.2000000000000002
		-1.3541027356698012 2.6657806348237125 0.29999999999999966
		-2.6191899043891298 1.8598312223034772 -3.1329639926641511e-16
		-1.3541027356698012 2.6657806348237125 -0.30000000000000032
		-1.607120169413667 2.5045907523196655 1.1999999999999997
		-1.8601376031575327 2.3434008698156186 -0.30000000000000032
		-0.59505043443820416 3.1493502823358539 -3.1329639926641511e-16
		-1.8601376031575327 2.3434008698156186 0.29999999999999966
		-1.607120169413667 2.5045907523196655 -1.2000000000000002
		-1.3541027356698012 2.6657806348237125 0.29999999999999966
		;
createNode transform -n "R_Arm_IK_PoleVector_Ctrl_Grp" -p "IK_Master_Ctrl_Grp";
	rename -uid "17E9847F-4B2A-949E-C85E-EE80F26557CF";
	setAttr ".t" -type "double3" -6.4028997265087915 5.5 -0.98059893524316566 ;
	setAttr ".r" -type "double3" 89.999999999999929 -153.9589779179959 2.5444437451708134e-14 ;
createNode transform -n "R_Arm_IK_PoleVector_Ctrl" -p "R_Arm_IK_PoleVector_Ctrl_Grp";
	rename -uid "B05D9BCC-49C5-5199-D00B-468C18802033";
	setAttr ".rp" -type "double3" -1.3430564432914673 2.7486772560083819 4.4408920985006262e-15 ;
	setAttr ".sp" -type "double3" -1.3430564432914673 2.7486772560083819 4.4408920985006262e-15 ;
createNode nurbsCurve -n "R_Arm_IK_PoleVector_CtrlShape" -p "R_Arm_IK_PoleVector_Ctrl";
	rename -uid "B97F1231-4941-3D3E-6F05-FDBF4720827A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.6126946571812166 2.6171659119716577 0.30000000000000443
		-1.3430564432914665 2.748677256008381 -1.1999999999999955
		-1.0734182294017163 2.8801886000451042 0.30000000000000443
		-2.4216092988504672 2.2226318798614879 4.4408920985006262e-15
		-1.0734182294017163 2.8801886000451042 -0.29999999999999555
		-1.3430564432914665 2.748677256008381 1.2000000000000044
		-1.6126946571812166 2.6171659119716577 -0.29999999999999555
		-0.26450358773246596 3.274722632155274 4.4408920985006262e-15
		-1.6126946571812166 2.6171659119716577 0.30000000000000443
		-1.3430564432914665 2.748677256008381 -1.1999999999999955
		-1.0734182294017163 2.8801886000451042 0.30000000000000443
		;
createNode transform -n "Deformers" -p "IK_Stretch";
	rename -uid "08C25145-4603-A077-F7DD-149221598067";
createNode transform -n "L_Arm_IK_Loc" -p "Deformers";
	rename -uid "F92B7CAA-4A35-73F4-59BA-BF9E50FFD962";
createNode transform -n "L_Arm_03_Loc" -p "L_Arm_IK_Loc";
	rename -uid "528B0CE5-429E-EC4C-0DD8-8AA06AEC96B3";
createNode locator -n "L_Arm_03_LocShape" -p "L_Arm_03_Loc";
	rename -uid "7BA43CBE-41B4-28D9-BDA6-19B2943A32F4";
	setAttr -k off ".v";
createNode pointConstraint -n "L_Arm_03_Loc_pointConstraint1" -p "L_Arm_03_Loc";
	rename -uid "713E2690-4587-BFA3-882B-1DB0FED5032E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_03_Jnt_CtrlW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 9.7520141230083084 5.4999999999999982 1.096220625152188 ;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_01_Loc" -p "L_Arm_IK_Loc";
	rename -uid "552654E1-4040-46B1-EEAE-1DB2E3648311";
createNode locator -n "L_Arm_01_LocShape" -p "L_Arm_01_Loc";
	rename -uid "E79B91BA-46F2-480A-2283-BEA217E84FBF";
	setAttr -k off ".v";
createNode pointConstraint -n "L_Arm_01_Loc_pointConstraint1" -p "L_Arm_01_Loc";
	rename -uid "D2BC4E60-4150-B277-CD13-0887086F0517";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_01_Jnt_CtrlW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 1.5 5.5 -5.42397585712203e-17 ;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_IK_Loc" -p "Deformers";
	rename -uid "68D4C921-4700-798E-4032-7FA6AE6DDC2E";
createNode transform -n "R_Arm_01_Loc" -p "R_Arm_IK_Loc";
	rename -uid "0612D939-4AA2-6FCE-1A72-E480E9953C33";
createNode locator -n "R_Arm_01_LocShape" -p "R_Arm_01_Loc";
	rename -uid "2FC31152-484B-519B-2AFC-60AAD76E89C5";
	setAttr -k off ".v";
createNode pointConstraint -n "R_Arm_01_Loc_pointConstraint1" -p "R_Arm_01_Loc";
	rename -uid "F728F375-4136-E4A3-6121-D8BB0458F001";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_01_Jnt_CtrlW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -1.5 5.5 1.9769396761552474e-31 ;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_03_Loc" -p "R_Arm_IK_Loc";
	rename -uid "36DDAFA1-4795-95DA-3193-4F900EEE08BC";
createNode locator -n "R_Arm_03_LocShape" -p "R_Arm_03_Loc";
	rename -uid "0B91EEBC-4B8A-E36D-5671-CD83D8131887";
	setAttr -k off ".v";
createNode pointConstraint -n "R_Arm_03_Loc_pointConstraint1" -p "R_Arm_03_Loc";
	rename -uid "ED12BBC6-4F39-1649-ABB9-F1A4B9719D51";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_03_Jnt_CtrlW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -9.9968195472886485 5.4999999999999982 0.77545924198379967 ;
	setAttr -k on ".w0";
createNode transform -n "Skeleton" -p "IK_Stretch";
	rename -uid "77E1D8CC-4307-4402-64F8-31A57BBFED98";
createNode joint -n "COG_Jnt" -p "Skeleton";
	rename -uid "0506FFE6-4E62-8429-69BF-A39374A9B940";
	setAttr ".t" -type "double3" 0 4.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.52412689141827673;
createNode joint -n "L_Arm_IK_01_Jnt" -p "COG_Jnt";
	rename -uid "96E4DA2E-4DD8-C898-117F-A097B1E4346E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -89.999999999999972 12.28626183699704 0 ;
	setAttr ".radi" 0.72633473172701446;
createNode joint -n "L_Arm_IK_02_Jnt" -p "L_Arm_IK_01_Jnt";
	rename -uid "FA1C9FAA-4CAD-D8BB-7AC3-C4AB3DDD117B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -44.973324285977071 ;
	setAttr ".radi" 0.64877709248064219;
createNode joint -n "L_Arm_IK_03_Jnt" -p "L_Arm_IK_02_Jnt";
	rename -uid "4A8AAADA-410E-65BC-FF9D-F1850512822C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.64877709248064219;
createNode ikEffector -n "effector1" -p "L_Arm_IK_02_Jnt";
	rename -uid "AD6FF51E-47D5-AFDD-809B-A4AE4BE8EB99";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Arm_IK_01_Jnt_parentConstraint1" -p "L_Arm_IK_01_Jnt";
	rename -uid "14CA741F-4C4A-D202-BC4E-929255EA6F4E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_01_Jnt_CtrlW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-16 -5.5511151231257827e-17 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 2.8249000307521015e-30 7.9513867036587584e-16 
		-7.9513867036587935e-15 ;
	setAttr ".lr" -type "double3" 0 0 8.7465253740246703e-15 ;
	setAttr ".rst" -type "double3" 1.5000000000000002 1 -4.7250227708290543e-17 ;
	setAttr ".rsrr" -type "double3" 0 0 8.7465253740246703e-15 ;
	setAttr -k on ".w0";
createNode joint -n "R_Arm_IK_01_Jnt" -p "COG_Jnt";
	rename -uid "5B3FC35B-4EA9-EB8E-9C3D-D8A7DAFA9E94";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 89.999999999999957 168.68985414309452 0 ;
	setAttr ".radi" 0.65051792364718863;
createNode joint -n "R_Arm_IK_02_Jnt" -p "R_Arm_IK_01_Jnt";
	rename -uid "5888D3EF-4108-E097-76FA-B1B83220227F";
	setAttr ".r" -type "double3" 0 0 3.2354637795186803e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -37.35116793890959 ;
	setAttr ".radi" 0.60646875336492734;
createNode joint -n "R_Arm_IK_03_Jnt" -p "R_Arm_IK_02_Jnt";
	rename -uid "000FB455-4A36-0CC5-F6C6-98A6A84622B4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60646875336492734;
createNode ikEffector -n "effector2" -p "R_Arm_IK_02_Jnt";
	rename -uid "9FD2B627-45BB-EC4D-65DE-4B8959982193";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "R_Arm_IK_01_Jnt_parentConstraint1" -p "R_Arm_IK_01_Jnt";
	rename -uid "A6D3BB68-4B65-606C-1DB7-ECBA23D76BDD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_01_Jnt_CtrlW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-16 5.5511151231257827e-17 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -5.649800061504203e-30 -1.4124500153760508e-30 
		1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".rst" -type "double3" -1.5000000000000002 1 -9.7980462271179229e-17 ;
	setAttr ".rsrr" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9AAD7B19-4805-B7C5-1A5B-96BEC414E567";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "71CCB51C-4330-0E9C-D561-B6BD5AD5E23E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0BF3B779-4206-F847-AC2B-439CFA21E3B7";
createNode displayLayerManager -n "layerManager";
	rename -uid "97951508-44F6-6FC8-0B3D-EC9B25F323D2";
createNode displayLayer -n "defaultLayer";
	rename -uid "250842C7-4C7F-33B4-69F9-C8982349BC07";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3F12201C-4B31-DF62-2029-D9B4A8D636A2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4092F5A8-46AB-F0D1-1D6D-0385C1D5D95A";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "BCF00859-4954-1B9B-2542-AA97549E8290";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "921898D1-41EF-B60B-9E56-8987ACE7DE28";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "3BAD5381-44DE-CB39-ADCC-E0BE0EDD5885";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "50DBFBB6-42C0-2541-F06F-0487D5A576C3";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "99D5FDD6-4798-747C-FDF5-86A0906A5D43";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "6E52E437-4B54-7056-3C8E-E1847F75C3B8";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "F9E5D8B0-4DC6-7F7D-83A7-3B82CD5895E1";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "20337498-49E1-7D13-A7FF-96BE15D3052D";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "9B6D51FC-4661-AEB6-1DCA-65999E3585BF";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "10C0A0E7-454B-8748-F658-69A85E207F0D";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "B608562D-4C96-EF1C-FC5A-D5B56D62E092";
	setAttr ".txf" -type "matrix" 11.011921943832242 0 0 0 0 11.011921943832242 0 0
		 0 0 11.011921943832242 0 0 0 0 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3DBE8DA8-4088-F8F1-4594-58A9AF26A817";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 336\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B4DED3FB-4BF4-14BF-D0CD-ACA1E5586AEF";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode distanceBetween -n "L_Arm_Chain_DIST";
	rename -uid "27888E7A-4E50-1263-A112-ECBBA3C98815";
createNode multiplyDivide -n "L_Arm_Jnt_02_Length_MD";
	rename -uid "B25898E4-4E23-EA5A-F332-FEAB2F9E6121";
	setAttr ".i1" -type "float3" 5 0 0 ;
createNode multiplyDivide -n "L_Arm_Jnt_03_Length_MD";
	rename -uid "D961F658-4212-2F18-2682-3399BB2FD1D8";
	setAttr ".i1" -type "float3" 4 0 0 ;
createNode plusMinusAverage -n "L_Arm_Chain_Length_PMA";
	rename -uid "67C376B1-4A1A-C8C3-41C6-189ED1200AFB";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "L_Arm_Scaler_MD";
	rename -uid "3193246D-425E-430F-D6C9-BAB0B624C1DC";
	setAttr ".op" 2;
createNode multiplyDivide -n "L_Arm_02_Scaled_Length_MD";
	rename -uid "EA223350-4E16-79E5-21D3-058825371D43";
createNode multiplyDivide -n "L_Arm_03_Scaled_Length_MD";
	rename -uid "43319BB3-46FF-3B4F-8EDF-C4A2B99BE459";
createNode condition -n "L_Arm_Stretch_COND";
	rename -uid "AE088189-4F5A-8F93-A833-BAA2ED78D6D1";
	setAttr ".op" 2;
createNode blendColors -n "L_Arm_Stretch_BLND";
	rename -uid "47F27D48-46B8-E693-592E-2EBD4A085B00";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "L_Arm_GlobalScale_MD";
	rename -uid "12AF1A67-426D-FB91-6578-CFAB0EC7B05A";
createNode distanceBetween -n "R_Arm_Chain_DIST";
	rename -uid "E98670C9-4080-AAA1-59E5-C3955B55FC47";
createNode multiplyDivide -n "R_Arm_02_Length_MD";
	rename -uid "D6276CE2-4B21-79DD-4EF7-3C98613C510A";
	setAttr ".i1" -type "float3" 5 0 0 ;
createNode multiplyDivide -n "R_Arm_03_Length_MD";
	rename -uid "B0D93D71-419A-A885-8A2E-0F98840439A4";
	setAttr ".i1" -type "float3" 4 0 0 ;
createNode multiplyDivide -n "R_Arm_Scaler_MD";
	rename -uid "CF51B72F-4D86-B46B-4824-8BAB539C933E";
	setAttr ".op" 2;
createNode plusMinusAverage -n "R_Arm_Chain_Length_PMA";
	rename -uid "10784330-41A1-B4E7-0447-70BAB137BDA5";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "R_Arm_Stretch_COND";
	rename -uid "C86C8235-4021-E5CF-5570-3780B9B06695";
	setAttr ".op" 2;
createNode multiplyDivide -n "R_Arm_02_ScaledLength_MD";
	rename -uid "CDF9763E-4E7D-7A87-1867-9A83C8986F61";
createNode multiplyDivide -n "R_Arm_03_ScaledLength_MD";
	rename -uid "714DFD1C-413F-999B-7433-CEBD9BD64E1E";
createNode blendColors -n "R_Arm_Stretch_BLND";
	rename -uid "FC0FCE4D-4AEB-2824-4AFE-55A7E681F1D6";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "R_Arm_GlobalScale_MD";
	rename -uid "9998F0EF-4632-9F43-91FE-9DA7E70B28C1";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "1B79D5C1-4F43-D1BD-D410-24A8C93BF2B1";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2088.9237492022639 -839.29261665911656 ;
	setAttr ".tgi[0].vh" -type "double2" 910.948981271153 488.56200804529857 ;
	setAttr -s 16 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -832.46502685546875;
	setAttr ".tgi[0].ni[0].y" -468.86715698242188;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -1022.1408081054688;
	setAttr ".tgi[0].ni[1].y" -264.43624877929688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -768.71978759765625;
	setAttr ".tgi[0].ni[2].y" -220.03341674804688;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -1298.550048828125;
	setAttr ".tgi[0].ni[3].y" -215.11050415039063;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 441.2039794921875;
	setAttr ".tgi[0].ni[4].y" -107.51011657714844;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 428.63275146484375;
	setAttr ".tgi[0].ni[5].y" -303.18212890625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -546.5377197265625;
	setAttr ".tgi[0].ni[6].y" -119.02936553955078;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -1015.0882568359375;
	setAttr ".tgi[0].ni[7].y" 72.4595947265625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -766.96820068359375;
	setAttr ".tgi[0].ni[8].y" 12.958968162536621;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -1017.6859130859375;
	setAttr ".tgi[0].ni[9].y" -35.108375549316406;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -1023.2238159179688;
	setAttr ".tgi[0].ni[10].y" -182.12857055664063;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -282.7135009765625;
	setAttr ".tgi[0].ni[11].y" -113.30681610107422;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -160.1148681640625;
	setAttr ".tgi[0].ni[12].y" -363.9195556640625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 142.92781066894531;
	setAttr ".tgi[0].ni[13].y" -270.83187866210938;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -519.56109619140625;
	setAttr ".tgi[0].ni[14].y" -470.18594360351563;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 141.76353454589844;
	setAttr ".tgi[0].ni[15].y" -154.84306335449219;
	setAttr ".tgi[0].ni[15].nvs" 18304;
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
	setAttr -s 20 ".u";
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
connectAttr "Transform_Ctrl.GlobalScale" "IK_Stretch.sx";
connectAttr "Transform_Ctrl.GlobalScale" "IK_Stretch.sy";
connectAttr "Transform_Ctrl.GlobalScale" "IK_Stretch.sz";
connectAttr "transformGeometry5.og" "Transform_CtrlShape.cr";
connectAttr "transformGeometry1.og" "L_Arm_IK_03_Jnt_CtrlShape.cr";
connectAttr "L_Arm_IK_01_Jnt.msg" "L_Arm_IK_Handle.hsj";
connectAttr "effector1.hp" "L_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "L_Arm_IK_Handle.hsv";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.ctx" "L_Arm_IK_Handle.pvx";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.cty" "L_Arm_IK_Handle.pvy";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.ctz" "L_Arm_IK_Handle.pvz";
connectAttr "L_Arm_IK_Handle.pim" "L_Arm_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "L_Arm_IK_01_Jnt.pm" "L_Arm_IK_Handle_poleVectorConstraint1.ps";
connectAttr "L_Arm_IK_01_Jnt.t" "L_Arm_IK_Handle_poleVectorConstraint1.crp";
connectAttr "L_Arm_IK_PoleVector_Ctrl.t" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_IK_PoleVector_Ctrl.rp" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_IK_PoleVector_Ctrl.rpt" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_IK_PoleVector_Ctrl.pm" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.w0" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "transformGeometry2.og" "R_Arm_IK_03_Jnt_CtrlShape.cr";
connectAttr "R_Arm_IK_01_Jnt.msg" "R_Arm_IK_Handle.hsj";
connectAttr "effector2.hp" "R_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "R_Arm_IK_Handle.hsv";
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.ctx" "R_Arm_IK_Handle.pvx";
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.cty" "R_Arm_IK_Handle.pvy";
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.ctz" "R_Arm_IK_Handle.pvz";
connectAttr "R_Arm_IK_Handle.pim" "R_Arm_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "R_Arm_IK_01_Jnt.pm" "R_Arm_IK_Handle_poleVectorConstraint1.ps";
connectAttr "R_Arm_IK_01_Jnt.t" "R_Arm_IK_Handle_poleVectorConstraint1.crp";
connectAttr "R_Arm_IK_PoleVector_Ctrl.t" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_IK_PoleVector_Ctrl.rp" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_IK_PoleVector_Ctrl.rpt" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_IK_PoleVector_Ctrl.pm" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.w0" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "transformGeometry3.og" "L_Arm_IK_01_Jnt_CtrlShape.cr";
connectAttr "transformGeometry4.og" "R_Arm_IK_01_Jnt_CtrlShape.cr";
connectAttr "L_Arm_03_Loc_pointConstraint1.ctx" "L_Arm_03_Loc.tx";
connectAttr "L_Arm_03_Loc_pointConstraint1.cty" "L_Arm_03_Loc.ty";
connectAttr "L_Arm_03_Loc_pointConstraint1.ctz" "L_Arm_03_Loc.tz";
connectAttr "L_Arm_03_Loc.pim" "L_Arm_03_Loc_pointConstraint1.cpim";
connectAttr "L_Arm_03_Loc.rp" "L_Arm_03_Loc_pointConstraint1.crp";
connectAttr "L_Arm_03_Loc.rpt" "L_Arm_03_Loc_pointConstraint1.crt";
connectAttr "L_Arm_IK_03_Jnt_Ctrl.t" "L_Arm_03_Loc_pointConstraint1.tg[0].tt";
connectAttr "L_Arm_IK_03_Jnt_Ctrl.rp" "L_Arm_03_Loc_pointConstraint1.tg[0].trp";
connectAttr "L_Arm_IK_03_Jnt_Ctrl.rpt" "L_Arm_03_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_IK_03_Jnt_Ctrl.pm" "L_Arm_03_Loc_pointConstraint1.tg[0].tpm";
connectAttr "L_Arm_03_Loc_pointConstraint1.w0" "L_Arm_03_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_Loc_pointConstraint1.ctx" "L_Arm_01_Loc.tx";
connectAttr "L_Arm_01_Loc_pointConstraint1.cty" "L_Arm_01_Loc.ty";
connectAttr "L_Arm_01_Loc_pointConstraint1.ctz" "L_Arm_01_Loc.tz";
connectAttr "L_Arm_01_Loc.pim" "L_Arm_01_Loc_pointConstraint1.cpim";
connectAttr "L_Arm_01_Loc.rp" "L_Arm_01_Loc_pointConstraint1.crp";
connectAttr "L_Arm_01_Loc.rpt" "L_Arm_01_Loc_pointConstraint1.crt";
connectAttr "L_Arm_IK_01_Jnt_Ctrl.t" "L_Arm_01_Loc_pointConstraint1.tg[0].tt";
connectAttr "L_Arm_IK_01_Jnt_Ctrl.rp" "L_Arm_01_Loc_pointConstraint1.tg[0].trp";
connectAttr "L_Arm_IK_01_Jnt_Ctrl.rpt" "L_Arm_01_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_IK_01_Jnt_Ctrl.pm" "L_Arm_01_Loc_pointConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_Loc_pointConstraint1.w0" "L_Arm_01_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_Loc_pointConstraint1.ctx" "R_Arm_01_Loc.tx";
connectAttr "R_Arm_01_Loc_pointConstraint1.cty" "R_Arm_01_Loc.ty";
connectAttr "R_Arm_01_Loc_pointConstraint1.ctz" "R_Arm_01_Loc.tz";
connectAttr "R_Arm_01_Loc.pim" "R_Arm_01_Loc_pointConstraint1.cpim";
connectAttr "R_Arm_01_Loc.rp" "R_Arm_01_Loc_pointConstraint1.crp";
connectAttr "R_Arm_01_Loc.rpt" "R_Arm_01_Loc_pointConstraint1.crt";
connectAttr "R_Arm_IK_01_Jnt_Ctrl.t" "R_Arm_01_Loc_pointConstraint1.tg[0].tt";
connectAttr "R_Arm_IK_01_Jnt_Ctrl.rp" "R_Arm_01_Loc_pointConstraint1.tg[0].trp";
connectAttr "R_Arm_IK_01_Jnt_Ctrl.rpt" "R_Arm_01_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_IK_01_Jnt_Ctrl.pm" "R_Arm_01_Loc_pointConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_Loc_pointConstraint1.w0" "R_Arm_01_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_03_Loc_pointConstraint1.ctx" "R_Arm_03_Loc.tx";
connectAttr "R_Arm_03_Loc_pointConstraint1.cty" "R_Arm_03_Loc.ty";
connectAttr "R_Arm_03_Loc_pointConstraint1.ctz" "R_Arm_03_Loc.tz";
connectAttr "R_Arm_03_Loc.pim" "R_Arm_03_Loc_pointConstraint1.cpim";
connectAttr "R_Arm_03_Loc.rp" "R_Arm_03_Loc_pointConstraint1.crp";
connectAttr "R_Arm_03_Loc.rpt" "R_Arm_03_Loc_pointConstraint1.crt";
connectAttr "R_Arm_IK_03_Jnt_Ctrl.t" "R_Arm_03_Loc_pointConstraint1.tg[0].tt";
connectAttr "R_Arm_IK_03_Jnt_Ctrl.rp" "R_Arm_03_Loc_pointConstraint1.tg[0].trp";
connectAttr "R_Arm_IK_03_Jnt_Ctrl.rpt" "R_Arm_03_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_IK_03_Jnt_Ctrl.pm" "R_Arm_03_Loc_pointConstraint1.tg[0].tpm";
connectAttr "R_Arm_03_Loc_pointConstraint1.w0" "R_Arm_03_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.s" "L_Arm_IK_01_Jnt.is";
connectAttr "L_Arm_IK_01_Jnt_parentConstraint1.ctx" "L_Arm_IK_01_Jnt.tx";
connectAttr "L_Arm_IK_01_Jnt_parentConstraint1.cty" "L_Arm_IK_01_Jnt.ty";
connectAttr "L_Arm_IK_01_Jnt_parentConstraint1.ctz" "L_Arm_IK_01_Jnt.tz";
connectAttr "L_Arm_IK_01_Jnt_parentConstraint1.crx" "L_Arm_IK_01_Jnt.rx";
connectAttr "L_Arm_IK_01_Jnt_parentConstraint1.cry" "L_Arm_IK_01_Jnt.ry";
connectAttr "L_Arm_IK_01_Jnt_parentConstraint1.crz" "L_Arm_IK_01_Jnt.rz";
connectAttr "L_Arm_IK_01_Jnt.s" "L_Arm_IK_02_Jnt.is";
connectAttr "L_Arm_02_Scaled_Length_MD.ox" "L_Arm_IK_02_Jnt.tx";
connectAttr "L_Arm_IK_02_Jnt.s" "L_Arm_IK_03_Jnt.is";
connectAttr "L_Arm_03_Scaled_Length_MD.ox" "L_Arm_IK_03_Jnt.tx";
connectAttr "L_Arm_IK_03_Jnt.tx" "effector1.tx";
connectAttr "L_Arm_IK_03_Jnt.ty" "effector1.ty";
connectAttr "L_Arm_IK_03_Jnt.tz" "effector1.tz";
connectAttr "L_Arm_IK_01_Jnt.ro" "L_Arm_IK_01_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_IK_01_Jnt.pim" "L_Arm_IK_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_IK_01_Jnt.rp" "L_Arm_IK_01_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_IK_01_Jnt.rpt" "L_Arm_IK_01_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_IK_01_Jnt.jo" "L_Arm_IK_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_IK_01_Jnt_Ctrl.t" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_IK_01_Jnt_Ctrl.rp" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_IK_01_Jnt_Ctrl.rpt" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_IK_01_Jnt_Ctrl.r" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Arm_IK_01_Jnt_Ctrl.ro" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Arm_IK_01_Jnt_Ctrl.s" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Arm_IK_01_Jnt_Ctrl.pm" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_01_Jnt_parentConstraint1.w0" "L_Arm_IK_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.s" "R_Arm_IK_01_Jnt.is";
connectAttr "R_Arm_IK_01_Jnt_parentConstraint1.ctx" "R_Arm_IK_01_Jnt.tx";
connectAttr "R_Arm_IK_01_Jnt_parentConstraint1.cty" "R_Arm_IK_01_Jnt.ty";
connectAttr "R_Arm_IK_01_Jnt_parentConstraint1.ctz" "R_Arm_IK_01_Jnt.tz";
connectAttr "R_Arm_IK_01_Jnt_parentConstraint1.crx" "R_Arm_IK_01_Jnt.rx";
connectAttr "R_Arm_IK_01_Jnt_parentConstraint1.cry" "R_Arm_IK_01_Jnt.ry";
connectAttr "R_Arm_IK_01_Jnt_parentConstraint1.crz" "R_Arm_IK_01_Jnt.rz";
connectAttr "R_Arm_IK_01_Jnt.s" "R_Arm_IK_02_Jnt.is";
connectAttr "R_Arm_02_ScaledLength_MD.ox" "R_Arm_IK_02_Jnt.tx";
connectAttr "R_Arm_IK_02_Jnt.s" "R_Arm_IK_03_Jnt.is";
connectAttr "R_Arm_03_ScaledLength_MD.ox" "R_Arm_IK_03_Jnt.tx";
connectAttr "R_Arm_IK_03_Jnt.tx" "effector2.tx";
connectAttr "R_Arm_IK_03_Jnt.ty" "effector2.ty";
connectAttr "R_Arm_IK_03_Jnt.tz" "effector2.tz";
connectAttr "R_Arm_IK_01_Jnt.ro" "R_Arm_IK_01_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_IK_01_Jnt.pim" "R_Arm_IK_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_IK_01_Jnt.rp" "R_Arm_IK_01_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_IK_01_Jnt.rpt" "R_Arm_IK_01_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_IK_01_Jnt.jo" "R_Arm_IK_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_IK_01_Jnt_Ctrl.t" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_IK_01_Jnt_Ctrl.rp" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_IK_01_Jnt_Ctrl.rpt" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_IK_01_Jnt_Ctrl.r" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Arm_IK_01_Jnt_Ctrl.ro" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Arm_IK_01_Jnt_Ctrl.s" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Arm_IK_01_Jnt_Ctrl.pm" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IK_01_Jnt_parentConstraint1.w0" "R_Arm_IK_01_Jnt_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "makeNurbCircle3.oc" "transformGeometry3.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry4.ig";
connectAttr "makeNurbCircle5.oc" "transformGeometry5.ig";
connectAttr "L_Arm_01_LocShape.wp" "L_Arm_Chain_DIST.p1";
connectAttr "L_Arm_03_LocShape.wp" "L_Arm_Chain_DIST.p2";
connectAttr "L_Arm_IK_03_Jnt_Ctrl.Length1" "L_Arm_Jnt_02_Length_MD.i2x";
connectAttr "L_Arm_IK_03_Jnt_Ctrl.Length2" "L_Arm_Jnt_03_Length_MD.i2x";
connectAttr "L_Arm_Jnt_02_Length_MD.ox" "L_Arm_Chain_Length_PMA.i1[0]";
connectAttr "L_Arm_Jnt_03_Length_MD.ox" "L_Arm_Chain_Length_PMA.i1[1]";
connectAttr "L_Arm_Chain_DIST.d" "L_Arm_Scaler_MD.i1x";
connectAttr "L_Arm_GlobalScale_MD.i1x" "L_Arm_Scaler_MD.i2x";
connectAttr "L_Arm_Jnt_02_Length_MD.ox" "L_Arm_02_Scaled_Length_MD.i1x";
connectAttr "L_Arm_Stretch_BLND.opr" "L_Arm_02_Scaled_Length_MD.i2x";
connectAttr "L_Arm_Jnt_03_Length_MD.ox" "L_Arm_03_Scaled_Length_MD.i1x";
connectAttr "L_Arm_Stretch_BLND.opr" "L_Arm_03_Scaled_Length_MD.i2x";
connectAttr "L_Arm_Chain_DIST.d" "L_Arm_Stretch_COND.ft";
connectAttr "L_Arm_GlobalScale_MD.ox" "L_Arm_Stretch_COND.st";
connectAttr "L_Arm_Scaler_MD.ox" "L_Arm_Stretch_COND.ctr";
connectAttr "L_Arm_Stretch_COND.ocr" "L_Arm_Stretch_BLND.c1r";
connectAttr "L_Arm_IK_03_Jnt_Ctrl.Stretch" "L_Arm_Stretch_BLND.b";
connectAttr "Transform_Ctrl.GlobalScale" "L_Arm_GlobalScale_MD.i2x";
connectAttr "L_Arm_Chain_Length_PMA.o1" "L_Arm_GlobalScale_MD.i1x";
connectAttr "R_Arm_01_LocShape.wp" "R_Arm_Chain_DIST.p1";
connectAttr "R_Arm_03_LocShape.wp" "R_Arm_Chain_DIST.p2";
connectAttr "R_Arm_IK_03_Jnt_Ctrl.Length1" "R_Arm_02_Length_MD.i2x";
connectAttr "R_Arm_IK_03_Jnt_Ctrl.Length2" "R_Arm_03_Length_MD.i2x";
connectAttr "R_Arm_Chain_DIST.d" "R_Arm_Scaler_MD.i1x";
connectAttr "R_Arm_GlobalScale_MD.ox" "R_Arm_Scaler_MD.i2x";
connectAttr "R_Arm_02_Length_MD.ox" "R_Arm_Chain_Length_PMA.i1[0]";
connectAttr "R_Arm_03_Length_MD.ox" "R_Arm_Chain_Length_PMA.i1[1]";
connectAttr "R_Arm_Chain_DIST.d" "R_Arm_Stretch_COND.ft";
connectAttr "R_Arm_GlobalScale_MD.ox" "R_Arm_Stretch_COND.st";
connectAttr "R_Arm_Scaler_MD.ox" "R_Arm_Stretch_COND.ctr";
connectAttr "R_Arm_02_Length_MD.ox" "R_Arm_02_ScaledLength_MD.i1x";
connectAttr "R_Arm_Stretch_BLND.opr" "R_Arm_02_ScaledLength_MD.i2x";
connectAttr "R_Arm_Stretch_BLND.opr" "R_Arm_03_ScaledLength_MD.i2x";
connectAttr "R_Arm_03_Length_MD.ox" "R_Arm_03_ScaledLength_MD.i1x";
connectAttr "R_Arm_Stretch_COND.ocr" "R_Arm_Stretch_BLND.c1r";
connectAttr "R_Arm_IK_03_Jnt_Ctrl.Stretch" "R_Arm_Stretch_BLND.b";
connectAttr "R_Arm_Chain_Length_PMA.o1" "R_Arm_GlobalScale_MD.i1x";
connectAttr "Transform_Ctrl.GlobalScale" "R_Arm_GlobalScale_MD.i2x";
connectAttr "Transform_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "R_Arm_03_Length_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "R_Arm_Chain_Length_PMA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "R_Arm_IK_03_Jnt_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "R_Arm_IK_02_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "R_Arm_IK_03_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "R_Arm_Scaler_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "R_Arm_01_LocShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "R_Arm_Chain_DIST.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "R_Arm_03_LocShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "R_Arm_02_Length_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "R_Arm_Stretch_COND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "R_Arm_Stretch_BLND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "R_Arm_03_ScaledLength_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "R_Arm_GlobalScale_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "R_Arm_02_ScaledLength_MD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "L_Arm_Chain_DIST.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Jnt_02_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Jnt_03_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Chain_Length_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Scaler_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_02_Scaled_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_03_Scaled_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Stretch_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_Stretch_BLND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_GlobalScale_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_Chain_DIST.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_02_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_03_Length_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_Scaler_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_Chain_Length_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_Stretch_COND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_02_ScaledLength_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_03_ScaledLength_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_Stretch_BLND.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_GlobalScale_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Stretchy_IK_Practice.ma

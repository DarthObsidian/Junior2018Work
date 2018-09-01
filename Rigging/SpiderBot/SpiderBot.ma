//Maya ASCII 2018 scene
//Name: SpiderBot.ma
//Last modified: Sat, Sep 01, 2018 11:52:49 AM
//Codeset: 1252
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "2C7FB34D-47D8-3F54-99F3-53B1CD23A427";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.4576764729963063 20.566042553474254 31.684029579338159 ;
	setAttr ".r" -type "double3" 692.06164729739078 -2524.2000000009361 -3.9863989169179472e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "113807D5-483A-E7F6-4060-27B347736CC2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 37.382459176929352;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -7.6526055335998562 1.3593195080757146 -0.78736710548401245 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "F553D0C8-4515-52AA-37FD-DA9DA0244AC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.8570444664372863 1000.1234448386335 -2.8077880812276539 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "169083DB-4FB8-C6BB-16C5-B7BAF2678EC3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.98653534073151;
	setAttr ".ow" 31.93166383385687;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 5.397080659866333 0.13690949790179729 1.3745835423469543 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "604F864C-4566-31C8-AF8D-EC818D3DF76A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.15627072628561356 9.9225625013993266 1000.177968115848 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D4896A72-471D-E025-6AF7-049ED2C12C51";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.4822791529116;
	setAttr ".ow" 59.639492545224719;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0.014584541320800781 12.490201950073242 -0.30431103706359863 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F094CAA3-47A7-BFE3-9309-39BD622B5198";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 12.824738012506721 -2.9445998542665892 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35958F7F-4349-E13B-E466-E6BCC74AEDBE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 25.824463526057944;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "SpiderBot";
	rename -uid "22F82C45-4A94-9294-2609-C8BD9AB88485";
createNode transform -n "Controls" -p "SpiderBot";
	rename -uid "736FE4AB-4C45-7B90-985B-ACB23C0932C3";
createNode transform -n "R_FrontLeg_Ctrl_Grp" -p "Controls";
	rename -uid "0245A670-4E2C-12E9-31DD-E5B72EC98A84";
	setAttr ".t" -type "double3" -4.9036884307861328 1.3593195080757141 3.7883689403533922 ;
	setAttr ".r" -type "double3" 134.75861585750584 -1.1587630587092026 -91.148808043545458 ;
createNode transform -n "R_FrontLeg_Ctrl" -p "R_FrontLeg_Ctrl_Grp";
	rename -uid "1E631F4E-43DE-2A37-B60A-F19C2939D25A";
	setAttr ".rp" -type "double3" 1.1838620988101753 8.8817841970012523e-16 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.1838620988101753 8.8817841970012523e-16 -4.4408920985006262e-16 ;
createNode nurbsCurve -n "R_FrontLeg_CtrlShape" -p "R_FrontLeg_Ctrl";
	rename -uid "D0C12D03-45A6-4F90-A15C-34815B96290F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1838620988101753 1.9590290622280619 -1.9590290622280622
		1.1838620988101749 8.0015570618980474e-16 -2.7704854688859699
		1.1838620988101747 -1.9590290622280606 -1.9590290622280617
		1.1838620988101745 -2.7704854688859699 -8.1149099418919152e-16
		1.1838620988101749 -1.9590290622280606 1.9590290622280606
		1.1838620988101753 3.5299097387195116e-16 2.7704854688859699
		1.1838620988101756 1.9590290622280619 1.9590290622280604
		1.1838620988101758 2.7704854688859708 -2.9005841305608098e-16
		1.1838620988101753 1.9590290622280619 -1.9590290622280622
		1.1838620988101749 8.0015570618980474e-16 -2.7704854688859699
		1.1838620988101747 -1.9590290622280606 -1.9590290622280617
		;
createNode transform -n "R_MiddleLeg_Ctrl_Grp" -p "Controls";
	rename -uid "37418E24-4188-EA4E-0CF2-9B913476A31E";
	setAttr ".t" -type "double3" -7.6526055335998553 1.3593195080757141 -0.78736710548401179 ;
	setAttr ".r" -type "double3" -0.30112809626064657 -179.94864054865718 80.321038765966577 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "R_MiddleLeg_Ctrl" -p "R_MiddleLeg_Ctrl_Grp";
	rename -uid "9D1744D6-45F0-E258-7E37-CB8C66781F4B";
	setAttr ".rp" -type "double3" 1.3808331919065702 -0.24347814759091424 -5.5511151231257827e-16 ;
	setAttr ".sp" -type "double3" 1.3808331919065702 -0.24347814759091424 -5.5511151231257827e-16 ;
createNode nurbsCurve -n "R_MiddleLeg_CtrlShape" -p "R_MiddleLeg_Ctrl";
	rename -uid "B734D80A-49A8-AD97-DDC4-1DBAEADDE74E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7210150185590283 1.685788861267516 -1.9590290622280619
		1.3808331919065699 -0.24347814759091399 -2.7704854688859695
		1.0406513652541118 -2.1727451564493445 -1.9590290622280615
		0.89974343898181042 -2.9718737169574805 -6.180625503541995e-16
		1.0406513652541121 -2.1727451564493445 1.9590290622280608
		1.3808331919065704 -0.24347814759091449 2.7704854688859704
		1.7210150185590285 1.685788861267516 1.9590290622280606
		1.8619229448313299 2.484917421775652 -9.6629969221088958e-17
		1.7210150185590283 1.685788861267516 -1.9590290622280619
		1.3808331919065699 -0.24347814759091399 -2.7704854688859695
		1.0406513652541118 -2.1727451564493445 -1.9590290622280615
		;
createNode transform -n "R_BackLeg_Ctrl_Grp" -p "Controls";
	rename -uid "A1DFF2DC-4235-79A5-A722-F9B4C418D67E";
	setAttr ".t" -type "double3" -4.392485022544852 1.4079335927963257 -6.6613163948059047 ;
	setAttr ".r" -type "double3" -117.8570426164832 5.2068832182679472 -92.746015722329773 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "R_BackLeg_Ctrl" -p "R_BackLeg_Ctrl_Grp";
	rename -uid "9FC31456-4EB8-6F13-EF00-4E9D6B76281C";
	setAttr ".rp" -type "double3" 1.2802562170811047 -0.1120079054031784 -1.2212453270876722e-15 ;
	setAttr ".sp" -type "double3" 1.2802562170811047 -0.1120079054031784 -1.2212453270876722e-15 ;
createNode nurbsCurve -n "R_BackLeg_CtrlShape" -p "R_BackLeg_Ctrl";
	rename -uid "0B621EE9-4388-BF00-2501-8585D93B9609";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4509968500638395 1.8395664597960604 -1.9590290622280624
		1.2802562170811049 -0.11200790540317858 -2.7704854688859699
		1.1095155840983706 -2.0635822706024181 -1.9590290622280619
		1.0387924982687551 -2.8719508406476066 -9.762897244069882e-16
		1.1095155840983708 -2.0635822706024181 1.9590290622280604
		1.2802562170811054 -0.11200790540317905 2.7704854688859699
		1.4509968500638397 1.8395664597960604 1.9590290622280602
		1.5217199358934552 2.647935029841249 -4.5485714327387766e-16
		1.4509968500638395 1.8395664597960604 -1.9590290622280624
		1.2802562170811049 -0.11200790540317858 -2.7704854688859699
		1.1095155840983706 -2.0635822706024181 -1.9590290622280619
		;
createNode transform -n "L_BackLeg_Ctrl_Grp" -p "Controls";
	rename -uid "ABD2B230-4B7F-329E-01F6-31B128DEA42A";
	setAttr ".t" -type "double3" 4.3924850225448608 1.4079335927963257 -6.6613163948059162 ;
	setAttr ".r" -type "double3" -62.142957383516794 5.2068832182680174 -87.253984277670199 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "L_BackLeg_Ctrl" -p "L_BackLeg_Ctrl_Grp";
	rename -uid "5149FFF3-426D-3600-F892-739C83F042FC";
	setAttr ".rp" -type "double3" 1.2802562170810932 -0.1120079054031784 -1.8873791418627661e-15 ;
	setAttr ".sp" -type "double3" 1.2802562170810932 -0.1120079054031784 -1.8873791418627661e-15 ;
createNode nurbsCurve -n "L_BackLeg_CtrlShape" -p "L_BackLeg_Ctrl";
	rename -uid "D8D3D46E-4FBF-138B-009D-FFBE674AD873";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4509968500638273 1.8395664597960615 -1.9590290622280628
		1.2802562170810927 -0.11200790540317754 -2.7704854688859704
		1.1095155840983584 -2.0635822706024167 -1.9590290622280624
		1.0387924982687429 -2.8719508406476053 -1.5747693236189866e-15
		1.1095155840983586 -2.0635822706024167 1.9590290622280599
		1.2802562170810932 -0.11200790540317801 2.7704854688859695
		1.4509968500638275 1.8395664597960615 1.9590290622280597
		1.521719935893443 2.6479350298412503 -1.0533367424858761e-15
		1.4509968500638273 1.8395664597960615 -1.9590290622280628
		1.2802562170810927 -0.11200790540317754 -2.7704854688859704
		1.1095155840983584 -2.0635822706024167 -1.9590290622280624
		;
createNode transform -n "L_MiddleLeg_Ctrl_Grp" -p "Controls";
	rename -uid "4E712371-4BBF-67F5-5A3B-34930B3E4419";
	setAttr ".t" -type "double3" 7.65260553359985 1.3593195080756946 -0.78736710550567213 ;
	setAttr ".r" -type "double3" 0.30112809554695652 -0.051359451220994459 -80.321038765966605 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "L_MiddleLeg_Ctrl" -p "L_MiddleLeg_Ctrl_Grp";
	rename -uid "9C68D1EA-4035-AF29-F8AF-B4BCD65AD179";
	setAttr ".rp" -type "double3" 1.3808331919066938 -0.24347814759094444 1.1102230246251565e-16 ;
	setAttr ".sp" -type "double3" 1.3808331919066938 -0.24347814759094444 1.1102230246251565e-16 ;
createNode nurbsCurve -n "L_MiddleLeg_CtrlShape" -p "L_MiddleLeg_Ctrl";
	rename -uid "AFCECFF9-48E4-021E-F7A2-7E90046E8D6E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7210150185591522 1.6857888612674876 -1.9590290622280615
		1.3808331919066938 -0.24347814759094236 -2.770485468885969
		1.0406513652542357 -2.1727451564493729 -1.9590290622280611
		0.89974343898193432 -2.9718737169575089 -9.0056092353758812e-17
		1.040651365254236 -2.1727451564493729 1.9590290622280613
		1.3808331919066943 -0.24347814759094286 2.7704854688859708
		1.7210150185591524 1.6857888612674876 1.9590290622280611
		1.8619229448314538 2.4849174217756236 4.313764887793517e-16
		1.7210150185591522 1.6857888612674876 -1.9590290622280615
		1.3808331919066938 -0.24347814759094236 -2.770485468885969
		1.0406513652542357 -2.1727451564493729 -1.9590290622280611
		;
createNode transform -n "L_FrontLeg_Ctrl_Grp" -p "Controls";
	rename -uid "EB1F6DF0-4F77-D00D-A0EE-44BC3C0C2EF5";
	setAttr ".t" -type "double3" 4.9036884350253418 1.3593195080527085 3.7883689360403086 ;
	setAttr ".r" -type "double3" 45.241386501019967 -1.158762376046518 -88.85119127434811 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "L_FrontLeg_Ctrl" -p "L_FrontLeg_Ctrl_Grp";
	rename -uid "6B6FB50E-4D13-F9E2-220E-B0957AAE26B2";
	setAttr ".rp" -type "double3" 1.1838620855421516 5.3290705182007514e-15 4.3298697960381105e-15 ;
	setAttr ".sp" -type "double3" 1.1838620855421516 5.3290705182007514e-15 4.3298697960381105e-15 ;
createNode nurbsCurve -n "L_FrontLeg_CtrlShape" -p "L_FrontLeg_Ctrl";
	rename -uid "9AA39C63-47F6-EF7D-63B6-4BA5A21CDC5B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Deformers" -p "SpiderBot";
	rename -uid "595C2915-43D5-2429-A6AC-F489EC73A194";
createNode transform -n "IKHandle_Master_Grp" -p "Deformers";
	rename -uid "15DEAA31-4C9A-9610-D7AB-2493CBBF43B2";
createNode ikHandle -n "R_BackLeg_IKHandle" -p "IKHandle_Master_Grp";
	rename -uid "996F3992-4FC1-0C0B-54C4-5B932D8293DA";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_BackLeg_IKHandle_poleVectorConstraint1" -p "R_BackLeg_IKHandle";
	rename -uid "5CF1020C-40D4-A683-0963-F09868115C14";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_BackLeg_PoleVectorW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -1.8051211833953857 -0.69224262237548828 -3.1454086303710955 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_BackLeg_IKHandle_parentConstraint1" -p "R_BackLeg_IKHandle";
	rename -uid "EFEFB450-4331-186B-CA63-9E9093CA72EE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_BackLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.2802562170811043 0.11200790540317929 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.0177774980683254e-13 242.26784237097024 
		84.115149779278312 ;
	setAttr ".lr" -type "double3" 1.0813885916975958e-13 1.2722218725854067e-14 1.2005825130696432e-29 ;
	setAttr ".rst" -type "double3" -4.392485022544852 1.4079335927963255 -6.6613163948059055 ;
	setAttr ".rsrr" -type "double3" 1.0813885916975958e-13 1.2722218725854067e-14 1.2005825130696432e-29 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_BackLeg_IKHandle_scaleConstraint1" -p "R_BackLeg_IKHandle";
	rename -uid "A91D21E6-4091-16E8-AB13-CB8549072553";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_BackLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode ikHandle -n "R_MiddleLeg_IKHandle" -p "IKHandle_Master_Grp";
	rename -uid "25E7DD6B-4DB7-55BF-B6F5-73B85345D78D";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_MiddleLeg_IKHandle_poleVectorConstraint1" -p
		 "R_MiddleLeg_IKHandle";
	rename -uid "A0E98350-4746-B91A-B796-B0AA0910B818";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_MiddleLeg_PoleVectorW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -3.6799306869506836 0.25816774368286133 -0.0066804885864258923 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_MiddleLeg_IKHandle_parentConstraint1" -p "R_MiddleLeg_IKHandle";
	rename -uid "D8EA153D-41BF-626D-7BE2-C48465E714EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_MiddleLeg_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.3808331919065704 0.24347814759091335 5.5511151231257827e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708134e-14 179.69452348811635 80.320903801309726 ;
	setAttr ".lr" -type "double3" -2.8028638130397241e-14 -1.3020395727241275e-14 -6.3611093629270304e-15 ;
	setAttr ".rst" -type "double3" -7.6526055335998544 1.3593195080757141 -0.78736710548401179 ;
	setAttr ".rsrr" -type "double3" -2.8028638130397241e-14 -1.3020395727241275e-14 
		-6.3611093629270304e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_MiddleLeg_IKHandle_scaleConstraint1" -p "R_MiddleLeg_IKHandle";
	rename -uid "D2E3E7AE-4A17-7446-8614-10A08089CA84";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_MiddleLeg_CtrlW0" -dv 1 -min 0 
		-at "double";
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
createNode ikHandle -n "R_FrontLeg_IKHandle" -p "IKHandle_Master_Grp";
	rename -uid "DFA1764A-401A-634F-6ECE-79B6AD590D78";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_FrontLeg_IKHandle_poleVectorConstraint1" -p
		 "R_FrontLeg_IKHandle";
	rename -uid "619D5E00-47BB-FD59-7779-5695304A0AD9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FrontLeg_PoleVectorW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -2.3889699578285217 1.4876823425292969 2.3889710009098026 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FrontLeg_IKHandle_parentConstraint1" -p "R_FrontLeg_IKHandle";
	rename -uid "599E227F-4ADB-B311-2E37-7E94766DDE50";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FrontLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.1838620988101753 -1.7763568394002505e-15 
		2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708134e-14 134.7469981929448 88.368340782649412 ;
	setAttr ".lr" -type "double3" -3.8166656177562201e-14 -9.5416640443905503e-15 3.1780125345961146e-30 ;
	setAttr ".rst" -type "double3" -4.9036884307861319 1.3593195080757141 3.7883689403533918 ;
	setAttr ".rsrr" -type "double3" -3.8166656177562201e-14 -9.5416640443905503e-15 
		3.1780125345961146e-30 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FrontLeg_IKHandle_scaleConstraint1" -p "R_FrontLeg_IKHandle";
	rename -uid "54459842-45DA-6F84-6D79-A995E7B54A3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FrontLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode ikHandle -n "L_BackLeg_IKHandle" -p "IKHandle_Master_Grp";
	rename -uid "6AD67141-4984-8411-1328-8BBE8C742D7C";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_BackLeg_IKHandle_poleVectorConstraint1" -p "L_BackLeg_IKHandle";
	rename -uid "57183FBF-4EE2-A6BD-A427-9DA2469B8E94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_BackLeg_PoleVectorW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 1.8051211833953857 -0.6922426223754865 -3.1454086303710946 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_BackLeg_IKHandle_parentConstraint1" -p "L_BackLeg_IKHandle";
	rename -uid "D1D82D29-4914-8D75-675D-F1945DF46202";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_BackLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.2802562170810932 0.11200790540317929 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.1704802303446017e-13 -62.267842370970179 
		84.115149779278227 ;
	setAttr ".lr" -type "double3" 1.0495830448829606e-13 0 0 ;
	setAttr ".rst" -type "double3" 4.3924850225448617 1.4079335927963257 -6.6613163948059171 ;
	setAttr ".rsrr" -type "double3" 1.0495830448829606e-13 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_BackLeg_IKHandle_scaleConstraint1" -p "L_BackLeg_IKHandle";
	rename -uid "674A51C2-4BF5-5F16-D782-AC86DC4F35C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_BackLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode ikHandle -n "L_MiddleLeg_IKHandle" -p "IKHandle_Master_Grp";
	rename -uid "91360BD8-4A06-769D-95C9-088602CA1494";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_MiddleLeg_IKHandle_poleVectorConstraint1" -p
		 "L_MiddleLeg_IKHandle";
	rename -uid "0C48932E-43D2-5CC4-DDE1-759DC037677C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_MiddleLeg_PoleVectorW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 3.6799306869506836 0.25816774368286133 -0.0066804885864257813 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_MiddleLeg_IKHandle_parentConstraint1" -p "L_MiddleLeg_IKHandle";
	rename -uid "515A13B2-4897-BDC3-AE2F-C1A2B91B4DA6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_MiddleLeg_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.3808331919066943 0.24347814759094266 0 ;
	setAttr ".tg[0].tor" -type "double3" -7.6795966893958299e-14 0.30547651115961399 
		80.320903801310379 ;
	setAttr ".lr" -type "double3" 7.6855122107552016e-14 -4.969616689786332e-17 -6.1563553315382612e-15 ;
	setAttr ".rst" -type "double3" 7.6526055335998482 1.3593195080756948 -0.78736710550567202 ;
	setAttr ".rsrr" -type "double3" 7.6855122107552016e-14 -4.969616689786332e-17 -6.1563553315382612e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_MiddleLeg_IKHandle_scaleConstraint1" -p "L_MiddleLeg_IKHandle";
	rename -uid "53EA7428-4916-1EEF-1FBA-83A447B2DFB8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_MiddleLeg_CtrlW0" -dv 1 -min 0 
		-at "double";
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
createNode ikHandle -n "L_FrontLeg_IKHandle" -p "IKHandle_Master_Grp";
	rename -uid "2B523778-46EB-47AA-F5DE-86B0D0325B68";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "L_FrontLeg_IKHandle";
	rename -uid "47296ADE-4E9A-910B-D430-A385FFCCB0E0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FrontLeg_PoleVectorW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 2.3889698411500859 1.4876823425292951 2.388971117588186 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FrontLeg_IKHandle_parentConstraint1" -p "L_FrontLeg_IKHandle";
	rename -uid "5A15B1FF-4D27-0CB9-D638-778082277BDC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FrontLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.1838620855628965 7.9561246479897818e-11 
		6.0470928264777513e-09 ;
	setAttr ".tg[0].tor" -type "double3" -1.4660786138953086e-06 45.253004150937876 
		88.368339745964903 ;
	setAttr ".lr" -type "double3" -9.5416640443905519e-15 -3.1805546814635152e-15 2.544443745170814e-14 ;
	setAttr ".rst" -type "double3" 4.9036884307861328 1.3593195080757108 3.7883689403533962 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905519e-15 -3.1805546814635152e-15 
		2.544443745170814e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FrontLeg_IKHandle_scaleConstraint1" -p "L_FrontLeg_IKHandle";
	rename -uid "274486AA-49D6-F049-6764-96B8A33A6CC5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FrontLeg_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "PoleVector_Master_Grp" -p "Deformers";
	rename -uid "BCB1DFC4-4E50-A013-F838-88A143B12BC9";
createNode transform -n "R_FrontLeg_PoleVector_Grp" -p "PoleVector_Master_Grp";
	rename -uid "2D6C76D4-4379-1762-066E-07BC414D611D";
	setAttr ".t" -type "double3" -4.7000935077667236 11.51207447052002 3.5829679965972874 ;
	setAttr ".r" -type "double3" 134.75861585750584 -1.1587630587091933 -91.148808043545458 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "R_FrontLeg_PoleVector" -p "R_FrontLeg_PoleVector_Grp";
	rename -uid "20F84833-465D-23DC-F061-598C09627AB6";
createNode nurbsCurve -n "R_FrontLeg_PoleVectorShape" -p "R_FrontLeg_PoleVector";
	rename -uid "7DEFEF70-47FF-7672-B13F-AB973FE542BE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		-1.108194159549214e-05 2 3.3306300222874799e-16
		-0.78361162489122449 2 0.78361162489122449
		-1.1100856689111699e-21 2 1.1081941595936229e-05
		0.78361162489122449 2 0.78361162489122438
		1.108194159549214e-05 2 3.3306508795901987e-16
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		;
createNode transform -n "R_MiddleLeg_PoleVector_Grp" -p "PoleVector_Master_Grp";
	rename -uid "062F4709-4536-6419-26AF-A3A8EA5A2D1D";
	setAttr ".t" -type "double3" -5.9399347305297852 11.40105676651001 -0.79649841785430919 ;
	setAttr ".r" -type "double3" -0.30112809626064657 -179.94864054865718 80.321038765966549 ;
createNode transform -n "R_MiddleLeg_PoleVector" -p "R_MiddleLeg_PoleVector_Grp";
	rename -uid "2D3B6D42-4F35-3D21-11A4-A9B809B9E1F6";
createNode nurbsCurve -n "R_MiddleLeg_PoleVectorShape" -p "R_MiddleLeg_PoleVector";
	rename -uid "77B68A90-4DDB-D769-D261-5C95F2398266";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		-1.108194159549214e-05 2 3.3306300222874799e-16
		-0.78361162489122449 2 0.78361162489122449
		-1.1100856689111699e-21 2 1.1081941595936229e-05
		0.78361162489122449 2 0.78361162489122438
		1.108194159549214e-05 2 3.3306508795901987e-16
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		;
createNode transform -n "R_BackLeg_PoleVector_Grp" -p "PoleVector_Master_Grp";
	rename -uid "882C12D6-4469-0BEB-751C-859C027BD31D";
	setAttr ".t" -type "double3" -3.903455376625061 11.603752136230469 -5.7311210632324237 ;
	setAttr ".r" -type "double3" -117.8570426164832 5.2068832182679525 -92.746015722329759 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "R_BackLeg_PoleVector" -p "R_BackLeg_PoleVector_Grp";
	rename -uid "3F2E21AD-438D-5DBE-5B50-E3A64B756F4D";
createNode nurbsCurve -n "R_BackLeg_PoleVectorShape" -p "R_BackLeg_PoleVector";
	rename -uid "00E25954-415B-1B36-787B-4BB6ECF4A485";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		-1.108194159549214e-05 2 3.3306300222874799e-16
		-0.78361162489122449 2 0.78361162489122449
		-1.1100856689111699e-21 2 1.1081941595936229e-05
		0.78361162489122449 2 0.78361162489122438
		1.108194159549214e-05 2 3.3306508795901987e-16
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		;
createNode transform -n "L_BackLeg_PoleVector_Grp" -p "PoleVector_Master_Grp";
	rename -uid "F7A83A86-4A86-C983-ABE7-418B996E44DE";
	setAttr ".t" -type "double3" 3.903455376625061 11.603752136230471 -5.7311210632324228 ;
	setAttr ".r" -type "double3" -62.14295738351678 5.2068832182680111 -87.253984277670199 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "L_BackLeg_PoleVector" -p "L_BackLeg_PoleVector_Grp";
	rename -uid "BCA7CA01-4B01-DF97-BDCF-88BB265AF7CC";
createNode nurbsCurve -n "L_BackLeg_PoleVectorShape" -p "L_BackLeg_PoleVector";
	rename -uid "C9D0C29B-481F-B1D1-3D77-1E95E61B28A3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		-1.108194159549214e-05 2 3.3306300222874799e-16
		-0.78361162489122449 2 0.78361162489122449
		-1.1100856689111699e-21 2 1.1081941595936229e-05
		0.78361162489122449 2 0.78361162489122438
		1.108194159549214e-05 2 3.3306508795901987e-16
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		;
createNode transform -n "L_MiddleLeg_PoleVector_Grp" -p "PoleVector_Master_Grp";
	rename -uid "BBE5FA00-4281-6BA5-61AB-49AC2C903829";
	setAttr ".t" -type "double3" 5.9399347305297852 11.40105676651001 -0.79649841785430908 ;
	setAttr ".r" -type "double3" 0.30112809554695663 -0.051359451220994529 -80.321038765966634 ;
createNode transform -n "L_MiddleLeg_PoleVector" -p "L_MiddleLeg_PoleVector_Grp";
	rename -uid "F169FFC8-4A1A-795A-E639-7BAE30337714";
createNode nurbsCurve -n "L_MiddleLeg_PoleVectorShape" -p "L_MiddleLeg_PoleVector";
	rename -uid "EA3C272B-49ED-A8C6-3FD4-6AB8A2974191";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		-1.108194159549214e-05 2 3.3306300222874799e-16
		-0.78361162489122449 2 0.78361162489122449
		-1.1100856689111699e-21 2 1.1081941595936229e-05
		0.78361162489122449 2 0.78361162489122438
		1.108194159549214e-05 2 3.3306508795901987e-16
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		;
createNode transform -n "L_FrontLeg_PoleVector_Grp" -p "PoleVector_Master_Grp";
	rename -uid "BBCFD70E-47F8-E5F2-8962-C88863FCCD43";
	setAttr ".t" -type "double3" 4.7000933910882878 11.512074470520018 3.5829681132756708 ;
	setAttr ".r" -type "double3" 45.241386501019953 -1.1587623760465211 -88.851191274348096 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "L_FrontLeg_PoleVector" -p "L_FrontLeg_PoleVector_Grp";
	rename -uid "0AB2E765-4258-562D-9EEC-7589F2AB1B52";
createNode nurbsCurve -n "L_FrontLeg_PoleVectorShape" -p "L_FrontLeg_PoleVector";
	rename -uid "9347954B-41DC-A4BD-208A-50B371F012C5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		-1.108194159549214e-05 2 3.3306300222874799e-16
		-0.78361162489122449 2 0.78361162489122449
		-1.1100856689111699e-21 2 1.1081941595936229e-05
		0.78361162489122449 2 0.78361162489122438
		1.108194159549214e-05 2 3.3306508795901987e-16
		0.78361162489122449 2 -0.7836116248912246
		6.7857321517518679e-22 2 -1.1081941595270095e-05
		-0.78361162489122449 2 -0.78361162489122438
		;
createNode transform -n "Skeleton" -p "SpiderBot";
	rename -uid "410E4473-46C8-38E0-C877-31946197FDCA";
createNode joint -n "COG" -p "Skeleton";
	rename -uid "59B3D54D-4E04-078F-0E9B-F49530090C67";
	setAttr ".t" -type "double3" 0 12.490201950073242 -0.30431103706359863 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 0 -90 0 ;
createNode joint -n "R_FrontLeg_01" -p "COG";
	rename -uid "EE6BFCA2-468E-F324-C166-D78101C699EF";
	setAttr ".t" -type "double3" 1.4983080327510829 -2.4658098220825195 2.3111235499382023 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -21.949249187512997 -40.326697894867351 31.91173334944369 ;
createNode joint -n "R_FrontLeg_02" -p "R_FrontLeg_01";
	rename -uid "4420526E-4C85-2314-6D13-A8A8F23EA3B1";
	setAttr ".t" -type "double3" 3.6915523367370335 0 0 ;
	setAttr ".r" -type "double3" -1.9807906610873537e-33 2.056441268665779e-16 -6.0276968770207248e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.25288672151148978 0.0072035879777932561 -112.13398941682242 ;
createNode joint -n "R_FrontLeg_03" -p "R_FrontLeg_02";
	rename -uid "CCD1AD26-4F9C-EB48-6454-7D89BC144AD1";
	setAttr ".t" -type "double3" 10.156873227908903 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector4" -p "R_FrontLeg_02";
	rename -uid "A1AE1432-4F3E-088B-E3EE-4B9A154352C4";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_MiddleLeg_01" -p "COG";
	rename -uid "9443EBE8-4526-8BFE-17EC-D6BAD64002AF";
	setAttr ".t" -type "double3" -0.48550689220428522 -1.3473129272460938 2.2600040435791016 ;
	setAttr ".r" -type "double3" -5.897457437877755e-15 1.2734072280835675e-14 1.5376457852660797e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -91.485929977629979 -85.985616486760918 91.482285887598209 ;
createNode joint -n "R_MiddleLeg_02" -p "R_MiddleLeg_01";
	rename -uid "7FE1FB5C-43B6-DAFC-1A1C-57A6CD90D9E0";
	setAttr ".t" -type "double3" 3.6889815767454546 5.809580874233328e-16 9.5149582657327869e-16 ;
	setAttr ".r" -type "double3" 2.202924352411077e-32 5.4421471153860492e-16 -1.2745265680342252e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.40366130852199666 0.06884692296999044 -84.334184303160498 ;
createNode joint -n "R_MiddleLeg_03" -p "R_MiddleLeg_02";
	rename -uid "97B32659-426A-D060-D534-C0A2C44A0AD4";
	setAttr ".t" -type "double3" 10.186746871694703 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector5" -p "R_MiddleLeg_02";
	rename -uid "6F3EC1F8-4134-1327-D16C-A8B4CB960407";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_BackLeg_01" -p "COG";
	rename -uid "2BA990A5-402E-99CD-2084-FFB0239E5E2A";
	setAttr ".t" -type "double3" -2.2814013957977299 -0.19420719146728516 2.0983341932296748 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 173.8584989244836 -29.26966493289984 -167.5881905358257 ;
createNode joint -n "R_BackLeg_02" -p "R_BackLeg_01";
	rename -uid "D623840A-45EC-36D5-E2B0-D69B7E0513AB";
	setAttr ".t" -type "double3" 3.6920533293804167 0 0 ;
	setAttr ".r" -type "double3" -1.711607907220004e-32 -1.3457839292132186e-15 -3.5468789090447027e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.1078045172729256 -0.21720709746026062 -73.312497216286118 ;
createNode joint -n "R_BackLeg_03" -p "R_BackLeg_02";
	rename -uid "E54D2574-4D74-4DF8-0F7D-F09C261B16E1";
	setAttr ".t" -type "double3" 10.249835565515433 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector6" -p "R_BackLeg_02";
	rename -uid "4E234692-451F-A330-1715-DB8F93C0E389";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_BackLeg_01" -p "COG";
	rename -uid "0580A4D3-468D-52B1-6EA8-2680ADB48460";
	setAttr ".t" -type "double3" -2.281401395797729 -0.19420719146728516 -2.0983341932296757 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.1415010755163992 150.73033506710013 12.411809464174292 ;
createNode joint -n "L_BackLeg_02" -p "L_BackLeg_01";
	rename -uid "790316A1-4F00-870F-D4C0-3C824CFD70FF";
	setAttr ".t" -type "double3" 3.692053329380415 0 0 ;
	setAttr ".r" -type "double3" 0 1.3457839292132217e-15 -3.5468789090447052e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.1078045172729287 0.21720709746026484 -73.312497216286047 ;
createNode joint -n "L_BackLeg_03" -p "L_BackLeg_02";
	rename -uid "E501FC44-4923-EB67-5109-ACA09A0A2E75";
	setAttr ".t" -type "double3" 10.249835565515436 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector3" -p "L_BackLeg_02";
	rename -uid "1B7A6FDC-4508-EE06-541E-E5BAEA5A7248";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_MiddleLeg_01" -p "COG";
	rename -uid "4F2AE939-4190-A6FB-E280-4DA1E8C25029";
	setAttr ".t" -type "double3" -0.48550689220428411 -1.3473129272460938 -2.2600040435791016 ;
	setAttr ".r" -type "double3" 5.0741006590745211e-07 -1.0956240928480311e-06 1.3229668825926593e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 91.485929977753685 85.985616486760904 91.482285887598053 ;
createNode joint -n "L_MiddleLeg_02" -p "L_MiddleLeg_01";
	rename -uid "F26A88D5-4D24-A4A3-D00E-5698B44E1327";
	setAttr ".t" -type "double3" 3.688981576745455 0 0 ;
	setAttr ".r" -type "double3" 1.0617291889341905e-30 -8.6167329174479699e-16 -2.0180003993875216e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.40366130779607884 -0.068846922971418006 -84.334184303160328 ;
createNode joint -n "L_MiddleLeg_03" -p "L_MiddleLeg_02";
	rename -uid "45D07CA7-47BC-AB3C-047C-26A48DBB6116";
	setAttr ".t" -type "double3" 10.186746871694702 3.8376420097296915e-15 3.6429192995512949e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector2" -p "L_MiddleLeg_02";
	rename -uid "30955E6F-4AAB-C92B-81F1-85B72EFE3C06";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_FrontLeg_01" -p "COG";
	rename -uid "0DC97FB8-4D74-371A-2DD6-6480FA0D876C";
	setAttr ".t" -type "double3" 1.4983080327510838 -2.4658098220825195 -2.3111235499382015 ;
	setAttr ".r" -type "double3" -3.6827839846954275e-08 -2.5610561377454745e-06 3.476099672916145e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 21.949249187513047 40.326697894867316 31.911733349443644 ;
createNode joint -n "L_FrontLeg_02" -p "L_FrontLeg_01";
	rename -uid "7117F0C3-412F-BA62-4A6F-9D9642A10DA1";
	setAttr ".t" -type "double3" 3.6915523367370358 1.7415015493157194e-16 0 ;
	setAttr ".r" -type "double3" -4.117422485547786e-30 1.5320794138050841e-16 7.7173421186422748e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.25288672151163871 -0.0072035879778934433 -112.1339894168224 ;
createNode joint -n "L_FrontLeg_03" -p "L_FrontLeg_02";
	rename -uid "52BCB624-4C63-5203-740F-F8B8A80422F8";
	setAttr ".t" -type "double3" 10.156873227908905 0 5.4457398274486131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector1" -p "L_FrontLeg_02";
	rename -uid "3A7C4FF7-4AA9-EA15-7A6A-2D951437EDF2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Geometry" -p "SpiderBot";
	rename -uid "C6BAF248-4ECA-3EC5-F482-AE833CBFE2D6";
createNode transform -n "SpiderBot_Geo" -p "Geometry";
	rename -uid "F2CAA3E9-490A-8544-C9A0-779B5ED7B625";
	setAttr ".rp" -type "double3" 5.5193775838561123 7.8154968832095619 -1.7727282004878839 ;
	setAttr ".sp" -type "double3" 5.5193775838561123 7.8154968832095619 -1.7727282004878839 ;
createNode mesh -n "SpiderBot_GeoShape" -p "SpiderBot_Geo";
	rename -uid "CC3CF072-44A6-787C-5BD7-99BD0A6ED44C";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52367948740720749 0.62670700252056122 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "SpiderBot_GeoShapeOrig" -p "SpiderBot_Geo";
	rename -uid "9371C6B8-454B-6C93-8FC4-E09B49603ADF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5816 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.091770999 0.369551 0.064251997
		 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097 0.019934
		 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197 0.099601001
		 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999 0.306741
		 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386 0.062306002
		 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551 0.097764999
		 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197 0.097764999
		 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801 0.30121699
		 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501 0.138069
		 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572 0.65227503
		 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001 0.65341401
		 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499 0.73260999
		 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703 0.125136
		 0.65086901 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297 0.074359
		 0.58401501 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402 0.063110001
		 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301 0.10611
		 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899 0.116622
		 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499
		 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903
		 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099
		 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749
		 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503
		 0.21557599 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702
		 0.29026499 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401
		 0.29699001 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703
		 0.183137 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901
		 0.18320601 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699
		 0.198421 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265
		 0.64977902 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359
		 0.58401501 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001
		 0.65320301 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498
		 0.093028001 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001
		 0.130492 0.53603703 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001
		 0.29699001 0.65341401 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503
		 0.29158199 0.55224901 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002
		 0.306741 0.48896801 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999
		 0.29026499 0.91377503 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001
		 0.097764999 0.46727601 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703
		 0.061469 0.83352 0.14167701 0.83245897 0.119689 0.75301498 0.14167701 0.83245897
		 0.061469 0.83352 0.063110001 0.75552702 0.14167701 0.83245897 0.119689 0.75301498
		 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903 0.180035 0.54325098
		 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002 0.52486098 0.198421
		 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401 0.24582 0.55150002
		 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499 0.73260999
		 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099 0.74019098
		 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622 0.768843 0.21557599
		 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297
		 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918
		 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689 0.75301498 0.135295
		 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401
		 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801
		 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702
		 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999
		 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352
		 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101 0.92042899 0.091770999 0.369551
		 0.099601001 0.36329001 0.158557 0.94473398 0.138069 0.95506698 0.058373999 0.917386
		 0.062306002 0.89308703 0.138069 0.95506698 0.158557 0.94473398 0.138069 0.95506698
		 0.069045 0.97977501 0.046569001 0.95226097 0.058373999 0.917386 0.058373999 0.917386
		 0.046569001 0.95226097 0.52856898 0.97485399 0.53409302 0.98160398 0.52432799 0.98150498
		 0.51881802 0.97346097 0.50092202 0.553137 0.526932 0.44578201 0.52451599 0.438366
		 0.49828899 0.55254501 0.49828899 0.55254501 0.52451599 0.438366 0.526932 0.44578201
		 0.50092202 0.553137 0.56129599 0.49112499;
	setAttr ".uvst[0].uvsp[250:499]" 0.58846599 0.54950303 0.57420999 0.51922601
		 0.56166101 0.49178499 0.58846599 0.54950303 0.56129599 0.49112499 0.56166101 0.49178499
		 0.57420999 0.51922601 0.59274697 0.98832899 0.54504901 0.98805302 0.55490899 0.996889
		 0.58270597 0.99704999 0.54521102 0.97227699 0.59290898 0.97255301 0.59274697 0.98832899
		 0.58270597 0.99704999 0.59274697 0.98832899 0.59290898 0.97255301 0.59290898 0.97255301
		 0.60472399 0.96858698 0.60472399 0.96858698 0.60472399 0.96858698 0.602368 0.94401699
		 0.602368 0.94401699 0.602368 0.94401699 0.593413 0.82681203 0.593413 0.82681203 0.593413
		 0.82681203 0.59387797 0.69657397 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697
		 0.98832899 0.58270597 0.99704999 0.55490899 0.996889 0.59290898 0.97255301 0.59274697
		 0.98832899 0.54504901 0.98805302 0.54521102 0.97227699 0.60472399 0.96858698 0.531147
		 0.967713 0.60472399 0.96858698 0.602368 0.94401699 0.52183598 0.94245797 0.602368
		 0.94401699 0.593413 0.82681203 0.49801701 0.83599597 0.51968998 0.81626302 0.593413
		 0.82681203 0.52219099 0.57310098 0.50092202 0.553137 0.58846599 0.54950303 0.51962101
		 0.69467402 0.58846599 0.54950303 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701
		 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797 0.52183598 0.94245797 0.531147
		 0.967713 0.531147 0.967713 0.59290898 0.97255301 0.54521102 0.97227699 0.358565 0.39152601
		 0.447299 0.39152601 0.471104 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758
		 0.683725 0.47168499 0.829763 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503
		 0.45107201 0.98891401 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999
		 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288
		 0.56166101 0.49178499 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201
		 0.56129599 0.49112499 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501
		 0.51718199 0.81656498 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701
		 0.52856803 0.974949 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201
		 0.51969302 0.57243699 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366
		 0.51474702 0.43864399 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502
		 0.52451599 0.438366 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399
		 0.48696399 0.56242502 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201
		 0.517124 0.69449401 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501
		 0.50955802 0.94372803 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498
		 0.53409302 0.98160398 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366
		 0.517124 0.69449401 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137
		 0.49828899 0.55254501 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102
		 0.97227699 0.53409302 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901
		 0.98805302 0.51962101 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599
		 0.54950303 0.58846599 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499
		 0.459288 0.53873801 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914
		 0.46362701 0.57420999 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398
		 0.50026798 0.51807398 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914
		 0.46362701 0.51807398 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398
		 0.50026798 0.53873801 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099
		 0.57310098 0.51962101 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899
		 0.996889 0.55490899 0.996889 0.58270597 0.99704999 0.51962101 0.69467402 0.77148402
		 0.87109399 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699
		 0.87890601 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402
		 0.78125 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399
		 0.74804699 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402
		 0.74804699 0.92773402 0.74609399 0.92773402 0.69780701 0.93968499 0.64248902 0.935516
		 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381
		 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401
		 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499 0.693349 0.94836199
		 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692 0.94568998 0.649692
		 0.98202401 0.77148402 0.87109399 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699
		 0.87109399 0.77929699 0.87890601 0.828125 0.87890601 0.83203101 0.90625 0.77929699
		 0.90625 0.83203101 0.92773402 0.78125 0.92773402 0.78515601 0.90625 0.78710902 0.87890601
		 0.74218798 0.87109399 0.74804699 0.87890601 0.74804699 0.90625 0.74609399 0.90625
		 0.77539098 0.92773402 0.74804699 0.92773402 0.74609399 0.92773402 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.95507801 0.98242199 0.98828101
		 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098;
	setAttr ".uvst[0].uvsp[500:749]" 0.95507801 0.98242199 0.98828101 0.98242199
		 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199
		 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199
		 0.98828101 0.83789098 0.95507801 0.83789098 0.95703101 0.97851598 0.94531298 0.97851598
		 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598 0.96679699 0.99804699
		 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598 0.98828101 0.99804699
		 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801 -1.47460902 0.55273402
		 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402 0.69780701 0.93968499 0.64248902
		 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202 0.61381 0.9892
		 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799 0.979352 0.649692
		 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499 0.693349
		 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692 0.94568998
		 0.649692 0.98202401 0.88239098 0.83063501 0.84343898 0.75240302 0.82212299 0.750027
		 0.83970898 0.854976 0.72881001 0.854976 0.74639797 0.750027 0.72508198 0.75240302
		 0.68612802 0.83063501 0.85143697 0.932338 0.90570199 0.91825497 0.88239098 0.83063501
		 0.83970898 0.854976 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.247372 0.44820699 0.248547 0.45052999
		 0.261794 0.50718498 0.153832 0.50628698 0.152189 0.50718498 0.164968 0.45052999 0.16719501
		 0.44820699 0.16719501 0.44820699 0.164968 0.45052999 0.17610399 0.40507901 0.178331
		 0.406389 0.82212299 0.750027 0.74639797 0.750027 0.72881001 0.854976 0.83970898 0.854976
		 0.85143697 0.932338 0.83970898 0.854976 0.72881001 0.854976 0.717085 0.93233401 0.82067102
		 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.29101601 0.40625
		 0.29101601 0.39843801 0.25585899 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801
		 0.29101601 0.39843801 0.29101601 0.40625 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801
		 0.29101601 0.40625 0.26171899 0.40234399 0.25585899 0.39453101 0.32031301 0.40625
		 0.29101601 0.40625 0.29101601 0.39843801 0.32421899 0.40234399 0.178331 0.406389
		 0.23623601 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.84970701 0.98624903
		 0.85143697 0.932338 0.717085 0.93233401 0.71881098 0.98624498 0.328125 0.39648399
		 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399 0.261794 0.50718498
		 0.152189 0.50718498 0.153832 0.50628698 0.26073399 0.50628698 0.247372 0.44820699
		 0.26073399 0.50628698 0.153832 0.50628698 0.16719501 0.44820699 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399 0.52856898 0.97485399 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802
		 0.97346097 0.50092202 0.553137 0.526932 0.44578201 0.52451599 0.438366 0.49828899
		 0.55254501 0.49828899 0.55254501 0.52451599 0.438366 0.526932 0.44578201 0.50092202
		 0.553137 0.56129599 0.49112499 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101
		 0.49178499 0.58846599 0.54950303 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999
		 0.51922601 0.59274697 0.98832899 0.54504901 0.98805302 0.55490899 0.996889 0.58270597
		 0.99704999 0.54521102 0.97227699 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597
		 0.99704999 0.59274697 0.98832899 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399
		 0.96858698 0.60472399 0.96858698 0.60472399 0.96858698 0.602368 0.94401699 0.602368
		 0.94401699 0.602368 0.94401699 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203
		 0.59387797 0.69657397 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899
		 0.58270597 0.99704999 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899
		 0.54504901 0.98805302 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713
		 0.60472399 0.96858698 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699
		 0.593413 0.82681203 0.49801701 0.83599597 0.51968998 0.81626302;
	setAttr ".uvst[0].uvsp[750:999]" 0.593413 0.82681203 0.52219099 0.57310098
		 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303
		 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898
		 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104
		 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763
		 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401
		 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098
		 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288 0.56166101 0.49178499
		 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201 0.56129599 0.49112499
		 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498
		 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949
		 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699
		 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399
		 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366
		 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502
		 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401
		 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803
		 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398
		 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401
		 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302
		 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101
		 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599
		 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801
		 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999
		 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398
		 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398
		 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801
		 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101
		 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899
		 0.996889 0.58270597 0.99704999 0.51962101 0.69467402 0.88239098 0.83063501 0.84343898
		 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976 0.74639797
		 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338 0.90570199
		 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199 0.717085
		 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801 0.26171899
		 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399 0.25585899
		 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389 0.23741101
		 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901 0.23623601
		 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601 0.406389
		 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501 0.44820699
		 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372 0.44820699
		 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331 0.406389 0.16719501
		 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498 0.164968 0.45052999
		 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027 0.72881001 0.854976
		 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001 0.854976 0.82067102
		 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027 0.32226601 0.39843801
		 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699
		 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625 0.29101601 0.40625
		 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338 0.71881098 0.98624498
		 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399
		 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698 0.26073399 0.50628698
		 0.091770999 0.369551 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601
		 0.046569001 0.95226097 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501
		 0.110485 0.465197 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901
		 0.30121699 0.48045999 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602
		 0.058373999 0.917386 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698
		 0.091770999 0.369551 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501
		 0.110485 0.465197 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001
		 0.306741 0.48896801 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703
		 0.069045 0.97977501 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.210265 0.64977902 0.252572 0.65227503 0.21557599
		 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001 0.65341401 0.32378799
		 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499 0.73260999 0.312702
		 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703 0.125136 0.65086901
		 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297 0.074359 0.58401501
		 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402 0.063110001 0.75552702
		 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301 0.10611 0.53121001
		 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899 0.116622 0.52293497
		 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499 0.75819302
		 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903 0.26120099
		 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099 0.53941703
		 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749 0.99116099
		 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503 0.21557599
		 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702 0.29026499
		 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401 0.29699001
		 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703 0.183137
		 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901 0.18320601
		 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699 0.198421
		 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265 0.64977902
		 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359 0.58401501
		 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001 0.65320301
		 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498 0.093028001
		 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001 0.130492 0.53603703
		 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001 0.29699001 0.65341401
		 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503 0.29158199 0.55224901
		 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002 0.306741 0.48896801
		 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999 0.29026499 0.91377503
		 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001 0.097764999 0.46727601
		 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703 0.061469 0.83352 0.14167701
		 0.83245897 0.119689 0.75301498 0.14167701 0.83245897 0.061469 0.83352 0.063110001
		 0.75552702 0.14167701 0.83245897 0.119689 0.75301498 0.13953499 0.75819302 0.130492
		 0.53603703 0.135295 0.52912903 0.180035 0.54325098 0.183137 0.55549699 0.183137 0.55549699
		 0.180035 0.54325098 0.192002 0.52486098 0.198421 0.553119 0.198421 0.553119 0.192002
		 0.52486098 0.259767 0.54373401 0.24582 0.55150002 0.24582 0.55150002 0.259767 0.54373401
		 0.29158199 0.55224901 0.29438499 0.73260999 0.27644899 0.74265897 0.26120099 0.74019098
		 0.29438499 0.73260999 0.26120099 0.74019098 0.248807 0.73138702 0.248807 0.73138702
		 0.26120099 0.74019098 0.191622 0.768843 0.21557599 0.73471701 0.21557599 0.73471701
		 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297 0.185413 0.73494297 0.180673
		 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918 0.74646097 0.140361 0.75189501
		 0.13953499 0.75819302 0.119689 0.75301498 0.135295 0.52912903 0.130492 0.53603703
		 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401 0.27634099 0.53941703
		 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801 0.29158199 0.55224901
		 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702 0.068103999 0.65794402
		 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999 0.65794402 0.074359 0.58401501
		 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352 0.063110001 0.75552702 0.29026499
		 0.91377503 0.28239101 0.92042899 0.091770999 0.369551 0.099601001 0.36329001 0.158557
		 0.94473398 0.138069 0.95506698 0.058373999 0.917386 0.062306002 0.89308703 0.138069
		 0.95506698 0.158557 0.94473398 0.138069 0.95506698 0.069045 0.97977501 0.046569001
		 0.95226097 0.058373999 0.917386 0.058373999 0.917386 0.046569001 0.95226097 0.88565999
		 0.55092603 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812
		 0.80722499 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478
		 0.790829 0.93568802 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499
		 0.93568802 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953
		 0.89381701 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102
		 0.882478 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198
		 0.80684102 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001
		 0.760764 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598
		 0.99804699 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601
		 0.984375 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829
		 0.87784398 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701
		 0.89046001 0.760764 0.92724103 0.76102901 0.92724103 0.76102901;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.89046001 0.760764 0.87962699 0.69417298
		 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102 0.62711298
		 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871 0.58281398
		 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602 0.78776801
		 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299 0.697236
		 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698 0.58336103
		 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098 0.82421899
		 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999 0.55092603
		 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602 0.55142099
		 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199 0.60996097
		 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102 0.62711298
		 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102 0.62711298
		 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415 0.98548299
		 0.632415 0.93326402 0.55445099 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701
		 0.54415202 0.922194 0.56268197 0.90489799 0.55673701 0.91118097 0.58714199 0.894777
		 0.57577199 0.91118097 0.58714199 0.922194 0.56268197 0.922194 0.56268197 0.93326402
		 0.55445099 0.93326402 0.55445099 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998
		 0.53527802 0.91465998 0.53527802 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701
		 0.54415202 0.90329701 0.54415202 0.93326402 0.55445099 0.922194 0.56268197 0.90489799
		 0.55673701 0.90489799 0.55673701 0.922194 0.56268197 0.91118097 0.58714199 0.894777
		 0.57577199 0.894777 0.57577199 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701
		 0.54415202 0.90329701 0.54415202 0.91465998 0.53527802 0.60177797 0.51121497 0.60815501
		 0.53058201 0.64851898 0.51776099 0.64129901 0.495401 0.68799299 0.48417801 0.694282
		 0.50388497 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998 0.62255698
		 0.69637197 0.63816899 0.68434 0.609712 0.658557 0.68147498 0.72371203 0.67420399
		 0.73255998 0.65184897 0.66894501 0.69097197 0.71272302 0.69901901 0.70456398 0.66212499
		 0.65384901 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398 0.67958403
		 0.75030202 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159 0.709773 0.64167202
		 0.75165403 0.52244002 0.73714203 0.46809 0.72608399 0.46415401 0.74320859 0.52505672
		 0.75822997 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898 0.71015197 0.57198602
		 0.66263402 0.57925498 0.66354001 0.59908402 0.70771301 0.55317098 0.660083 0.560305
		 0.70397902 0.53557497 0.65644997 0.54351002 0.659244 0.80057198 0.68692702 0.80496401
		 0.69194102 0.76880097 0.67273301 0.75392801 0.66895401 0.83796299 0.64602602 0.84729803
		 0.61720401 0.56577402 0.61997002 0.58558398 0.621387 0.59997499 0.66297001 0.624327
		 0.62158799 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001 0.619008 0.64908397
		 0.62129599 0.63988101 0.61717898 0.74692702 0.60069299 0.781793 0.62854099 0.79232401
		 0.64025003 0.74519801 0.59942001 0.81702501 0.61655903 0.83938402 0.71140701 0.53491002
		 0.72365201 0.53111607 0.71005899 0.467933 0.70192498 0.47639501 0.72852063 0.54919553
		 0.71505499 0.55338103 0.60177797 0.51121497 0.60815501 0.53058201 0.64851898 0.51776099
		 0.64129901 0.495401 0.68799299 0.48417801 0.694282 0.50388497 0.66718602 0.48136601
		 0.68795401 0.48404899 0.59746301 0.66676998 0.62255698 0.69637197 0.63816899 0.68434
		 0.609712 0.658557 0.68147498 0.72371203 0.67420399 0.73255998 0.65184897 0.66894501
		 0.69097197 0.71272302 0.69901901 0.70456398 0.66212499 0.65384901 0.71692699 0.70931
		 0.71319199 0.72687799 0.69240499 0.65115398 0.67958403 0.75030202 0.69706702 0.744757
		 0.616422 0.72525501 0.70974302 0.64159 0.709773 0.64167202 0.75165403 0.52244002
		 0.73714203 0.46809 0.72608399 0.46415401 0.74320859 0.52505672 0.75822997 0.53996098
		 0.74898398 0.54283488 0.71097499 0.59457898 0.71015197 0.57198602 0.66263402 0.57925498
		 0.66354001 0.59908402 0.70771301 0.55317098 0.660083 0.560305 0.70397902 0.53557497
		 0.65644997 0.54351002 0.659244 0.80057198 0.68692702 0.80496401 0.69194102 0.76880097
		 0.67273301 0.75392801 0.66895401 0.83796299 0.64602602 0.84729803 0.61720401 0.56577402
		 0.61997002 0.58558398 0.621387 0.59997499 0.66297001 0.624327 0.62158799 0.62073702
		 0.70987898 0.62097102 0.61472303 0.55215001 0.619008 0.64908397 0.62129599 0.63988101
		 0.61717898 0.74692702 0.60069299 0.781793 0.62854099 0.79232401 0.64025003 0.74519801
		 0.59942001 0.81702501 0.61655903 0.83938402 0.71140701 0.53491002 0.72365201 0.53111607
		 0.71005899 0.467933 0.70192498 0.47639501 0.72852063 0.54919553 0.71505499 0.55338103
		 0.60177797 0.51121497 0.60815501 0.53058201 0.64851898 0.51776099 0.64129901 0.495401
		 0.68799299 0.48417801 0.694282 0.50388497 0.66718602 0.48136601 0.68795401 0.48404899
		 0.59746301 0.66676998 0.62255698 0.69637197 0.63816899 0.68434 0.609712 0.658557
		 0.68147498 0.72371203 0.67420399 0.73255998 0.65184897 0.66894501 0.69097197 0.71272302
		 0.69901901 0.70456398 0.66212499 0.65384901 0.71692699 0.70931 0.71319199 0.72687799
		 0.69240499 0.65115398 0.67958403 0.75030202 0.69706702 0.744757 0.616422 0.72525501
		 0.70974302 0.64159 0.709773 0.64167202 0.75165403 0.52244002 0.73714203 0.46809 0.72608399
		 0.46415401 0.74320859 0.52505672 0.75822997 0.53996098;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.74898398 0.54283488 0.71097499 0.59457898
		 0.71015197 0.57198602 0.66263402 0.57925498 0.66354001 0.59908402 0.70771301 0.55317098
		 0.660083 0.560305 0.70397902 0.53557497 0.65644997 0.54351002 0.659244 0.80057198
		 0.68692702 0.80496401 0.69194102 0.76880097 0.67273301 0.75392801 0.66895401 0.83796299
		 0.64602602 0.84729803 0.61720401 0.56577402 0.61997002 0.58558398 0.621387 0.59997499
		 0.66297001 0.624327 0.62158799 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001
		 0.619008 0.64908397 0.62129599 0.63988101 0.61717898 0.74692702 0.60069299 0.781793
		 0.62854099 0.79232401 0.64025003 0.74519801 0.59942001 0.81702501 0.61655903 0.83938402
		 0.71140701 0.53491002 0.72365201 0.53111607 0.71005899 0.467933 0.70192498 0.47639501
		 0.72852063 0.54919553 0.71505499 0.55338103 0.062119 0.055884998 0.059014 0.006054
		 0.0243 0.0061039999 0.030805999 0.066058002 0.0094799995 0.066538997 0.0059890002
		 0.0084319999 0.58063197 0.084383003 0.60508901 0.117053 0.60010499 0.0052780001 0.582335
		 0.0053030001 0.46102899 0.163664 0.47359499 0.108845 0.25288501 0.173893 0.27010301
		 0.1256 0.104284 0.119569 0.12603299 0.094144002 0.045674 0.277821 0.042247999 0.230488
		 0.1267 0.230581 0.098291002 0.31683201 0.24115799 0.230719 0.227235 0.38325301 0.42314899
		 0.36543801 0.42262399 0.230662 0.56157398 0.319175 0.57265699 0.23062401 0.60740799
		 0.17942099 0.68386197 0.19809601 0.68998301 0.15537199 0.466061 0.22350401 0.243852
		 0.226748 0.092260003 0.17549101 0.03101 0.162614 0.023433 0.112641 0.27831 0.0057390002
		 0.474711 0.0054569999 0.128819 0.0059540002 0.69780701 0.93968499 0.64248902 0.935516
		 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381
		 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401
		 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499 0.693349 0.94836199
		 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692 0.94568998 0.649692
		 0.98202401 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349
		 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801
		 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.95703101
		 0.97851598 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699
		 0.97851598 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101
		 0.97851598 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899
		 1.11132801 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798
		 0.55273402 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349
		 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801
		 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806
		 0.988029 0.69780701 0.93968499 0.693349 0.94836199 0.69334799 0.979352 0.69334799
		 0.979352 0.693349 0.94836199 0.649692 0.94568998 0.649692 0.98202401 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699 0.164968
		 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699 0.88239098 0.83063501 0.84343898 0.75240302 0.82212299 0.750027
		 0.83970898 0.854976 0.72881001 0.854976 0.74639797 0.750027 0.72508198 0.75240302
		 0.68612802 0.83063501 0.85143697 0.932338 0.90570199 0.91825497 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.261794 0.50718498 0.153832 0.50628698 0.152189 0.50718498 0.164968 0.45052999 0.16719501
		 0.44820699;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.17610399 0.40507901 0.178331 0.406389 0.717085
		 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903 0.91825199 0.717085
		 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899 0.39843801 0.26171899
		 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.32031301
		 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199
		 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899 0.40234399 0.25585899
		 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601 0.39843801 0.32421899
		 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098 0.98624498 0.328125
		 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399 0.88239098
		 0.83063501 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001
		 0.854976 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697
		 0.932338 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903
		 0.91825199 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899
		 0.39843801 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899
		 0.40234399 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601
		 0.406389 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101
		 0.40507901 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389
		 0.23623601 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698
		 0.16719501 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901
		 0.178331 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299
		 0.750027 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301
		 0.40429699 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301
		 0.40625 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697
		 0.932338 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899
		 0.40429699 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832
		 0.50628698 0.26073399 0.50628698 0.77148402 0.87109399 0.82617199 0.87109399 0.79296899
		 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601 0.828125 0.87890601 0.83203101
		 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125 0.92773402 0.78515601 0.90625
		 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699 0.87890601 0.74804699 0.90625
		 0.74609399 0.90625 0.77539098 0.92773402 0.74804699 0.92773402 0.74609399 0.92773402
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.52856898 0.97485399 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097
		 0.50092202 0.553137 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501
		 0.49828899 0.55254501 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137
		 0.56129599 0.49112499 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499
		 0.58846599 0.54950303 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601
		 0.59274697 0.98832899 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999
		 0.54521102 0.97227699 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999
		 0.59274697 0.98832899 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698
		 0.60472399 0.96858698 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699
		 0.602368 0.94401699 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797
		 0.69657397 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597
		 0.99704999 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901
		 0.98805302 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399
		 0.96858698 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413
		 0.82681203 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099
		 0.57310098 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599
		 0.54950303 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701
		 0.83599597 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147
		 0.967713 0.59290898 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299
		 0.39152601 0.471104 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725
		 0.47168499 0.829763 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503
		 0.45107201 0.98891401 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999
		 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288
		 0.56166101 0.49178499 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.56129599 0.49112499 0.58846599 0.54950303
		 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498 0.48430699 0.82624298
		 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949 0.51881701 0.97364902
		 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699 0.48696399 0.56242502
		 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399 0.49828899 0.55254501
		 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366 0.49828899 0.55254501
		 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502 0.517124 0.69449401
		 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401 0.51718199 0.81656599
		 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803 0.51932001 0.94398898
		 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398 0.52432799 0.98150498
		 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401 0.51968998 0.81626302
		 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501 0.51968998 0.81626302
		 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797 0.52183598 0.94245797
		 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302 0.98160398 0.54521102
		 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101 0.69467402 0.53409302
		 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599 0.54950303 0.53703499
		 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801 0.51796103 0.51807398
		 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999 0.51922601 0.53873801
		 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398 0.50026798 0.52914
		 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398 0.50026798 0.57420999
		 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801 0.51796103 0.53703499
		 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099
		 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899 0.996889 0.58270597
		 0.99704999 0.51962101 0.69467402 0.091770999 0.369551 0.064251997 0.365547 0.057507999
		 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097 0.019934 0.96737301 0.059643999
		 0.99858999 0.069045 0.97977501 0.110485 0.465197 0.099601001 0.36329001 0.33160701
		 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999 0.306741 0.48896801 0.010897
		 0.89938402 0.015741 0.92038602 0.058373999 0.917386 0.062306002 0.89308703 0.14084101
		 0.99114501 0.138069 0.95506698 0.091770999 0.369551 0.097764999 0.46727601 0.046569001
		 0.95226097 0.069045 0.97977501 0.110485 0.465197 0.097764999 0.46727601 0.091770999
		 0.369551 0.099601001 0.36329001 0.306741 0.48896801 0.30121699 0.48045999 0.058373999
		 0.917386 0.062306002 0.89308703 0.069045 0.97977501 0.138069 0.95506698 0.24582 0.55150002
		 0.198421 0.553119 0.210265 0.64977902 0.252572 0.65227503 0.21557599 0.73471701 0.248807
		 0.73138702 0.29158199 0.55224901 0.29699001 0.65341401 0.32378799 0.653687 0.319199
		 0.55430597 0.32132399 0.73407799 0.29438499 0.73260999 0.312702 0.915833 0.29026499
		 0.91377503 0.183137 0.55549699 0.130492 0.53603703 0.125136 0.65086901 0.18320601
		 0.65105301 0.130918 0.74646097 0.185413 0.73494297 0.074359 0.58401501 0.045772001
		 0.57729 0.025226001 0.64779299 0.068103999 0.65794402 0.063110001 0.75552702 0.0078809997
		 0.75018901 0.119689 0.75301498 0.093028001 0.65320301 0.10611 0.53121001 0.054207001
		 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899 0.116622 0.52293497 0.061469
		 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499 0.75819302 0.259767
		 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903 0.26120099
		 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099 0.53941703
		 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749 0.99116099
		 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503 0.21557599
		 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702 0.29026499
		 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401 0.29699001
		 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703 0.183137
		 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901 0.18320601
		 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699 0.198421
		 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265 0.64977902
		 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359 0.58401501
		 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001 0.65320301
		 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498 0.093028001
		 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001 0.130492 0.53603703
		 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001 0.29699001 0.65341401
		 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503 0.29158199 0.55224901
		 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002 0.306741 0.48896801
		 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999 0.29026499 0.91377503
		 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001 0.097764999 0.46727601
		 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703 0.061469 0.83352 0.14167701
		 0.83245897 0.119689 0.75301498 0.14167701 0.83245897 0.061469 0.83352;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.063110001 0.75552702 0.14167701 0.83245897
		 0.119689 0.75301498 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903
		 0.180035 0.54325098 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002
		 0.52486098 0.198421 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401
		 0.24582 0.55150002 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499
		 0.73260999 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099
		 0.74019098 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622
		 0.768843 0.21557599 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163
		 0.185413 0.73494297 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918
		 0.74646097 0.130918 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689
		 0.75301498 0.135295 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497
		 0.259767 0.54373401 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999
		 0.306741 0.48896801 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498
		 0.063110001 0.75552702 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001
		 0.65320301 0.068103999 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469
		 0.83352 0.061469 0.83352 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101
		 0.92042899 0.091770999 0.369551 0.099601001 0.36329001 0.158557 0.94473398 0.138069
		 0.95506698 0.058373999 0.917386 0.062306002 0.89308703 0.138069 0.95506698 0.158557
		 0.94473398 0.138069 0.95506698 0.069045 0.97977501 0.046569001 0.95226097 0.058373999
		 0.917386 0.058373999 0.917386 0.046569001 0.95226097 0.88565999 0.55092603 0.89015901
		 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499 0.88260198
		 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802 0.79121298
		 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802 0.79121298
		 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701 0.821729
		 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478 0.790829
		 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415 0.93326402 0.55445099 0.93195701 0.54122198 0.91465998 0.53527802
		 0.90329701 0.54415202 0.922194 0.56268197 0.90489799 0.55673701 0.91118097 0.58714199
		 0.894777 0.57577199 0.91118097 0.58714199 0.922194 0.56268197 0.922194 0.56268197
		 0.93326402 0.55445099 0.93326402 0.55445099 0.93195701 0.54122198 0.93195701 0.54122198
		 0.91465998 0.53527802 0.91465998 0.53527802 0.93195701 0.54122198 0.93326402 0.55445099
		 0.90329701 0.54415202 0.90329701 0.54415202 0.93326402 0.55445099 0.922194 0.56268197
		 0.90489799 0.55673701 0.90489799 0.55673701 0.922194 0.56268197 0.91118097 0.58714199
		 0.894777 0.57577199 0.894777 0.57577199 0.90489799 0.55673701 0.90489799 0.55673701
		 0.90329701 0.54415202 0.90329701 0.54415202 0.91465998 0.53527802 0.88565999 0.55092603
		 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499
		 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802
		 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802
		 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701
		 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478
		 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.984375 0.97265601 0.984375 0.91796899 0.95507801
		 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398 0.78624701 0.94025201
		 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001 0.760764 0.92724103
		 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699 0.69417298 0.90592903
		 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102 0.62711298 0.88416398
		 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871 0.58281398 0.94667798
		 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602 0.78776801 0.98548299
		 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299 0.697236 0.880871
		 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698 0.58336103 0.88416398
		 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098 0.82421899 0.94726598
		 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999 0.55092603 0.89015901
		 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602 0.55142099 0.94667798
		 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199 0.60996097 0.89381701
		 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102 0.62711298 0.91251802
		 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102 0.62711298 0.88285798
		 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415 0.98548299 0.632415
		 0.93326402 0.55445099 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202
		 0.922194 0.56268197 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199
		 0.91118097 0.58714199 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099
		 0.93326402 0.55445099 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802
		 0.91465998 0.53527802 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202
		 0.90329701 0.54415202 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701
		 0.90489799 0.55673701 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199
		 0.894777 0.57577199 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202
		 0.90329701 0.54415202 0.91465998 0.53527802 0.88239098 0.83063501 0.84343898 0.75240302
		 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976 0.74639797 0.750027 0.72508198
		 0.75240302 0.68612802 0.83063501 0.85143697 0.932338 0.90570199 0.91825497 0.88239098
		 0.83063501 0.83970898 0.854976 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.25585899 0.39843801 0.26171899 0.40234399 0.29101601
		 0.40625 0.29101601 0.39843801 0.26171899 0.40234399 0.25585899 0.39453101 0.29101601
		 0.39843801 0.29101601 0.40625 0.23623601 0.406389 0.23741101 0.40507901 0.248547
		 0.45052999 0.247372 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331
		 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.153832 0.50628698 0.16719501 0.44820699 0.247372 0.44820699
		 0.26073399 0.50628698 0.26073399 0.50628698 0.247372 0.44820699 0.248547 0.45052999
		 0.261794 0.50718498 0.17610399 0.40507901 0.178331 0.406389 0.16719501 0.44820699
		 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498 0.164968 0.45052999 0.16719501
		 0.44820699 0.82212299 0.750027 0.74639797 0.750027 0.72881001 0.854976 0.83970898
		 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001 0.854976 0.82067102 0.730515
		 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027 0.32226601 0.39843801
		 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699
		 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625 0.29101601 0.40625
		 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338 0.71881098 0.98624498
		 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399
		 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698 0.26073399 0.50628698
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098
		 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199
		 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806
		 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029
		 0.69780701 0.93968499 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352
		 0.693349 0.94836199 0.649692 0.94568998 0.649692 0.98202401 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402
		 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199
		 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806
		 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.88239098
		 0.83063501 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.72881001 0.854976 0.74639797 0.750027 0.72508198
		 0.75240302 0.68612802 0.83063501 0.85143697 0.932338 0.90570199 0.91825497 0.88239098
		 0.83063501 0.83970898 0.854976 0.23623601 0.406389 0.23741101 0.40507901 0.248547
		 0.45052999 0.247372 0.44820699 0.26073399 0.50628698 0.247372 0.44820699 0.248547
		 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189 0.50718498 0.164968 0.45052999
		 0.16719501 0.44820699 0.16719501 0.44820699 0.164968 0.45052999 0.17610399 0.40507901
		 0.178331 0.406389 0.82212299 0.750027 0.74639797 0.750027 0.72881001 0.854976 0.83970898
		 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001 0.854976 0.717085 0.93233401
		 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027 0.66281903
		 0.91825199 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.29101601
		 0.40625 0.29101601 0.39843801 0.25585899 0.39843801 0.26171899 0.40234399 0.32226601
		 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.32031301 0.40625 0.32031301
		 0.40429699 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.29101601
		 0.39843801 0.29101601 0.40625 0.26171899 0.40234399 0.25585899 0.39453101 0.32031301
		 0.40625 0.29101601 0.40625 0.29101601 0.39843801 0.32421899 0.40234399 0.178331 0.406389
		 0.23623601 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.84970701 0.98624903
		 0.85143697 0.932338 0.717085 0.93233401 0.71881098 0.98624498 0.328125 0.39648399
		 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399 0.261794 0.50718498
		 0.152189 0.50718498 0.153832 0.50628698 0.26073399 0.50628698 0.247372 0.44820699
		 0.26073399 0.50628698 0.153832 0.50628698 0.16719501 0.44820699 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349
		 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801
		 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806
		 0.988029 0.69780701 0.93968499 0.693349 0.94836199 0.69334799 0.979352 0.69334799
		 0.979352 0.693349 0.94836199 0.649692 0.94568998 0.649692 0.98202401 0.091770999
		 0.369551 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001
		 0.95226097 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485
		 0.465197 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699
		 0.48045999 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999
		 0.917386 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999
		 0.369551 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485
		 0.465197 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741
		 0.48896801 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045
		 0.97977501 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902
		 0.252572 0.65227503 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901
		 0.29699001 0.65341401 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799
		 0.29438499 0.73260999 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699
		 0.130492 0.53603703 0.125136 0.65086901 0.18320601 0.65105301 0.130918 0.74646097
		 0.185413 0.73494297 0.074359 0.58401501 0.045772001 0.57729 0.025226001 0.64779299
		 0.068103999 0.65794402 0.063110001 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498
		 0.093028001 0.65320301 0.10611 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897
		 0.28239101 0.92042899 0.116622 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701
		 0.83245897 0.13953499 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035
		 0.54325098 0.135295 0.52912903 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163
		 0.140361 0.75189501 0.27634099 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798
		 0.068880998 0.35205701 0.15749 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582
		 0.55150002 0.252572 0.65227503 0.21557599 0.73471701 0.210265 0.64977902 0.252572
		 0.65227503 0.248807 0.73138702;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.29026499 0.91377503 0.29438499 0.73260999
		 0.29438499 0.73260999 0.29699001 0.65341401 0.29699001 0.65341401 0.29158199 0.55224901
		 0.125136 0.65086901 0.130492 0.53603703 0.183137 0.55549699 0.18320601 0.65105301
		 0.130918 0.74646097 0.125136 0.65086901 0.18320601 0.65105301 0.185413 0.73494297
		 0.18320601 0.65105301 0.183137 0.55549699 0.198421 0.553119 0.210265 0.64977902 0.185413
		 0.73494297 0.18320601 0.65105301 0.210265 0.64977902 0.21557599 0.73471701 0.068103999
		 0.65794402 0.063110001 0.75552702 0.074359 0.58401501 0.068103999 0.65794402 0.10611
		 0.53121001 0.074359 0.58401501 0.093028001 0.65320301 0.074359 0.58401501 0.10611
		 0.53121001 0.125136 0.65086901 0.119689 0.75301498 0.093028001 0.65320301 0.125136
		 0.65086901 0.130918 0.74646097 0.10611 0.53121001 0.130492 0.53603703 0.125136 0.65086901
		 0.097764999 0.46727601 0.10611 0.53121001 0.29699001 0.65341401 0.29438499 0.73260999
		 0.248807 0.73138702 0.252572 0.65227503 0.29158199 0.55224901 0.29699001 0.65341401
		 0.252572 0.65227503 0.24582 0.55150002 0.306741 0.48896801 0.29158199 0.55224901
		 0.27644899 0.74265897 0.29438499 0.73260999 0.29026499 0.91377503 0.28239101 0.92042899
		 0.116622 0.52293497 0.10611 0.53121001 0.097764999 0.46727601 0.110485 0.465197 0.158557
		 0.94473398 0.062306002 0.89308703 0.061469 0.83352 0.14167701 0.83245897 0.119689
		 0.75301498 0.14167701 0.83245897 0.061469 0.83352 0.063110001 0.75552702 0.14167701
		 0.83245897 0.119689 0.75301498 0.13953499 0.75819302 0.130492 0.53603703 0.135295
		 0.52912903 0.180035 0.54325098 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098
		 0.192002 0.52486098 0.198421 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767
		 0.54373401 0.24582 0.55150002 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901
		 0.29438499 0.73260999 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999
		 0.26120099 0.74019098 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098
		 0.191622 0.768843 0.21557599 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673
		 0.747163 0.185413 0.73494297 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501
		 0.130918 0.74646097 0.130918 0.74646097 0.140361 0.75189501 0.13953499 0.75819302
		 0.119689 0.75301498 0.135295 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622
		 0.52293497 0.259767 0.54373401 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699
		 0.48045999 0.306741 0.48896801 0.29158199 0.55224901 0.27634099 0.53941703 0.119689
		 0.75301498 0.063110001 0.75552702 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001
		 0.65320301 0.068103999 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469
		 0.83352 0.061469 0.83352 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101
		 0.92042899 0.091770999 0.369551 0.099601001 0.36329001 0.158557 0.94473398 0.138069
		 0.95506698 0.058373999 0.917386 0.062306002 0.89308703 0.138069 0.95506698 0.158557
		 0.94473398 0.138069 0.95506698 0.069045 0.97977501 0.046569001 0.95226097 0.058373999
		 0.917386 0.058373999 0.917386 0.046569001 0.95226097 0.52856898 0.97485399 0.53409302
		 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137 0.526932
		 0.44578201 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501 0.52451599
		 0.438366 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499 0.58846599
		 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303 0.56129599
		 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899 0.54504901
		 0.98805302 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699 0.59290898
		 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899 0.59290898
		 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698 0.60472399
		 0.96858698 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699 0.593413 0.82681203
		 0.593413 0.82681203 0.593413 0.82681203 0.59387797 0.69657397 0.59387702 0.69657397
		 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999 0.55490899 0.996889
		 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302 0.54521102 0.97227699
		 0.60472399 0.96858698 0.531147 0.967713 0.60472399 0.96858698 0.602368 0.94401699
		 0.52183598 0.94245797 0.602368 0.94401699 0.593413 0.82681203 0.49801701 0.83599597
		 0.51968998 0.81626302 0.593413 0.82681203 0.52219099 0.57310098 0.50092202 0.553137
		 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303 0.51968998 0.81626302
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898 0.97255301 0.54521102
		 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104 0.53459102 0.334759 0.53459102
		 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763 0.33417901 0.829763 0.461916
		 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401 0.356471 0.98912501 0.42356101
		 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099
		 0.57310098 0.53703499 0.459288 0.56166101 0.49178499 0.56129599 0.49112499 0.526932
		 0.44578201 0.526932 0.44578201 0.56129599 0.49112499 0.58846599 0.54950303 0.50092202
		 0.553137 0.49548501 0.83629501 0.51718199 0.81656498 0.48430699 0.82624298 0.51931798
		 0.94420201 0.509556 0.94389701;
	setAttr ".uvst[0].uvsp[3250:3499]" 0.52856803 0.974949 0.51881701 0.97364902
		 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699 0.48696399 0.56242502
		 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399 0.49828899 0.55254501
		 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366 0.49828899 0.55254501
		 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502 0.517124 0.69449401
		 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401 0.51718199 0.81656599
		 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803 0.51932001 0.94398898
		 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398 0.52432799 0.98150498
		 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401 0.51968998 0.81626302
		 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501 0.51968998 0.81626302
		 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797 0.52183598 0.94245797
		 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302 0.98160398 0.54521102
		 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101 0.69467402 0.53409302
		 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599 0.54950303 0.53703499
		 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801 0.51796103 0.51807398
		 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999 0.51922601 0.53873801
		 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398 0.50026798 0.52914
		 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398 0.50026798 0.57420999
		 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801 0.51796103 0.53703499
		 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099
		 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899 0.996889 0.58270597
		 0.99704999 0.51962101 0.69467402 0.77148402 0.87109399 0.82617199 0.87109399 0.79296899
		 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601 0.828125 0.87890601 0.83203101
		 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125 0.92773402 0.78515601 0.90625
		 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699 0.87890601 0.74804699 0.90625
		 0.74609399 0.90625 0.77539098 0.92773402 0.74804699 0.92773402 0.74609399 0.92773402
		 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199
		 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806
		 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029
		 0.69780701 0.93968499 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352
		 0.693349 0.94836199 0.649692 0.94568998 0.649692 0.98202401 0.77148402 0.87109399
		 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601
		 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125
		 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699
		 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402 0.74804699
		 0.92773402 0.74609399 0.92773402 0.69780701 0.93968499 0.64248902 0.935516 0.649692
		 0.94568998 0.693349 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902
		 0.64118499 0.93668801 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902
		 0.99219698 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801
		 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801
		 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801
		 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801
		 0.83789098 0.95703101 0.97851598 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101
		 0.99804699 0.96679699 0.97851598 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598
		 0.99804699 0.98828101 0.97851598 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699
		 0.99804699 -1.29296899 1.11132801 -1.47460902 0.55273402 -1 0.207031 -0.70507801
		 1.11132801 -0.52343798 0.55273402 0.69780701 0.93968499 0.64248902 0.935516 0.649692
		 0.94568998 0.693349 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902
		 0.64118499 0.93668801 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902
		 0.99219698 0.697806 0.988029 0.69780701 0.93968499 0.693349 0.94836199 0.69334799
		 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692 0.94568998 0.649692 0.98202401
		 0.88239098 0.83063501 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976
		 0.72881001 0.854976 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501
		 0.85143697 0.932338 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976
		 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699
		 0.26073399 0.50628698 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498
		 0.153832 0.50628698 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699
		 0.16719501 0.44820699 0.164968 0.45052999 0.17610399 0.40507901 0.178331 0.406389
		 0.82212299 0.750027 0.74639797 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697
		 0.932338 0.83970898 0.854976 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515
		 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976;
	setAttr ".uvst[0].uvsp[3500:3749]" 0.68612802 0.83063501 0.29101601 0.40625 0.29101601
		 0.39843801 0.25585899 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601
		 0.39843801 0.29101601 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301
		 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.26171899 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601
		 0.40625 0.29101601 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601
		 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697
		 0.932338 0.717085 0.93233401 0.71881098 0.98624498 0.328125 0.39648399 0.33007801
		 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399 0.261794 0.50718498 0.152189
		 0.50718498 0.153832 0.50628698 0.26073399 0.50628698 0.247372 0.44820699 0.26073399
		 0.50628698 0.153832 0.50628698 0.16719501 0.44820699 0.88239098 0.83063501 0.84343898
		 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976 0.74639797
		 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338 0.90570199
		 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999 0.247372
		 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901 0.178331
		 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903 0.91825199
		 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899 0.39843801
		 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601 0.40625
		 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601 0.39843801
		 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899 0.40234399
		 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601 0.39843801
		 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098 0.98624498
		 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399
		 0.52856898 0.97485399 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097
		 0.50092202 0.553137 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501
		 0.49828899 0.55254501 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137
		 0.56129599 0.49112499 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499
		 0.58846599 0.54950303 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601
		 0.59274697 0.98832899 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999
		 0.54521102 0.97227699 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999
		 0.59274697 0.98832899 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698
		 0.60472399 0.96858698 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699
		 0.602368 0.94401699 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797
		 0.69657397 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597
		 0.99704999 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901
		 0.98805302 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399
		 0.96858698 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413
		 0.82681203 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099
		 0.57310098 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599
		 0.54950303 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701
		 0.83599597 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147
		 0.967713 0.59290898 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299
		 0.39152601 0.471104 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725
		 0.47168499 0.829763 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503
		 0.45107201 0.98891401 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999
		 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288
		 0.56166101 0.49178499 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201
		 0.56129599 0.49112499 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501
		 0.51718199 0.81656498 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701
		 0.52856803 0.974949 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201
		 0.51969302 0.57243699 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366
		 0.51474702 0.43864399 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502
		 0.52451599 0.438366 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399
		 0.48696399 0.56242502 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201
		 0.517124 0.69449401 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501
		 0.50955802 0.94372803 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498
		 0.53409302 0.98160398 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366
		 0.517124 0.69449401 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137
		 0.49828899 0.55254501 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102
		 0.97227699 0.53409302 0.98160398;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.54521102 0.97227699 0.54521102 0.97227699
		 0.54504901 0.98805302 0.51962101 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601
		 0.58846599 0.54950303 0.58846599 0.54950303 0.53703499 0.459288 0.526932 0.44578201
		 0.53703499 0.459288 0.53873801 0.51796103 0.51807398 0.50026798 0.53703499 0.459288
		 0.52914 0.46362701 0.57420999 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103
		 0.51807398 0.50026798 0.51807398 0.50026798 0.52914 0.46362701 0.56166101 0.49178499
		 0.52914 0.46362701 0.51807398 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499
		 0.51807398 0.50026798 0.53873801 0.51796103 0.53703499 0.459288 0.52914 0.46362701
		 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302
		 0.55490899 0.996889 0.55490899 0.996889 0.58270597 0.99704999 0.51962101 0.69467402
		 0.88239098 0.83063501 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976
		 0.72881001 0.854976 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501
		 0.85143697 0.932338 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976
		 0.66281903 0.91825199 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501
		 0.25585899 0.39843801 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801
		 0.26171899 0.40234399 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625
		 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699
		 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901
		 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832
		 0.50628698 0.16719501 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399
		 0.50628698 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399
		 0.40507901 0.178331 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027
		 0.74639797 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898
		 0.854976 0.72881001 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027
		 0.82212299 0.750027 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625
		 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801
		 0.32031301 0.40625 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903
		 0.85143697 0.932338 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699
		 0.25585899 0.40429699 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498
		 0.153832 0.50628698 0.26073399 0.50628698 0.091770999 0.369551 0.064251997 0.365547
		 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097 0.019934 0.96737301
		 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197 0.099601001 0.36329001
		 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999 0.306741 0.48896801
		 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386 0.062306002 0.89308703
		 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551 0.097764999 0.46727601
		 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197 0.097764999 0.46727601
		 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801 0.30121699 0.48045999
		 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501 0.138069 0.95506698
		 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572 0.65227503 0.21557599
		 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001 0.65341401 0.32378799
		 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499 0.73260999 0.312702
		 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703 0.125136 0.65086901
		 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297 0.074359 0.58401501
		 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402 0.063110001 0.75552702
		 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301 0.10611 0.53121001
		 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899 0.116622 0.52293497
		 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499 0.75819302
		 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903 0.26120099
		 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099 0.53941703
		 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749 0.99116099
		 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503 0.21557599
		 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702 0.29026499
		 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401 0.29699001
		 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703 0.183137
		 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901 0.18320601
		 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699 0.198421
		 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265 0.64977902
		 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359 0.58401501
		 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001 0.65320301
		 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498 0.093028001
		 0.65320301 0.125136 0.65086901 0.130918 0.74646097;
	setAttr ".uvst[0].uvsp[4000:4249]" 0.10611 0.53121001 0.130492 0.53603703 0.125136
		 0.65086901 0.097764999 0.46727601 0.10611 0.53121001 0.29699001 0.65341401 0.29438499
		 0.73260999 0.248807 0.73138702 0.252572 0.65227503 0.29158199 0.55224901 0.29699001
		 0.65341401 0.252572 0.65227503 0.24582 0.55150002 0.306741 0.48896801 0.29158199
		 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999 0.29026499 0.91377503 0.28239101
		 0.92042899 0.116622 0.52293497 0.10611 0.53121001 0.097764999 0.46727601 0.110485
		 0.465197 0.158557 0.94473398 0.062306002 0.89308703 0.061469 0.83352 0.14167701 0.83245897
		 0.119689 0.75301498 0.14167701 0.83245897 0.061469 0.83352 0.063110001 0.75552702
		 0.14167701 0.83245897 0.119689 0.75301498 0.13953499 0.75819302 0.130492 0.53603703
		 0.135295 0.52912903 0.180035 0.54325098 0.183137 0.55549699 0.183137 0.55549699 0.180035
		 0.54325098 0.192002 0.52486098 0.198421 0.553119 0.198421 0.553119 0.192002 0.52486098
		 0.259767 0.54373401 0.24582 0.55150002 0.24582 0.55150002 0.259767 0.54373401 0.29158199
		 0.55224901 0.29438499 0.73260999 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499
		 0.73260999 0.26120099 0.74019098 0.248807 0.73138702 0.248807 0.73138702 0.26120099
		 0.74019098 0.191622 0.768843 0.21557599 0.73471701 0.21557599 0.73471701 0.191622
		 0.768843 0.180673 0.747163 0.185413 0.73494297 0.185413 0.73494297 0.180673 0.747163
		 0.140361 0.75189501 0.130918 0.74646097 0.130918 0.74646097 0.140361 0.75189501 0.13953499
		 0.75819302 0.119689 0.75301498 0.135295 0.52912903 0.130492 0.53603703 0.10611 0.53121001
		 0.116622 0.52293497 0.259767 0.54373401 0.27634099 0.53941703 0.29158199 0.55224901
		 0.30121699 0.48045999 0.306741 0.48896801 0.29158199 0.55224901 0.27634099 0.53941703
		 0.119689 0.75301498 0.063110001 0.75552702 0.068103999 0.65794402 0.093028001 0.65320301
		 0.093028001 0.65320301 0.068103999 0.65794402 0.074359 0.58401501 0.062306002 0.89308703
		 0.061469 0.83352 0.061469 0.83352 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101
		 0.92042899 0.091770999 0.369551 0.099601001 0.36329001 0.158557 0.94473398 0.138069
		 0.95506698 0.058373999 0.917386 0.062306002 0.89308703 0.138069 0.95506698 0.158557
		 0.94473398 0.138069 0.95506698 0.069045 0.97977501 0.046569001 0.95226097 0.058373999
		 0.917386 0.058373999 0.917386 0.046569001 0.95226097 0.88565999 0.55092603 0.89015901
		 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499 0.88260198
		 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802 0.79121298
		 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802 0.79121298
		 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701 0.821729
		 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478 0.790829
		 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415 0.93326402 0.55445099 0.93195701 0.54122198 0.91465998 0.53527802
		 0.90329701 0.54415202 0.922194 0.56268197 0.90489799 0.55673701 0.91118097 0.58714199
		 0.894777 0.57577199 0.91118097 0.58714199 0.922194 0.56268197 0.922194 0.56268197
		 0.93326402 0.55445099 0.93326402 0.55445099 0.93195701 0.54122198 0.93195701 0.54122198
		 0.91465998 0.53527802 0.91465998 0.53527802 0.93195701 0.54122198 0.93326402 0.55445099
		 0.90329701 0.54415202 0.90329701 0.54415202 0.93326402 0.55445099 0.922194 0.56268197
		 0.90489799 0.55673701 0.90489799 0.55673701 0.922194 0.56268197 0.91118097 0.58714199
		 0.894777 0.57577199 0.894777 0.57577199 0.90489799 0.55673701 0.90489799 0.55673701
		 0.90329701 0.54415202 0.90329701 0.54415202 0.91465998 0.53527802 0.60177797 0.51121497
		 0.60815501 0.53058201 0.64851898 0.51776099 0.64129901 0.495401 0.68799299 0.48417801
		 0.694282 0.50388497 0.66718602 0.48136601;
	setAttr ".uvst[0].uvsp[4250:4499]" 0.68795401 0.48404899 0.59746301 0.66676998
		 0.62255698 0.69637197 0.63816899 0.68434 0.609712 0.658557 0.68147498 0.72371203
		 0.67420399 0.73255998 0.65184897 0.66894501 0.69097197 0.71272302 0.69901901 0.70456398
		 0.66212499 0.65384901 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398
		 0.67958403 0.75030202 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159
		 0.709773 0.64167202 0.75165403 0.52244002 0.73714203 0.46809 0.72608399 0.46415401
		 0.74320859 0.52505672 0.75822997 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898
		 0.71015197 0.57198602 0.66263402 0.57925498 0.66354001 0.59908402 0.70771301 0.55317098
		 0.660083 0.560305 0.70397902 0.53557497 0.65644997 0.54351002 0.659244 0.80057198
		 0.68692702 0.80496401 0.69194102 0.76880097 0.67273301 0.75392801 0.66895401 0.83796299
		 0.64602602 0.84729803 0.61720401 0.56577402 0.61997002 0.58558398 0.621387 0.59997499
		 0.66297001 0.624327 0.62158799 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001
		 0.619008 0.64908397 0.62129599 0.63988101 0.61717898 0.74692702 0.60069299 0.781793
		 0.62854099 0.79232401 0.64025003 0.74519801 0.59942001 0.81702501 0.61655903 0.83938402
		 0.71140701 0.53491002 0.72365201 0.53111607 0.71005899 0.467933 0.70192498 0.47639501
		 0.72852063 0.54919553 0.71505499 0.55338103 0.60177797 0.51121497 0.60815501 0.53058201
		 0.64851898 0.51776099 0.64129901 0.495401 0.68799299 0.48417801 0.694282 0.50388497
		 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998 0.62255698 0.69637197
		 0.63816899 0.68434 0.609712 0.658557 0.68147498 0.72371203 0.67420399 0.73255998
		 0.65184897 0.66894501 0.69097197 0.71272302 0.69901901 0.70456398 0.66212499 0.65384901
		 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398 0.67958403 0.75030202
		 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159 0.709773 0.64167202 0.75165403
		 0.52244002 0.73714203 0.46809 0.72608399 0.46415401 0.74320859 0.52505672 0.75822997
		 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898 0.71015197 0.57198602 0.66263402
		 0.57925498 0.66354001 0.59908402 0.70771301 0.55317098 0.660083 0.560305 0.70397902
		 0.53557497 0.65644997 0.54351002 0.659244 0.80057198 0.68692702 0.80496401 0.69194102
		 0.76880097 0.67273301 0.75392801 0.66895401 0.83796299 0.64602602 0.84729803 0.61720401
		 0.56577402 0.61997002 0.58558398 0.621387 0.59997499 0.66297001 0.624327 0.62158799
		 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001 0.619008 0.64908397 0.62129599
		 0.63988101 0.61717898 0.74692702 0.60069299 0.781793 0.62854099 0.79232401 0.64025003
		 0.74519801 0.59942001 0.81702501 0.61655903 0.83938402 0.71140701 0.53491002 0.72365201
		 0.53111607 0.71005899 0.467933 0.70192498 0.47639501 0.72852063 0.54919553 0.71505499
		 0.55338103 0.60177797 0.51121497 0.60815501 0.53058201 0.64851898 0.51776099 0.64129901
		 0.495401 0.68799299 0.48417801 0.694282 0.50388497 0.66718602 0.48136601 0.68795401
		 0.48404899 0.59746301 0.66676998 0.62255698 0.69637197 0.63816899 0.68434 0.609712
		 0.658557 0.68147498 0.72371203 0.67420399 0.73255998 0.65184897 0.66894501 0.69097197
		 0.71272302 0.69901901 0.70456398 0.66212499 0.65384901 0.71692699 0.70931 0.71319199
		 0.72687799 0.69240499 0.65115398 0.67958403 0.75030202 0.69706702 0.744757 0.616422
		 0.72525501 0.70974302 0.64159 0.709773 0.64167202 0.75165403 0.52244002 0.73714203
		 0.46809 0.72608399 0.46415401 0.74320859 0.52505672 0.75822997 0.53996098 0.74898398
		 0.54283488 0.71097499 0.59457898 0.71015197 0.57198602 0.66263402 0.57925498 0.66354001
		 0.59908402 0.70771301 0.55317098 0.660083 0.560305 0.70397902 0.53557497 0.65644997
		 0.54351002 0.659244 0.80057198 0.68692702 0.80496401 0.69194102 0.76880097 0.67273301
		 0.75392801 0.66895401 0.83796299 0.64602602 0.84729803 0.61720401 0.56577402 0.61997002
		 0.58558398 0.621387 0.59997499 0.66297001 0.624327 0.62158799 0.62073702 0.70987898
		 0.62097102 0.61472303 0.55215001 0.619008 0.64908397 0.62129599 0.63988101 0.61717898
		 0.74692702 0.60069299 0.781793 0.62854099 0.79232401 0.64025003 0.74519801 0.59942001
		 0.81702501 0.61655903 0.83938402 0.71140701 0.53491002 0.72365201 0.53111607 0.71005899
		 0.467933 0.70192498 0.47639501 0.72852063 0.54919553 0.71505499 0.55338103 0.062119
		 0.055884998 0.059014 0.006054 0.0243 0.0061039999 0.030805999 0.066058002 0.0094799995
		 0.066538997 0.0059890002 0.0084319999 0.58063197 0.084383003 0.60508901 0.117053
		 0.60010499 0.0052780001 0.582335 0.0053030001 0.46102899 0.163664 0.47359499 0.108845
		 0.25288501 0.173893 0.27010301 0.1256 0.104284 0.119569 0.12603299 0.094144002 0.045674
		 0.277821 0.042247999 0.230488 0.1267 0.230581 0.098291002 0.31683201 0.24115799 0.230719
		 0.227235 0.38325301 0.42314899 0.36543801 0.42262399 0.230662 0.56157398 0.319175
		 0.57265699 0.23062401 0.60740799 0.17942099 0.68386197 0.19809601 0.68998301 0.15537199
		 0.466061 0.22350401 0.243852 0.226748 0.092260003 0.17549101 0.03101 0.162614 0.023433
		 0.112641 0.27831 0.0057390002 0.474711 0.0054569999 0.128819 0.0059540002 0.69780701
		 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397
		 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029
		 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701
		 0.93968499 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199
		 0.649692 0.94568998;
	setAttr ".uvst[0].uvsp[4500:4749]" 0.649692 0.98202401 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.95703101 0.97851598 0.94531298
		 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598 0.96679699
		 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598 0.98828101
		 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801 -1.47460902
		 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401 0.88239098 0.83063501 0.84343898 0.75240302 0.82212299
		 0.750027 0.83970898 0.854976 0.72881001 0.854976 0.74639797 0.750027 0.72508198 0.75240302
		 0.68612802 0.83063501 0.85143697 0.932338 0.90570199 0.91825497 0.88239098 0.83063501
		 0.83970898 0.854976 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.247372 0.44820699 0.248547 0.45052999
		 0.261794 0.50718498 0.153832 0.50628698 0.152189 0.50718498 0.164968 0.45052999 0.16719501
		 0.44820699 0.16719501 0.44820699 0.164968 0.45052999 0.17610399 0.40507901 0.178331
		 0.406389 0.82212299 0.750027 0.74639797 0.750027 0.72881001 0.854976 0.83970898 0.854976
		 0.85143697 0.932338 0.83970898 0.854976 0.72881001 0.854976 0.717085 0.93233401 0.82067102
		 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.29101601 0.40625
		 0.29101601 0.39843801 0.25585899 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801
		 0.29101601 0.39843801 0.29101601 0.40625 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801
		 0.29101601 0.40625 0.26171899 0.40234399 0.25585899 0.39453101 0.32031301 0.40625
		 0.29101601 0.40625 0.29101601 0.39843801 0.32421899 0.40234399 0.178331 0.406389
		 0.23623601 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.84970701 0.98624903
		 0.85143697 0.932338 0.717085 0.93233401 0.71881098 0.98624498 0.328125 0.39648399
		 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399 0.261794 0.50718498
		 0.152189 0.50718498 0.153832 0.50628698 0.26073399 0.50628698 0.247372 0.44820699
		 0.26073399 0.50628698 0.153832 0.50628698 0.16719501 0.44820699 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399 0.88239098 0.83063501 0.84343898 0.75240302 0.82212299 0.750027 0.83970898
		 0.854976 0.72881001 0.854976 0.74639797 0.750027 0.72508198 0.75240302 0.68612802
		 0.83063501 0.85143697 0.932338 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898
		 0.854976 0.66281903 0.91825199 0.717085 0.93233401 0.72881001 0.854976 0.68612802
		 0.83063501 0.25585899 0.39843801 0.26171899 0.40234399 0.29101601 0.40625 0.29101601
		 0.39843801 0.26171899 0.40234399 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601
		 0.40625 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699
		 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901
		 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832
		 0.50628698 0.16719501 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399
		 0.50628698 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399
		 0.40507901 0.178331 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027
		 0.74639797 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898
		 0.854976;
	setAttr ".uvst[0].uvsp[4750:4999]" 0.72881001 0.854976 0.82067102 0.730515 0.74785101
		 0.730515 0.74639797 0.750027 0.82212299 0.750027 0.32226601 0.39843801 0.29101601
		 0.39843801 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.32031301 0.40625 0.29101601 0.40625 0.32421899
		 0.40234399 0.84970701 0.98624903 0.85143697 0.932338 0.71881098 0.98624498 0.328125
		 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399 0.261794
		 0.50718498 0.152189 0.50718498 0.153832 0.50628698 0.26073399 0.50628698 0.77148402
		 0.87109399 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699
		 0.87890601 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402
		 0.78125 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399
		 0.74804699 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402
		 0.74804699 0.92773402 0.74609399 0.92773402 0.95507801 0.98242199 0.98828101 0.98242199
		 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199
		 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199
		 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199
		 0.98828101 0.83789098 0.95507801 0.83789098 0.52856898 0.97485399 0.53409302 0.98160398
		 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137 0.526932 0.44578201
		 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501 0.52451599 0.438366
		 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499 0.58846599 0.54950303
		 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303 0.56129599 0.49112499
		 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899 0.54504901 0.98805302
		 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699 0.59290898 0.97255301
		 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899 0.59290898 0.97255301
		 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698 0.60472399 0.96858698
		 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699 0.593413 0.82681203 0.593413
		 0.82681203 0.593413 0.82681203 0.59387797 0.69657397 0.59387702 0.69657397 0.54504901
		 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999 0.55490899 0.996889 0.59290898
		 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302 0.54521102 0.97227699 0.60472399
		 0.96858698 0.531147 0.967713 0.60472399 0.96858698 0.602368 0.94401699 0.52183598
		 0.94245797 0.602368 0.94401699 0.593413 0.82681203 0.49801701 0.83599597 0.51968998
		 0.81626302 0.593413 0.82681203 0.52219099 0.57310098 0.50092202 0.553137 0.58846599
		 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303 0.51968998 0.81626302 0.51968998
		 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797 0.52183598
		 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898 0.97255301 0.54521102 0.97227699
		 0.358565 0.39152601 0.447299 0.39152601 0.471104 0.53459102 0.334759 0.53459102 0.472105
		 0.683725 0.333758 0.683725 0.47168499 0.829763 0.33417901 0.829763 0.461916 0.95712602
		 0.34398201 0.95731503 0.45107201 0.98891401 0.356471 0.98912501 0.42356101 0.99704999
		 0.38378099 0.99704999 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099 0.57310098
		 0.53703499 0.459288 0.56166101 0.49178499 0.56129599 0.49112499 0.526932 0.44578201
		 0.526932 0.44578201 0.56129599 0.49112499 0.58846599 0.54950303 0.50092202 0.553137
		 0.49548501 0.83629501 0.51718199 0.81656498 0.48430699 0.82624298 0.51931798 0.94420201
		 0.509556 0.94389701 0.52856803 0.974949 0.51881701 0.97364902 0.517124 0.69449401
		 0.47502801 0.69425201 0.51969302 0.57243699 0.48696399 0.56242502 0.51474702 0.43864399
		 0.52451599 0.438366 0.51474702 0.43864399 0.49828899 0.55254501 0.51969397 0.57243699
		 0.48696399 0.56242502 0.52451599 0.438366 0.49828899 0.55254501 0.48696399 0.56242502
		 0.51474702 0.43864399 0.48696399 0.56242502 0.517124 0.69449401 0.47502801 0.69425201
		 0.47502801 0.69425201 0.517124 0.69449401 0.51718199 0.81656599 0.484308 0.82624298
		 0.49549001 0.83629501 0.50955802 0.94372803 0.51932001 0.94398898 0.53409302 0.98160398
		 0.52432799 0.98150498 0.53409302 0.98160398 0.52432799 0.98150498 0.526932 0.44578201
		 0.52451599 0.438366 0.517124 0.69449401 0.51968998 0.81626302 0.517124 0.69449401
		 0.50092202 0.553137 0.49828899 0.55254501 0.51968998 0.81626302 0.49801701 0.83599597
		 0.49801701 0.83599597 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713
		 0.531147 0.967713 0.54521102 0.97227699 0.53409302 0.98160398 0.54521102 0.97227699
		 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101 0.69467402 0.53409302 0.98160398
		 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599 0.54950303 0.53703499 0.459288
		 0.526932 0.44578201 0.53703499 0.459288 0.53873801 0.51796103 0.51807398 0.50026798
		 0.53703499 0.459288 0.52914 0.46362701 0.57420999 0.51922601 0.53873801 0.51796103
		 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398 0.50026798 0.52914 0.46362701
		 0.56166101 0.49178499 0.52914 0.46362701 0.51807398 0.50026798 0.57420999 0.51922601
		 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801 0.51796103 0.53703499 0.459288
		 0.52914 0.46362701 0.52219099 0.57310098 0.51962101 0.69467402 0.52219099 0.57310098
		 0.54504901 0.98805302 0.55490899 0.996889 0.55490899 0.996889 0.58270597 0.99704999
		 0.51962101 0.69467402;
	setAttr ".uvst[0].uvsp[5000:5249]" 0.091770999 0.369551 0.064251997 0.365547
		 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097 0.019934 0.96737301
		 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197 0.099601001 0.36329001
		 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999 0.306741 0.48896801
		 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386 0.062306002 0.89308703
		 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551 0.097764999 0.46727601
		 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197 0.097764999 0.46727601
		 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801 0.30121699 0.48045999
		 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501 0.138069 0.95506698
		 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572 0.65227503 0.21557599
		 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001 0.65341401 0.32378799
		 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499 0.73260999 0.312702
		 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703 0.125136 0.65086901
		 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297 0.074359 0.58401501
		 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402 0.063110001 0.75552702
		 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301 0.10611 0.53121001
		 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899 0.116622 0.52293497
		 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499 0.75819302
		 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903 0.26120099
		 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099 0.53941703
		 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749 0.99116099
		 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503 0.21557599
		 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702 0.29026499
		 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401 0.29699001
		 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703 0.183137
		 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901 0.18320601
		 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699 0.198421
		 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265 0.64977902
		 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359 0.58401501
		 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001 0.65320301
		 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498 0.093028001
		 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001 0.130492 0.53603703
		 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001 0.29699001 0.65341401
		 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503 0.29158199 0.55224901
		 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002 0.306741 0.48896801
		 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999 0.29026499 0.91377503
		 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001 0.097764999 0.46727601
		 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703 0.061469 0.83352 0.14167701
		 0.83245897 0.119689 0.75301498 0.14167701 0.83245897 0.061469 0.83352 0.063110001
		 0.75552702 0.14167701 0.83245897 0.119689 0.75301498 0.13953499 0.75819302 0.130492
		 0.53603703 0.135295 0.52912903 0.180035 0.54325098 0.183137 0.55549699 0.183137 0.55549699
		 0.180035 0.54325098 0.192002 0.52486098 0.198421 0.553119 0.198421 0.553119 0.192002
		 0.52486098 0.259767 0.54373401 0.24582 0.55150002 0.24582 0.55150002 0.259767 0.54373401
		 0.29158199 0.55224901 0.29438499 0.73260999 0.27644899 0.74265897 0.26120099 0.74019098
		 0.29438499 0.73260999 0.26120099 0.74019098 0.248807 0.73138702 0.248807 0.73138702
		 0.26120099 0.74019098 0.191622 0.768843 0.21557599 0.73471701 0.21557599 0.73471701
		 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297 0.185413 0.73494297 0.180673
		 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918 0.74646097 0.140361 0.75189501
		 0.13953499 0.75819302 0.119689 0.75301498 0.135295 0.52912903 0.130492 0.53603703
		 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401 0.27634099 0.53941703
		 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801 0.29158199 0.55224901
		 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702 0.068103999 0.65794402
		 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999 0.65794402 0.074359 0.58401501
		 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352 0.063110001 0.75552702 0.29026499
		 0.91377503 0.28239101 0.92042899 0.091770999 0.369551 0.099601001 0.36329001 0.158557
		 0.94473398 0.138069 0.95506698 0.058373999 0.917386 0.062306002 0.89308703 0.138069
		 0.95506698 0.158557 0.94473398 0.138069 0.95506698 0.069045 0.97977501 0.046569001
		 0.95226097 0.058373999 0.917386 0.058373999 0.917386 0.046569001 0.95226097 0.88565999
		 0.55092603 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812
		 0.80722499 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478
		 0.790829 0.93568802 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499;
	setAttr ".uvst[0].uvsp[5250:5499]" 0.93568802 0.79121298 0.88260198 0.80684102
		 0.935812 0.80722499 0.92482603 0.821953 0.89381701 0.821729 0.93568802 0.79121298
		 0.935812 0.80722499 0.88260198 0.80684102 0.882478 0.790829 0.88260198 0.80684102
		 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102 0.94025201 0.78669798
		 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764 0.87962699 0.69417298
		 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699 0.94140601 0.99023402
		 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375 0.91796899 0.95507801
		 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398 0.78624701 0.94025201
		 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001 0.760764 0.92724103
		 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699 0.69417298 0.90592903
		 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102 0.62711298 0.88416398
		 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871 0.58281398 0.94667798
		 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602 0.78776801 0.98548299
		 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299 0.697236 0.880871
		 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698 0.58336103 0.88416398
		 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098 0.82421899 0.94726598
		 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999 0.55092603 0.89015901
		 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602 0.55142099 0.94667798
		 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199 0.60996097 0.89381701
		 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102 0.62711298 0.91251802
		 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102 0.62711298 0.88285798
		 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415 0.98548299 0.632415
		 0.93326402 0.55445099 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202
		 0.922194 0.56268197 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199
		 0.91118097 0.58714199 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099
		 0.93326402 0.55445099 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802
		 0.91465998 0.53527802 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202
		 0.90329701 0.54415202 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701
		 0.90489799 0.55673701 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199
		 0.894777 0.57577199 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202
		 0.90329701 0.54415202 0.91465998 0.53527802 0.88565999 0.55092603 0.89015901 0.54916501
		 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499 0.88260198 0.80684102
		 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802 0.79121298 0.935812
		 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802 0.79121298 0.88260198
		 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701 0.821729 0.93568802
		 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478 0.790829 0.88260198
		 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102 0.94025201
		 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699 0.94140601
		 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375 0.91796899
		 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398 0.78624701
		 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001 0.760764
		 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699 0.69417298
		 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102 0.62711298
		 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871 0.58281398
		 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602 0.78776801
		 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299 0.697236
		 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698 0.58336103
		 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098 0.82421899
		 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999 0.55092603
		 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602 0.55142099
		 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199 0.60996097
		 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102 0.62711298
		 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102 0.62711298
		 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415 0.98548299
		 0.632415 0.93326402 0.55445099 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701
		 0.54415202 0.922194 0.56268197 0.90489799 0.55673701 0.91118097 0.58714199 0.894777
		 0.57577199 0.91118097 0.58714199 0.922194 0.56268197 0.922194 0.56268197 0.93326402
		 0.55445099 0.93326402 0.55445099 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998
		 0.53527802 0.91465998 0.53527802 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701
		 0.54415202 0.90329701 0.54415202 0.93326402 0.55445099 0.922194 0.56268197 0.90489799
		 0.55673701 0.90489799 0.55673701 0.922194 0.56268197 0.91118097 0.58714199 0.894777
		 0.57577199 0.894777 0.57577199;
	setAttr ".uvst[0].uvsp[5500:5749]" 0.90489799 0.55673701 0.90489799 0.55673701
		 0.90329701 0.54415202 0.90329701 0.54415202 0.91465998 0.53527802 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801
		 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399
		 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501
		 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372
		 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331
		 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027
		 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001
		 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027
		 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625
		 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098
		 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098
		 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098
		 0.95507801 0.83789098 0.95507801 0.98242199 0.98828101 0.98242199 0.98828101 0.83789098
		 0.95507801 0.83789098 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998
		 0.693349 0.94836199 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499
		 0.93668801 0.697806 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698
		 0.697806 0.988029 0.69780701 0.93968499 0.693349 0.94836199 0.69334799 0.979352 0.69334799
		 0.979352 0.693349 0.94836199 0.649692 0.94568998 0.649692 0.98202401 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402
		 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199
		 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806
		 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.88239098
		 0.83063501 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001
		 0.854976 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697
		 0.932338 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601
		 0.406389 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399
		 0.50628698 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699
		 0.164968 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699 0.88239098 0.83063501 0.84343898 0.75240302 0.82212299 0.750027
		 0.83970898 0.854976 0.72881001 0.854976 0.74639797 0.750027 0.72508198 0.75240302
		 0.68612802 0.83063501;
	setAttr ".uvst[0].uvsp[5750:5815]" 0.85143697 0.932338 0.90570199 0.91825497
		 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699
		 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901 0.178331 0.406389
		 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903 0.91825199
		 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899 0.39843801
		 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601 0.40625
		 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601 0.39843801
		 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899 0.40234399
		 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601 0.39843801
		 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098 0.98624498
		 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601 0.39648399
		 0.69780701 0.93968499 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199
		 0.64118397 0.98503202 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806
		 0.988029 0.69334799 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029
		 0.69780701 0.93968499 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352
		 0.693349 0.94836199 0.649692 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2616 ".vt";
	setAttr ".vt[0:165]"  5.11239767 3.18501043 -7.039651394 4.76390648 3.18486834 -7.24008465
		 4.81009293 4.45386314 -7.32137012 5.33230925 9.41638088 -7.25796223 4.90189266 9.42443943 -7.48472977
		 4.63291502 9.39447594 -7.017025471 5.0061860085 9.40345287 -6.7783246 5.19794798 4.46013689 -6.9019413
		 5.027722359 3.19754171 -6.89240503 5.28281164 4.45406151 -7.049480438 3.97324634 4.51657534 -5.8664012
		 4.057898998 4.53002977 -6.013581276 4.38825035 4.53018188 -5.82358122 4.3036232 4.51672745 -5.67638493
		 5.044551849 9.84256935 -7.73309565 4.93101072 9.94238663 -7.53574944 5.36153746 9.93432522 -7.30890036
		 4.4777422 10.34084511 -6.74796247 4.85114479 10.34982109 -6.50918818 4.4154191 3.18470526 -7.44051838
		 4.48946476 9.4160099 -7.74273062 4.23887062 9.40310383 -7.21965027 4.25251436 4.45971775 -7.44570017
		 4.33738041 4.45366335 -7.59323835 4.33071518 3.19723606 -7.2932868 3.64289427 4.51644421 -6.056399822
		 3.72754717 4.52989817 -6.20358133 4.51843548 9.93395233 -7.79379702 4.083570004 10.34947205 -6.95066309
		 4.80220938 5.35644102 -5.62133503 5.18253136 5.45332623 -6.088261604 5.039613247 6.65044832 -5.84267473
		 4.68294239 6.62981224 -5.41005945 4.96174049 7.72584915 -5.71036625 4.66217089 7.65115356 -5.38047934
		 3.77150607 6.59976578 -5.51720095 4.22298813 5.32797813 -5.5368185 4.10327196 6.59991503 -5.32636881
		 3.75232124 7.61944485 -5.48461294 4.081628799 7.61959743 -5.29521275 3.68896246 9.93059731 -5.37622786
		 3.98830867 9.9307251 -5.20406199 5.37225819 5.45175409 -6.13673162 5.68091631 5.22097254 -6.78541374
		 5.68586445 6.73462486 -6.73073721 5.31637192 6.68658066 -6.070521832 5.59097338 7.99646473 -6.59628677
		 5.26880598 7.76121473 -5.96902227 5.23426962 5.92224264 -7.27777719 4.87648773 5.92749739 -7.437922
		 5.064190865 6.7809515 -7.76490641 5.57553625 6.79252434 -7.46976089 5.74825764 8.0577631 -7.47254848
		 5.49997044 7.99710035 -6.77678871 5.5385828 6.76814508 -7.13669062 5.40871811 5.23922491 -6.98073387
		 4.81143713 5.23896837 -7.32425451 3.89263082 5.32782745 -5.72684097 4.23564482 7.64612484 -5.56302071
		 4.072659969 9.95019913 -5.35074186 5.32345343 5.23709202 -6.83332109 5.67739677 9.84209538 -7.36972857
		 4.94342709 10.43446827 -6.233109 5.72605467 9.0756464 -7.40762949 5.26487732 8.97333622 -6.46626043
		 5.31832695 7.97101974 -6.6059413 4.57546854 5.35395718 -5.64058352 5.020231247 5.46778107 -6.40848255
		 5.29529858 5.45930481 -6.28847265 5.52565956 5.21917963 -6.71538448 4.45496702 7.64621401 -5.43690348
		 4.92578125 7.76266241 -6.24598837 5.20044661 7.77078485 -6.12472439 5.43173027 7.97862339 -6.53857327
		 4.35543585 5.35386944 -5.76712751 5.10746813 8.057488441 -7.84109354 5.073411465 9.075763702 -7.78267717
		 3.77331996 9.95006943 -5.52288723 4.67922688 3.19740105 -7.092857838 4.37070417 10.43494892 -6.56193066
		 3.55629992 5.45261383 -7.02357769 3.34402752 5.35580206 -6.4599905 3.41512513 6.64973736 -6.77700758
		 3.22055197 6.62917805 -6.25115299 3.33921313 7.72515535 -6.64355135 3.20474577 7.6505146 -6.21869993
		 3.38964176 9.93047142 -5.54837799 3.42301488 7.61929226 -5.67401266 3.43972516 6.59961271 -5.70800638
		 3.56227875 5.32769585 -5.91684008 3.90845418 5.22019482 -7.80484343 3.50281358 5.45092583 -7.21194649
		 3.85768771 6.73381472 -7.78219843 3.4728694 6.68578005 -7.13081408 3.78838897 7.99566364 -7.6330595
		 3.40836525 7.7604022 -7.039055347 4.5519371 6.79208565 -8.058477402 4.4666543 8.057192802 -8.20965576
		 4.55816889 5.92194653 -7.66663313 4.21414757 5.23871422 -7.6677947 4.28262758 6.76760578 -7.85905981
		 3.99015832 7.99645138 -7.64515829 3.57703018 7.64583969 -5.94181967 3.47399354 9.94994354 -5.6950593
		 4.12959337 5.23655844 -7.51995754 3.79849482 10.43397236 -6.89161777 4.41225863 9.84154034 -8.097360611
		 4.42104197 9.075070381 -8.15820122 3.83933663 8.97270107 -7.28615761 3.93384099 7.97042465 -7.40222406
		 3.92597175 5.21847391 -7.63543558 3.6726625 5.45861244 -7.22173882 3.91470933 5.46730518 -7.044325352
		 3.47469711 5.35347843 -6.27369356 3.35772347 7.64573145 -6.067965508 3.8202579 7.76218605 -6.88182974
		 3.57731509 7.77007198 -7.058274746 3.81857395 7.97792435 -7.46637154 3.69470835 5.3535862 -6.14714193
		 3.62607312 11.4738121 -6.49707794 3.88927722 11.58312225 -6.25211668 3.94828963 11.59235859 -6.36326504
		 3.67016268 11.46087933 -6.61883783 5.18591547 4.27707148 -6.73683023 4.96611929 2.42815399 -6.66013718
		 5.095124722 2.3053813 -6.63442469 5.45054007 4.26973629 -6.62472439 3.89150357 4.27062559 -7.52133465
		 4.076928139 2.30596113 -7.21997786 4.16394615 2.42861176 -7.12147093 4.82696199 3.15644789 -6.15307617
		 4.6368556 4.11665058 -5.7596035 4.46801519 3.61737633 -6.12008476 4.6777854 3.16727209 -6.23232746
		 3.55262303 4.11726856 -6.38315201 3.79628444 3.15703583 -6.74582386 3.93981624 3.16769361 -6.65673685
		 3.94868493 3.61767244 -6.4187541 4.24199009 11.68110561 -5.87554646 4.18925381 11.82146358 -5.74430418
		 3.93583989 11.63237 -5.34325933 4.25257874 11.41055584 -5.89422655 3.94642854 11.36182213 -5.36193991
		 4.010837555 11.79306126 -5.43410015 3.53520966 11.63259888 -5.57366371 3.54579878 11.3620491 -5.59234428
		 3.25381088 11.28095818 -5.59173822 4.092680931 11.28047943 -5.10929823 3.2672317 10.86255074 -5.6612978
		 4.16224241 10.86204052 -5.14657116 3.31822968 8.86407089 -5.96680021 4.39893723 8.86345482 -5.34527779
		 3.40712166 6.63159943 -6.13315392 3.57614112 11.79330921 -5.6841135 3.84135938 11.68133354 -6.10595083
		 3.85194802 11.41078472 -6.1246314 4.5652771 11.34800053 -5.93098545 4.67996883 10.92561913 -6.046735287
		 4.99997187 9.12778759 -6.39960957 4.88374186 8.76530361 -6.17878532 3.95796371 4.59599066 -7.092983246
		 4.12128305 4.27767897 -7.34910679 3.88483119 6.68231773 -6.96374989 3.79475927 8.76592445 -6.80506563
		 3.9274838 9.1283989 -7.016403675 3.78495741 10.92612934 -6.56146097;
	setAttr ".vt[166:331]" 3.72640562 11.34847927 -6.41342497 5.16359377 2.32104301 -6.73954535
		 4.13338804 2.32163095 -7.33202362 3.94490981 4.45266819 -7.64167881 5.5278554 4.45176506 -6.73131895
		 3.91267705 6.72520638 -7.61028433 5.518857 6.72428894 -6.68654299 3.76072788 8.97677803 -7.33254766
		 5.35716295 8.97586632 -6.41444635 3.62559652 10.96178055 -6.8331418 4.99467039 10.96390629 -6.045513153
		 4.7683382 11.46347809 -5.9869771 4.41015005 11.59209442 -6.097647667 3.75455785 11.82171154 -5.99431801
		 5.046946526 4.59536982 -6.46670294 4.97381449 6.68169641 -6.33747053 4.20321703 2.64565802 -6.92598629
		 5.27300978 9.13561344 -6.27962065 5.1584053 8.77316952 -6.057512283 4.93119001 10.95817566 -5.93661356
		 4.68596411 11.47484207 -5.88739681 5.24864721 6.68123531 -6.21677351 5.32200527 4.5866375 -6.34670496
		 3.71611166 4.58755493 -7.27028036 3.64249969 6.68215132 -7.14047861 3.55202293 8.77408695 -6.98135185
		 3.68661571 9.13651276 -7.19189644 3.56323719 10.95532513 -6.72366285 4.34373045 11.5828619 -5.99073935
		 4.49610472 6.63097858 -5.50687313 4.77759171 2.64532995 -6.59565783 4.6964736 3.63576078 -6.5172801
		 4.95119667 3.35961866 -6.70754433 4.82506514 2.72756815 -6.67815542 4.17711592 3.6360569 -6.81596613
		 4.21322775 3.36003971 -7.13195419 4.25071669 2.72789574 -7.0084676743 4.65499926 2.75867558 -6.71535492
		 4.39671707 2.71841383 -6.27864075 4.1078105 2.72060013 -6.44932985 4.36609268 2.76086187 -6.88604259
		 4.85867739 2.88198662 -6.70534468 4.51681376 2.82869673 -6.12732887 4.55952978 3.22930813 -6.065140247
		 4.41810369 3.50751257 -6.3125391 4.13159513 3.50740337 -6.48202276 3.89697766 3.23082829 -6.45684052
		 3.9497602 2.83124542 -6.46247292 4.29162455 2.88453531 -7.04049015 4.23884249 3.2841177 -7.034855843
		 4.90139437 3.28259802 -6.64315748 4.59258413 3.53470993 -6.60753822 4.30605459 3.53459978 -6.77701759
		 4.93640709 1.14405894 3.99027395 5.26492977 0.95846099 4.36499691 5.34229517 1.43795395 4.44236088
		 4.997159 1.543437 4.051004887 5.20434523 1.14405894 3.7223351 5.57907009 0.95846099 4.050858021
		 5.26509905 1.543437 3.78308797 5.65643311 1.43795395 4.12820101 4.93063116 2.72481298 4.04275322
		 4.57995176 2.72481298 3.68348408 4.81683302 2.72649288 3.45229602 5.16751099 2.72649288 3.81156301
		 4.875422 2.83890605 4.24071884 4.41128111 2.83890605 3.76519489 4.36339998 3.23540711 3.81194091
		 4.65047121 3.49761295 3.75574493 4.8854599 3.49702501 3.5264051 4.90669203 3.23580599 3.28162909
		 4.87624121 2.84048104 3.31136394 5.34038401 2.84048104 3.78688788 5.37083292 3.23580599 3.75715303
		 4.82754183 3.23540711 4.28746605 4.88735104 3.49761295 3.99844193 5.12234116 3.49702501 3.76907992
		 4.50817394 1.20791996 3.49656296 4.091911793 0.95617199 3.54320407 3.967026 1.297212 3.56319594
		 4.41896677 1.42411494 3.51101089 4.56243801 1.20959997 3.80679607 4.1555419 0.95814598 3.90690303
		 4.47322989 1.42579496 3.82122302 4.030654907 1.29918599 3.92691588 5.1681838 1.59862494 3.76595211
		 4.87481403 1.59862494 3.46539998 4.87481403 2.78766608 3.46539998 5.1681838 2.78766608 3.76595211
		 4.57424116 1.59862494 3.75876904 4.57424116 2.78485203 3.75876904 4.86760998 1.59862494 4.059320927
		 4.86760998 2.78485203 4.059320927 5.47824907 1.63783205 3.85940099 5.47824907 1.080827951 3.85940099
		 5.160182 1.63783205 3.21600389 5.160182 1.080827951 3.21600389 4.44996309 1.63783205 3.31967998
		 4.44996309 1.080827951 3.31967998 4.32912779 1.63783205 4.027171135 4.32912779 1.080827951 4.027171135
		 4.96463108 1.63783205 4.36073399 4.96463108 1.080806971 4.36073399 4.9306531 1.20556796 3.52869391
		 5.066249847 0.95963699 3.12874794 5.097455978 1.30235696 3.010938883 4.95306015 1.42298102 3.44419003
		 4.62646818 1.20521104 3.44714999 4.70960712 0.95923799 3.033155918 4.64887524 1.42262399 3.36262488
		 4.7407918 1.30195796 2.91534591 5.85041094 0.70742702 2.42455602 5.86660814 0.15760501 1.31764221
		 5.88485718 0.248367 1.2710222 4.43022299 1.12881303 1.85493004 4.94378424 0.24729601 1.018770218
		 4.93649721 0.156555 1.068309188 5.75271893 1.45960498 3.23519707 5.70099497 1.024863005 3.39057708
		 5.66681433 0.026292 1.6686362 5.74146938 0.18849599 1.38940024 5.61008692 0.68529302 2.37678099
		 5.60676908 0.27190799 2.39093399 5.51688814 0.63075602 3.36928201 4.19966412 0.62924403 3.016166925
		 4.22868586 0.961128 2.90646291 4.61531687 0.68415898 2.11012197 4.61197805 0.27077401 2.1242969
		 5.0086741447 0.187677 1.19298625 4.93401957 0.025451999 1.47222316 5.8972621 1.13049304 2.24815607
		 4.029101849 1.022951961 2.94237304 4.061106205 1.45767295 2.78172302 4.38345623 0.70574701 2.031330109
		 5.54591084 0.96261901 3.25957894 3.12652206 0.68840098 3.129987 2.073204041 0.125286 3.59946299
		 2.021943092 0.215334 3.6021719 3.20252109 1.11707401 4.65624714 2.18985891 0.220542 4.56187201
		 2.23916698 0.130431 4.54796982 3.8919301 1.45063806 2.87385011 4.060853958 1.018206 2.856987
		 2.47755909 -8.3999999e-05 3.63318896 2.19057298 0.158214 3.68253899 3.18481803 0.66805202 3.36814809
		 3.20497799 0.25491899 3.36684608 4.12479877 0.62567401 3.034499884 4.35980892 0.63293999 4.37780809
		 4.2433219 0.96324903 4.39639187 3.36230993 0.673554 4.382617 3.38246989 0.26042101 4.38133621
		 2.3213191 0.162267 4.42984486 2.60830498 0.0039479998 4.38047409 2.94075608 1.10896802 3.1601851
		 4.35913801 1.027425051 4.56199789 4.19371986 1.45996201 4.59895802 3.38826609 0.69650698 4.6259861
		 4.0083332062 0.95598298 3.053085089 5.47253704 11.34886265 3.48621106 5.17788601 11.46284962 3.680125
		 5.26881599 11.46211433 3.76511097 5.57617092 11.32618141 3.55849195 4.89839602 4.19596815 4.636549
		 4.7795372 2.39158511 4.30651188 4.71500301 2.26764297 4.4159441;
	setAttr ".vt[332:497]" 4.72317314 4.18618202 4.85929489 5.97758579 4.18618202 3.604882
		 5.534235 2.26764297 3.59669089 5.42497206 2.39158511 3.66107702 4.37394285 3.14750099 4.084774017
		 4.10232782 4.1257019 3.856251 4.46077824 3.61678791 3.76017594 4.48835087 3.15850496 3.96366596
		 4.97471094 4.1257019 2.98386908 5.20323277 3.14750099 3.25548291 5.082126141 3.15850496 3.36989188
		 4.87863493 3.61678791 3.34231901 4.73442793 11.57118893 3.92500496 4.63108778 11.72014236 3.84906912
		 4.30479002 11.57118893 3.4953661 4.73442793 11.3034811 3.92500496 4.30479002 11.3034811 3.4953661
		 4.38070488 11.72014236 3.59868598 4.62714005 11.57118893 3.17301607 4.62714005 11.3034811 3.17301607
		 4.69738483 11.23502064 2.89065003 4.022422791 11.23502064 3.56561089 4.7368021 10.81836033 2.89821005
		 4.016668797 10.81836033 3.61834192 4.90303802 8.83054256 2.91503191 4.033491135 8.83054256 3.78457808
		 4.9142518 6.62062788 2.91958809 4.73048115 11.72014236 3.24893093 5.056777954 11.57118893 3.60265493
		 5.056777954 11.3034811 3.60265493 4.68522501 11.22743988 4.22841406 4.74219799 10.79983807 4.34387207
		 4.89520502 8.99574947 4.639678 4.69517899 8.65878296 4.45292377 5.571383 4.53263998 3.57672
		 5.75500822 4.19596815 3.77993798 5.58327007 6.5957222 3.58860612 5.571383 8.65878296 3.57672
		 5.75813723 8.99574947 3.77674603 5.46233082 10.79983807 3.623739 5.36018705 11.22743988 3.55345201
		 4.79812098 2.27327108 4.50874186 5.62703323 2.27327108 3.67983007 6.088297844 4.35495901 3.69635701
		 4.81464911 4.35495901 4.97000694 6.19296312 6.59292889 3.78231001 4.90060091 6.59292889 5.074649811
		 6.093213081 8.83161259 3.69041395 4.80872583 8.83161259 4.97492218 5.76363802 10.82258129 3.54337311
		 4.6619792 10.82545757 4.64503193 4.69247103 11.32937336 4.44219398 4.89720011 11.46211433 4.13672686
		 4.98086405 11.72014236 3.49931407 4.69517899 4.53263998 4.45292377 4.70706606 6.5957222 4.46481085
		 5.24109602 2.61676788 3.66049004 4.71116114 9.0010824203 4.86924887 4.50949812 8.66418076 4.68371391
		 4.57453394 10.82965946 4.55656004 4.61970615 11.35047817 4.33906317 4.5214262 6.59288692 4.69545317
		 4.50968599 4.52161503 4.68350506 5.80181599 4.52161503 3.39139605 5.81374502 6.59288692 3.40313506
		 5.80200577 8.66418076 3.39120698 5.98752022 9.0010824203 3.5928061 5.675313 10.82606697 3.45578098
		 4.81221199 11.46284962 4.04577589 4.038046837 6.62062788 3.7957921 4.77894783 2.61676788 4.12263584
		 4.78037596 3.59910607 4.079796791 4.88016796 3.30485392 4.35548401 4.84967709 2.6902051 4.19334316
		 5.19825602 3.59910607 3.66191697 5.47394323 3.30485392 3.76170993 5.31180286 2.6902051 3.7312181
		 5.59496689 0.50238299 5.67310905 6.70120382 0.122388 6.30646801 6.86391306 0.32297999 6.47885799
		 6.95710993 1.31556594 4.45099306 7.69282389 0.32297999 5.64994478 7.52043486 0.122388 5.48723698
		 4.7025919 1.66221297 4.97868013 4.559268 0.83185202 4.81798792 6.031914234 0.83185202 3.34540606
		 6.19260502 1.66221297 3.48873091 4.79446697 0.769104 4.74049902 5.79144192 0.474096 5.45353317
		 5.95471811 0.769104 3.58029008 6.88707495 0.50238299 4.38100004 6.69925117 0.145992 6.13057184
		 6.55500317 0.001701 5.9863019 7.20043802 0.001701 5.34084606 5.7690568 0.19378801 5.43112612
		 6.64525986 0.19378801 4.5549221 5.93497705 0.494403 3.56054997 4.77472687 0.494403 4.72075796
		 7.34470701 0.145992 5.485116 6.66766787 0.474096 4.57730818 5.66495991 1.31556594 5.74316502
		 5.14453697 3.10440898 4.58394289 5.42492914 3.10407305 4.30353022 5.56073713 4.34458494 4.43778276
		 5.64131403 9.20845795 5.19052792 5.96832609 9.21755028 4.83934498 5.59152317 9.23019314 4.46256399
		 5.268857 9.24086094 4.75727701 5.062386036 4.36430407 4.70013714 5.027126789 3.129987 4.46653318
		 5.18038511 4.345047 4.81815577 4.39723206 4.53723907 3.27413106 4.51602793 4.53721809 3.39292789
		 4.25023079 4.53755379 3.658746 4.13141298 4.53757477 3.53996992 6.19080019 9.60634518 5.061316013
		 6.03806591 9.72226524 4.90845585 5.71094894 9.71317196 5.25972414 5.42837286 10.18500042 4.2982378
		 5.10560322 10.19566822 4.59305716 5.70532084 3.1037159 4.023118019 6.31946707 9.20761776 4.51233292
		 5.88623714 9.24008369 4.13985586 5.8230691 4.36335897 3.9393909 5.94106722 4.34412289 4.057411194
		 5.58793211 3.12929392 3.90568495 4.66302919 4.53692389 3.0083129406 4.78182602 4.5369029 3.12711
		 6.38929081 9.71233177 4.5813179 5.72319317 10.19489098 3.97542691 3.99709797 5.3478179 4.046279907
		 4.34815502 5.39674807 4.53245211 4.218081 6.59605789 4.39952087 3.89776802 6.61886406 3.94877696
		 4.17213202 7.665483 4.35067606 3.93172503 7.62596083 3.97748399 4.23305416 6.61712122 3.1074121
		 4.064611912 5.34785986 3.47216105 3.96610188 6.61745691 3.3743639 4.26365089 7.62272692 3.13677001
		 3.99869394 7.62306309 3.40174794 4.30531502 9.90509033 3.1755991 4.064466 9.90538502 3.4164691
		 4.34519291 5.38461018 4.72521019 4.86928988 5.10176086 5.17158699 4.90009689 6.59366417 5.24535894
		 4.3652482 6.60546589 4.72287893 4.86685514 7.84721708 5.19000292 4.34072113 7.67087984 4.71067905
		 5.49141598 5.77508402 4.91070414 5.73621321 5.78314781 4.61147499 6.045962811 6.59292889 4.92021704
		 5.63417387 6.60466814 5.33202696 5.66252279 7.84194613 5.56642818 5.061923981 7.83908987 5.14949512
		 5.32578802 6.60473108 5.21060514 5.12616301 5.11692286 4.96345615 5.60672712 5.11633492 4.48285007
		 4.33043098 5.34752417 3.20634294 4.21497202 7.62503719 3.61800599 4.18319893 9.91132832 3.535182
		 5.0079331398 5.12811613 4.84463692 5.68215895 9.60619736 5.5706501 4.82409906 10.29409504 4.61508703
		 5.6630702 8.8480978 5.58457184 4.881639 8.82915592 4.90020418;
	setAttr ".vt[498:663]" 4.94495296 7.83203411 4.93170404 4.073748112 5.35279512 3.835356
		 4.69517899 5.3954668 4.46050501 4.50968599 5.3846941 4.6911068 4.84268284 5.11072779 5.0059390068
		 4.038530827 7.625247 3.7944901 4.69253302 7.66670084 4.45506716 4.50687313 7.67234993 4.6858778
		 4.85209084 7.83971977 5.022821903 4.2507782 5.35258484 3.65830493 6.17809391 7.84131622 5.050815105
		 6.18790102 8.84786701 5.059361935 4.42402697 9.91103363 3.294312 5.30753899 3.12965107 4.18612003
		 5.28439808 10.29428387 4.15413713 5.65660095 5.39513111 3.22390008 5.17032623 5.34636879 2.87294698
		 5.52514219 6.59444094 3.092375994 5.074398041 6.61741495 2.77206302 5.47759819 7.66388702 3.04510498
		 5.10434389 7.6245122 2.80475998 4.54614305 9.90479755 2.93475008 4.52860785 7.62239122 2.87179208
		 4.49998522 6.61678505 2.84043908 4.59622812 5.34720802 2.94052505 6.2954011 5.099997044 3.74537206
		 5.84933901 5.38274097 3.22095895 6.37102222 6.59183693 3.77430892 5.84852123 6.60363913 3.23950291
		 6.31721878 7.84541082 3.73955393 5.83762121 7.6690321 3.21367311 6.4577508 6.60366011 4.50838518
		 6.69368696 7.84066486 4.535182 6.035399914 5.77441216 4.36667824 6.087310791 5.11574697 4.0022439957
		 6.33632898 6.60349178 4.20000076 6.27671099 7.8375988 3.934623 4.74488688 7.62438583 3.088049889
		 4.66487694 9.9107399 3.053462982 5.96849298 5.12691879 3.88399291 5.74530602 10.29296112 3.6938169
		 6.7000699 9.60493755 4.55265284 6.71306896 8.84679604 4.53448915 6.028616905 8.82772732 3.75314093
		 6.058897972 7.83066893 3.81767511 6.12977314 5.10913181 3.71874404 5.81525707 5.38309813 3.38545299
		 5.58467722 5.39437485 3.57094598 4.95942307 5.35170317 2.94961905 4.92135 7.62415504 2.911587
		 5.58202982 7.66560888 3.56550694 5.81284094 7.67073298 3.37982392 6.15001822 7.8381238 3.72479105
		 4.78239298 5.35193396 3.1266489 4.60053301 12.030500412 3.84686399 4.64064312 11.9798069 3.8869741
		 5.0041098595 11.9798069 3.52352691 4.96397877 12.030500412 3.48341799 1.71645606 10.29273033 1.19949901
		 1.73439002 10.032203674 0.96702898 1.96287 9.54542446 1.44591296 1.88800502 10.40585709 1.37106895
		 2.13441896 9.65855026 1.61748302 1.87798798 9.59668541 1.11062706 2.56302905 9.54542446 0.84573299
		 2.73459911 9.6585722 1.01730299 2.22776389 9.59668541 0.76087201 2.31663609 10.29273033 0.59934002
		 2.48818493 10.40585709 0.77088898 2.08416605 10.032203674 0.61727399 2.16705298 9.62610626 1.72489798
		 1.87805104 10.50260353 1.43589604 2.53268409 9.98678112 1.78865397 2.36237407 10.50335979 1.61834395
		 3.027276039 11.11826134 2.28324604 2.84201407 9.62610626 1.04993701 2.90579104 9.98678112 1.41556799
		 3.19015193 10.77545738 2.44612193 2.55301189 10.50260353 0.76093501 2.73546004 10.50335979 1.24523699
		 3.40036201 11.11826134 1.91015995 3.56325889 10.77545738 2.073035955 4.088741779 11.50869274 2.59854007
		 4.23948002 11.23367786 2.74925709 4.33471489 11.6456337 2.84451294 4.54200602 11.29659271 3.051783085
		 4.74652481 11.76653099 3.029230118 4.11679697 11.87564659 3.59984112 4.14634514 11.76653099 3.62940907
		 4.16889906 11.29659271 3.42486906 4.71697807 11.87564659 2.99966097 3.96162891 11.6456337 3.21759892
		 3.86639404 11.23367786 3.12236404 3.71565604 11.50869274 2.97162604 4.55380821 11.40808105 3.9517169
		 4.54032612 11.6261034 3.93823504 4.44066 11.32322121 3.85553694 4.41728592 11.70092773 3.83216405
		 4.34483719 11.39831734 3.735039 4.33133411 11.61633873 3.7215569 4.15982723 11.38596916 3.43570495
		 4.19443512 11.62341595 3.47031307 4.55282116 11.38596916 3.04271102 4.85217619 11.39831734 3.2277
		 4.97265196 11.32322121 3.32354498 5.068852901 11.40808105 3.436692 5.05535078 11.6261034 3.42319012
		 4.94929981 11.70092773 3.3001709 4.8386941 11.61633873 3.21421909 4.58742905 11.62341595 3.077318907
		 1.844262 10.2328167 1.48633802 1.844262 10.54095078 1.20758402 0.97860003 10.58765411 1.233729
		 0.97860003 10.23359394 1.56084597 -2.207544e-16 10.31215477 1.54242897 0.38923499 10.18245888 1.67103302
		 -2.0543023e-16 10.31041241 1.54457104 1.081100941 9.85168839 1.57040095 0.91156799 9.18033886 2.54351997
		 1.081100941 9.55779266 1.364622 0.91156799 8.87298298 2.32831192 0.741216 8.74616432 2.11770296
		 0.38923499 8.65567493 2.24693704 0.97860003 9.46801758 1.086791992 0.39116701 9.35986805 1.17572701
		 0.38923499 9.33111954 2.71987796 0.38923499 9.063809395 2.70992398 0.741216 9.42160797 2.5906651
		 -1.9707748e-16 9.42559814 1.016777992 -1.8111297e-16 9.42415047 1.019067049 0.38923499 8.75647354 2.49471593
		 -1.8815083e-16 9.95983791 0.086540997 -2.1893921e-16 10.4377346 0.075873002 0.97860003 10.36001396 0.186837
		 -2.2329874e-16 10.76176453 0.30275699 0.97860003 10.68406487 0.41374201 -2.393843e-16 10.92363358 0.637371
		 0.97860003 10.83658791 0.73720503 -2.510635e-16 10.6157732 1.24433398 1.844262 9.68011856 0.60484201
		 1.844262 9.96809101 0.28509599 1.79222405 9.92743492 0.82068002 1.844262 9.51715755 1.016610026
		 1.844262 9.60693359 1.29444003 1.844262 10.57198715 0.57380402 1.844262 10.2479372 0.346899
		 0.97860003 9.95448303 0.183246 0.97860003 9.64481735 0.57254398 -1.5734659e-16 9.61245537 0.546
		 1.844262 10.7318821 0.79499698 1.844262 9.90082836 1.50021899 1.79222405 10.23640823 1.037021995
		 0.38982278 9.93218899 1.52033818 -1.4599077e-16 10.034000397 1.38067424 0.39076158 9.53248024 1.27966213
		 -1.3501856e-16 9.61394501 1.13160431 1.844262 11.38090324 -0.16043603 1.844262 11.68903732 -0.43919003
		 0.97860003 11.73574066 -0.41304505 0.97860003 11.38167953 -0.085928082 -1.8215376e-16 11.46024132 -0.10434508
		 0.38923499 11.33054543 0.024258971 -3.2077736e-16 11.458498 -0.10220301 1.081100941 10.99977493 -0.0763731
		 0.91156799 10.32842445 0.89674592 1.081100941 10.70587921 -0.28215206;
	setAttr ".vt[664:829]" 0.91156799 10.021068573 0.68153787 0.741216 9.89425087 0.47092891
		 0.38923499 9.80376053 0.60016298 0.97860003 10.61610413 -0.55998206 0.39116701 10.50795364 -0.47104704
		 0.38923499 10.47920609 1.073103905 0.38923499 10.21189499 1.063149929 0.741216 10.56969452 0.94389105
		 -2.1377567e-16 10.57368469 -0.62999606 -9.2659905e-17 10.57223701 -0.627707 0.38923499 9.90456009 0.84794188
		 -2.2708755e-16 11.10792351 -1.56023312 -1.5600421e-16 11.58582115 -1.57090104 0.97860003 11.50810051 -1.4599371
		 -1.3045491e-16 11.90985107 -1.34401703 0.97860003 11.83215141 -1.23303199 -2.0028191e-16 12.071720123 -1.0094029903
		 0.97860003 11.98467445 -0.90956903 -2.1113012e-16 11.7638588 -0.40244007 1.844262 10.82820511 -1.041932106
		 1.844262 11.11617661 -1.36167812 1.79222405 11.075521469 -0.82609403 1.844262 10.66524315 -0.63016403
		 1.844262 10.75502014 -0.35233402 1.844262 11.7200737 -1.072970033 1.844262 11.3960228 -1.29987502
		 0.97860003 11.10256958 -1.46352804 0.97860003 10.7929039 -1.074230075 -2.5654508e-16 10.76054192 -1.10077405
		 1.844262 11.87996864 -0.85177708 1.844262 11.048913956 -0.14655507 1.79222405 11.38449478 -0.60975206
		 0.38982278 11.080274582 -0.12643588 -2.6442383e-16 11.18208694 -0.26609981 0.39076158 10.68056679 -0.36711192
		 -5.5080971e-17 10.76203156 -0.51516974 1.844262 12.55194855 -1.83371937 1.844262 12.86008263 -2.11247349
		 0.97860003 12.90678596 -2.086328506 0.97860003 12.55272579 -1.75921142 -2.2234334e-16 12.63128662 -1.77762842
		 0.38923499 12.50159073 -1.64902437 -1.8112132e-16 12.62954426 -1.77548635 1.081100941 12.17082024 -1.74965644
		 0.91156799 11.49947071 -0.77653742 1.081100941 11.87692451 -1.9554354 0.91156799 11.19211483 -0.99174547
		 0.741216 11.065296173 -1.20235443 0.38923499 10.97480679 -1.073120356 0.97860003 11.78714943 -2.2332654
		 0.39116701 11.6789999 -2.1443305 0.38923499 11.65025139 -0.60017943 0.38923499 11.38294125 -0.61013341
		 0.741216 11.74073982 -0.72939229 -1.8013604e-16 11.74473 -2.3032794 -3.5969717e-16 11.74328232 -2.30099034
		 0.38923499 11.075605392 -0.82534146 -2.3497848e-16 12.27896976 -3.23351645 -2.896382e-16 12.75686646 -3.24418449
		 0.97860003 12.67914581 -3.13322043 -2.6418246e-16 13.080896378 -3.017300367 0.97860003 13.0031967163 -2.90631533
		 -1.8715332e-16 13.24276543 -2.68268633 0.97860003 13.15571976 -2.58285236 -1.8723784e-16 12.93490505 -2.07572341
		 1.844262 11.99925041 -2.71521544 1.844262 12.28722286 -3.034961462 1.79222405 12.24656677 -2.49937725
		 1.844262 11.83628941 -2.30344725 1.844262 11.92606544 -2.025617361 1.844262 12.891119 -2.74625349
		 1.844262 12.56706905 -2.97315836 0.97860003 12.27361488 -3.13681149 0.97860003 11.9639492 -2.74751329
		 -1.7197285e-16 11.93158722 -2.77405739 1.844262 13.051013947 -2.52506042 1.844262 12.21996021 -1.8198384
		 1.79222405 12.55554008 -2.28303528 0.38982278 12.25132084 -1.79971921 -1.6118165e-16 12.35313225 -1.93938315
		 0.39076158 11.85161209 -2.04039526 -3.3813635e-16 11.93307686 -2.1884532 0.78248101 10.49464512 3.32102394
		 -2.1037452e-16 10.48544693 3.36180592 -1.6055945e-16 9.93661213 3.48402596 0.93855298 9.99572659 3.43028688
		 0.74207699 9.46274662 2.58927894 1.233078 15.47926807 -2.32344007 1.73674202 15.15735912 -2.93613601
		 -4.0394755e-16 15.13360786 -3.18584704 -3.3052872e-16 15.63107777 -2.20871711 2.45206499 14.088438034 -1.27824903
		 1.60765505 14.72637558 -0.81845403 2.60507107 12.2963829 1.24425006 1.86131406 12.97169971 1.64688301
		 1.764714 10.80359554 2.76895499 1.37342095 11.35785007 2.93409896 -1.6915196e-16 9.34932613 2.59272289
		 -1.8961928e-16 9.95526028 1.42671895 1.34561706 9.84503078 1.87336802 -2.7993166e-16 10.99137878 -0.021105001
		 2.37360907 11.0041675568 0.25097099 2.097374916 12.75903225 -2.22219896 -3.0128025e-16 12.62314224 -2.318295
		 1.38205194 14.11254597 -3.88359308 -3.6650824e-16 14.1324749 -4.092648029 -1.4569222e-16 13.1581583 1.642977
		 -2.1443824e-16 11.47824287 2.983953 -2.0451638e-16 14.84996033 -0.732858 7.91638088 1.14405894 -0.66225576
		 8.41365051 0.95846099 -0.62958717 8.5230608 1.43795395 -0.62958813 8.0022821426 1.543437 -0.66227055
		 7.91638088 1.14405894 -1.041177988 8.41365242 0.95846099 -1.073847771 8.0022983551 1.543437 -1.041178465
		 8.52304554 1.43795395 -1.073861599 7.26446819 1.20791996 -0.7085557 7.0031065941 0.95617199 -0.38123345
		 6.92893505 1.297212 -0.27878952 7.21160507 1.42411494 -0.63526034 7.52220631 1.20959997 -0.52755833
		 7.30527401 0.95814598 -0.16905284 7.46932793 1.42579496 -0.4542768 7.23111629 1.29918599 -0.06659317
		 8.20697975 1.63783205 -1.13793683 8.20697975 1.080827951 -1.13793683 7.5271225 1.63783205 -1.36798
		 7.5271225 1.080827951 -1.36798 7.098231316 1.63783205 -0.79246926 7.098231316 1.080827951 -0.79246926
		 7.51306009 1.63783205 -0.20675421 7.51306009 1.080827951 -0.20675421 8.19829369 1.63783205 -0.42025805
		 8.19829369 1.080806971 -0.42025805 7.58592606 1.20556796 -0.9845736 7.39900303 0.95963699 -1.36325932
		 7.33776569 1.30235696 -1.46862912 7.54201698 1.42298102 -1.06017065 7.31317425 1.20521104 -0.82714248
		 7.079224586 0.95923799 -1.1786685 7.26925039 1.42262399 -0.90275502 7.017971039 1.30195796 -1.28402352
		 7.45554972 0.70742702 -2.41568398 6.68982077 0.15760501 -3.17760849 6.66975927 0.248367 -3.22347808
		 6.048538685 1.12881303 -1.81424558 5.8259511 0.24729601 -2.73640776 5.85582781 0.156555 -2.69622588
		 7.95968056 1.45960498 -1.77339554 8.032976151 1.024863005 -1.6269505 6.79673529 0.026292 -2.78814292
		 6.65207481 0.18849599 -3.038381338 7.25183296 0.68529302 -2.279531 7.2594943 0.27190799 -2.26717758
		 7.88773537 0.63075602 -1.51182532 6.70662737 0.62924403 -0.83009744 6.64957619 0.961128 -0.92819142
		 6.35986805 0.68415898 -1.76467896 6.36752987 0.27077401 -1.75229478 5.99502468 0.187677 -2.65910244
		 6.13968611 0.025451999 -2.40886331 7.36394501 1.13049304 -2.57354641 6.53384161 1.022951961 -0.76167178
		 6.44287539 1.45767295 -0.89789915 6.14020348 0.70574701 -1.65644288;
	setAttr ".vt[830:995]" 7.83068562 0.96261901 -1.60991931 6.028284073 0.68840098 0.0092115402
		 5.70158768 0.125286 0.96613979 5.66725636 0.215334 1.0043022633 7.16125298 1.11707401 1.034701109
		 6.46460104 0.220542 1.56417823 6.4896369 0.130431 1.5194819 6.3883934 1.45063806 -0.71312976
		 6.49591637 1.018206 -0.84450102 6.011357784 -8.3999999e-05 0.70406556 5.84332371 0.158214 0.94189095
		 6.23791122 0.66805202 0.13639545 6.2512455 0.25491899 0.1212194 6.66665268 0.62567401 -0.7641964
		 7.78269291 0.63293999 0.019488811 7.71346474 0.96324903 0.11499834 7.080754757 0.673554 0.72822738
		 7.09410429 0.26042101 0.71306658 6.46420002 0.162267 1.3778646 6.63221979 0.0039479998 1.14002466
		 5.91828156 1.10896802 0.16192126 7.91246033 1.027425051 0.15020514 7.82162666 1.45996201 0.29330826
		 7.27119637 0.69650698 0.88196158 6.5974412 0.95598298 -0.66870093 9.57199669 0.50238299 0.062016487
		 10.80207729 0.122388 -0.27235889 11.039028168 0.32297999 -0.26551342 9.67101097 1.31556594 -1.76533079
		 11.03902626 0.32297999 -1.43777227 10.80207729 0.122388 -1.43092632 8.44995689 1.66221297 0.20198536
		 8.23498535 0.83185202 0.18970394 8.23503113 0.83185202 -1.89288664 8.45000267 1.66221297 -1.90516615
		 8.34650326 0.769104 -0.031399727 9.55566216 0.474096 -0.2321763 8.34653282 0.769104 -1.67221284
		 9.57199669 0.50238299 -1.76530123 10.67631912 0.145992 -0.3953557 10.47230625 0.001701 -0.39537096
		 10.47229195 0.001701 -1.30816841 9.52398968 0.19378801 -0.23219156 9.52398872 0.19378801 -1.47133064
		 8.31861591 0.494403 -1.67221189 8.31858635 0.494403 -0.031400204 10.67631912 0.145992 -1.30816793
		 9.55566311 0.474096 -1.4713459 9.67102623 1.31556594 0.062060833 7.94142818 2.7559073 -0.62012291
		 7.44325638 2.6729579 -0.6262331 7.4469738 2.67529011 -0.95920014 7.9451437 2.75823903 -0.95309019
		 8.022748947 2.88580751 -0.4400239 7.36338425 2.77601838 -0.44812107 7.29707193 3.16935587 -0.38080716
		 7.41575193 3.45653248 -0.6249938 7.41981268 3.45660901 -0.95530009 7.3061142 3.17126846 -1.14452887
		 7.37093353 2.77888179 -1.10171437 8.030299187 2.88867116 -1.093617678 7.9654789 3.2810576 -1.13643026
		 7.95643806 3.27914548 -0.37270927 7.75227165 3.51256561 -0.62085605 7.75631809 3.51263976 -0.95117879
		 7.90502501 1.59162581 -0.98601437 7.48253727 1.58942187 -0.99112391 7.47629738 2.78560257 -0.99112439
		 7.89878559 2.78780651 -0.98601437 7.47741318 1.58939505 -0.56861544 7.47118759 2.78274488 -0.56861591
		 7.89989948 1.59159899 -0.56350613 7.89367485 2.78494859 -0.56350613 6.50616455 11.31232262 -1.40151715
		 6.41664267 11.41366863 -1.053970575 6.540205 11.43349266 -1.058198929 6.63335228 11.31036854 -1.42382073
		 8.09239006 4.28142881 -0.174788 8.075546265 2.43839025 -0.32501221 8.1275301 2.32064128 -0.20125914
		 8.12735367 4.27726984 0.10831165 8.12735367 4.27726984 -1.67637181 8.12751579 2.3206389 -1.36681581
		 8.075546265 2.43839025 -1.24328804 7.51044273 3.11523104 -0.19422388 6.99786186 4.027519226 -0.16357017
		 7.26606178 3.55315065 -0.486902 7.50392342 3.12536812 -0.36176109 6.99786282 4.027519226 -1.40472984
		 7.51044178 3.1152308 -1.37407565 7.50392342 3.12536836 -1.20653939 7.26606131 3.55315065 -1.081397057
		 6.25939894 11.49797821 -0.56431293 6.10898829 11.62484646 -0.5448184 5.65644264 11.3975811 -0.56431341
		 6.30363369 11.23231602 -0.56431293 5.70067739 11.13191986 -0.56431341 5.75759983 11.56633759 -0.54481864
		 5.65644264 11.3975811 -1.022928715 5.70067739 11.13191986 -1.022928715 5.56314373 11.039198875 -1.27376294
		 5.56314278 11.039198875 -0.31347871 5.66495466 10.63121223 -1.29642487 5.66495371 10.63121223 -0.27187467
		 6.12186337 8.67997742 -1.40271235 6.12186241 8.67997742 -0.16558743 6.49808407 6.48879862 -1.40744829
		 5.75761461 11.56633949 -1.042438984 6.25939894 11.49797821 -1.022928238 6.30363369 11.23231602 -1.022928238
		 6.49457502 11.18655777 -0.31347799 6.68622494 10.78237152 -0.27187395 7.29925537 9.044511795 -0.1702919
		 7.083529949 8.66493034 -0.160851 7.76531267 4.57032871 -1.40744805 8.092391014 4.28142881 -1.3935101
		 7.44110155 6.62041807 -1.40744853 7.083529949 8.66493034 -1.40744805 7.29925585 9.044511795 -1.39800668
		 6.68622446 10.78237152 -1.29642463 6.49457502 11.18655777 -1.27376318 8.25004101 2.3467803 -0.19437313
		 8.25004196 2.3467803 -1.37368631 8.24134064 4.46837997 -1.69005609 8.24134159 4.46837997 0.12199593
		 8.0053081512 6.71151352 -1.70336771 8.0052919388 6.71151114 0.13529205 7.50092077 8.91069317 -1.69778061
		 7.50093555 8.91069508 0.12970591 6.83750153 10.83075523 -1.56793261 6.83702612 10.83360958 -0.00057554245
		 6.63282585 11.31353664 -0.16655731 6.540205 11.43349266 -0.5294919 6.10900307 11.62484837 -1.042438745
		 7.76531219 4.57032871 -0.160851 7.44110203 6.62041807 -0.160851 7.90890026 2.64029932 -1.11290264
		 7.33032084 9.055123329 0.12393761 7.11429119 8.67555714 0.13541126 6.71289063 10.81722546 -0.0013051033
		 6.50591278 11.3139286 -0.18815851 7.47314882 6.62286234 0.13527632 7.79877281 4.56465578 0.13512897
		 7.79878759 4.56465864 -1.70320177 7.4731493 6.62286234 -1.70333695 7.11429167 8.67555809 -1.70347095
		 7.33026218 9.055113792 -1.69202924 6.71348381 10.81365967 -1.56741095 6.41662645 11.41366577 -0.53373337
		 6.49808359 6.48879862 -0.16085076 7.90889835 2.64029908 -0.45539522 7.71752357 3.61028957 -0.48688602
		 8.029619217 3.36215711 -0.36175966 7.9960103 2.72970009 -0.45541096 7.71752405 3.61028957 -1.081413507
		 8.029619217 3.36215734 -1.20653844 7.99601078 2.72970009 -1.1128881 8.40855789 3.22082591 -0.38730478
		 8.4085989 3.22048998 -0.78624058 8.39312458 4.48307276 -0.78734732 8.17418671 9.40712929 -0.30919218
		 8.15572357 9.41332817 -0.79163456 7.6248436 9.33782673 -0.79161882 7.60346603 9.34514713 -0.35243845
		 8.22426701 4.47506762 -0.24621058 8.23955727 3.21877241 -0.38730478;
	setAttr ".vt[996:1161]" 8.39306259 4.48353386 -0.24619675 6.72832203 4.40235233 -0.78745151
		 6.8950448 4.43009138 -0.78745103 6.89500427 4.43042707 -0.40927958 6.72828054 4.40268755 -0.40925002
		 8.40334892 9.85107994 -0.79199266 8.16975975 9.93040848 -0.79208183 8.18820858 9.92420578 -0.30950403
		 7.23728561 10.24707317 -0.7924552 7.21590996 10.25439358 -0.35312557 8.40864372 3.2201333 -1.18517494
		 8.17429638 9.40629101 -1.2740469 7.60356617 9.34437084 -1.23082972 8.22437859 4.47412252 -1.32849813
		 8.39317226 4.48260927 -1.32848167 8.23964214 3.21807933 -1.18520689 6.72835922 4.40203714 -1.16562247
		 6.89508295 4.42977619 -1.16562223 8.18830204 9.92336464 -1.27464342 7.21601009 10.25361824 -1.23181462
		 6.85542965 5.25020075 0.046466351 7.43482971 5.39657736 0.14258194 7.052110672 6.55599022 0.14054966
		 6.50729084 6.48853302 0.047766209 6.80888748 7.60616493 0.13848972 6.38485432 7.49525261 0.044031143
		 6.15246248 6.42767382 -0.7892592 6.49993706 5.19105101 -0.40996695 6.15240669 6.42800665 -0.40945959
		 6.028371334 7.43259764 -0.79014039 6.028330803 7.43293333 -0.41316438 5.70772791 9.70691872 -0.79215717
		 5.70769405 9.7072134 -0.4494803 7.57001543 5.40670776 0.28181028 8.29773521 5.23940945 0.2265234
		 8.12460327 6.73212719 0.25708675 7.38072443 6.62030172 0.26588535 7.85530376 7.96574593 0.24135542
		 7.1789093 7.67328072 0.27465439 8.43996334 5.94979286 -0.4016161 8.4004364 5.95143509 -0.7886157
		 8.70062828 6.82729006 -0.78933334 8.69870377 6.83894205 -0.20345592 8.67863464 8.0974617 -0.056877613
		 7.9651022 7.97573996 0.073774815 8.39709663 6.78878641 -0.070456028 8.32943153 5.26015091 -0.10426426
		 8.3295002 5.25956249 -0.78800297 6.49999332 5.19071817 -0.78815365 6.33151579 7.48542976 -0.41317916
		 5.87332773 9.74085426 -0.4494946 8.16124535 5.24356174 -0.10468197 8.40386009 9.85101318 -0.067842484
		 7.017573357 10.32175159 -0.13720322 8.52549839 9.098105431 -0.044360638 7.50007534 8.90804672 0.02468729
		 7.7313652 7.92962503 0.0020551682 6.76038694 5.23945141 -0.15810299 7.6280632 5.42744541 -0.15545797
		 7.66149616 5.42202568 0.14053583 8.16134739 5.22584534 0.1276145 6.3315115 7.48564291 -0.16212106
		 7.24710369 7.68037319 -0.15744352 7.27785301 7.69125462 0.13881731 7.72887135 7.93704796 0.13293171
		 6.76040649 5.23924017 -0.40998292 8.67870903 8.096831322 -0.79042339 8.52527046 9.09783268 -0.79131985
		 5.87334728 9.74055672 -0.79215574 8.23961258 3.21843886 -0.78625488 7.017085075 10.32186317 -0.79254484
		 7.43502235 5.3949604 -1.7190516 6.85559559 5.24875021 -1.62278867 7.05231905 6.55437613 -1.71909785
		 6.50747108 6.48708534 -1.62631392 6.80907774 7.60456896 -1.71890354 6.38502026 7.49380302 -1.62435722
		 5.70776129 9.70662594 -1.13480473 6.028411865 7.43226194 -1.16711593 6.15248871 6.42733526 -1.16905856
		 6.50003099 5.19040203 -1.16632462 8.29795361 5.23764706 -1.80251384 7.57025051 5.40484047 -1.85825038
		 8.12481785 6.73029947 -1.83572364 7.38095379 6.61847734 -1.84447718 7.85554218 7.96394396 -1.82217312
		 7.17914057 7.6714344 -1.85509729 8.69882393 6.83793402 -1.37522554 8.67878819 8.096179962 -1.52399874
		 8.4400444 5.94912148 -1.17558527 8.32958126 5.25897646 -1.47175789 8.39725685 6.78754902 -1.50822306
		 7.96528912 7.97425032 -1.65459275 6.33159447 7.4847784 -1.16713095 5.8733964 9.74026585 -1.13481903
		 8.16138363 5.24236393 -1.47135472 7.017715931 10.32061863 -1.44787192 8.40400696 9.84975338 -1.51611185
		 8.52565479 9.096803665 -1.53827906 7.50025129 8.90661907 -1.60720778 7.7315321 7.92826033 -1.5828414
		 8.16153812 5.22424936 -1.7036345 7.66170168 5.42043209 -1.71699071 7.62820101 5.42635489 -1.42101216
		 6.7605238 5.2383604 -1.41821837 6.33163261 7.48454952 -1.41818929 7.24723959 7.67928219 -1.42299795
		 7.27805948 7.68964005 -1.71927619 7.72906256 7.93545198 -1.7137351 6.76048565 5.23858976 -1.1663537
		 6.22605705 11.84802628 -0.53975391 6.26252651 11.7812624 -0.53986883 6.26156044 11.78160667 -1.053873301
		 6.22507668 11.84837437 -1.053742886 1.95894122 11.52048397 -0.36445946 1.72841001 11.32593155 -0.54121447
		 2.037008524 10.69962502 -0.36516464 2.22543931 11.54581833 -0.36493552 2.30350566 10.72495842 -0.36564064
		 1.77389503 10.84755135 -0.54162538 2.03537631 10.70020485 -1.21393061 2.3018949 10.72555447 -1.21442163
		 1.77296615 10.84788132 -1.036267519 1.95733762 11.52105427 -1.2132256 2.22382092 11.54639339 -1.21371639
		 1.72748065 11.32626057 -1.035856605 2.38605046 10.66118526 -0.31296289 2.2945025 11.62394619 -0.31213593
		 2.79252744 10.89948463 -0.52703488 2.73859668 11.46689606 -0.52654743 3.83054471 11.73135662 -0.52845013
		 2.38423085 10.66183186 -1.26749992 2.79153609 10.89983845 -1.054672003 3.93277049 11.33120346 -0.52891624
		 2.29268241 11.62459278 -1.26667285 2.73757672 11.46725845 -1.054184437 3.82953811 11.73171329 -1.056072235
		 3.93177867 11.33155632 -1.056553125 4.87759304 11.77354527 -1.058041811 4.9863348 11.44302273 -1.058488131
		 5.25122452 11.78607273 -1.058745861 5.41053295 11.3590126 -1.059353828 5.68885517 11.7588253 -1.22017789
		 5.68763161 11.87506485 -0.3713274 5.69047356 11.75825024 -0.37139797 5.41152477 11.35865974 -0.53171682
		 5.68601418 11.87563896 -1.22010922 5.25223064 11.7857151 -0.53112364 4.98735523 11.44266033 -0.53085136
		 4.87859917 11.77318859 -0.53041983 6.056529045 11.247715 -0.43265581 6.11158466 11.45953178 -0.43261719
		 5.88866234 11.21732235 -0.42035794 5.98401833 11.58428669 -0.42029023 5.76965237 11.33932304 -0.43749642
		 5.82469368 11.55114365 -0.43744302 5.44266033 11.44244766 -0.5176425 5.56830311 11.64978886 -0.51774144
		 5.4416008 11.44282436 -1.073418856 5.7682848 11.33981037 -1.15498066 5.88722801 11.21783257 -1.1727066
		 6.055153847 11.24820423 -1.16102362 6.11018276 11.46003056 -1.16098475 5.9825983 11.58479118 -1.17265534
		 5.82334042 11.5516243 -1.15494108 5.56724262 11.65016556 -1.073517799;
	setAttr ".vt[1162:1327]" 4.31654358 11.96355629 -5.94604158 4.32564926 11.8895874 -5.96130991
		 3.87833428 11.88676739 -6.21449518 3.86923623 11.96074486 -6.19920969 2.38724017 12.76262474 -2.20631409
		 2.099269629 12.63384247 -2.055562973 2.32265878 11.9498682 -2.083184242 2.51743937 12.71749878 -2.43582439
		 2.45285749 11.90473938 -2.3126936 2.061627626 12.16018677 -1.98379612 1.58399963 11.9452343 -2.50123692
		 1.7141974 11.90011597 -2.73077583 1.63116312 12.15747261 -2.22744513 1.64859319 12.75797462 -2.62438822
		 1.77877355 12.71285629 -2.85389519 1.66880488 12.63112831 -2.29921198 2.53027368 11.82197762 -2.34120226
		 2.60602641 12.77523232 -2.48562908 2.568012 11.94446564 -2.84261036 2.61266875 12.50626755 -2.92774963
		 3.16601682 12.47644234 -3.90509748 1.69957185 11.8167572 -2.8113637 2.10883307 11.94157028 -3.10251093
		 3.16512561 12.063486099 -3.8989377 1.77532458 12.7700119 -2.95579052 2.15347767 12.50338936 -3.18762875
		 2.70684457 12.47355652 -4.16498041 2.70594668 12.060592651 -4.1588378 3.21165872 12.2402935 -5.054317951
		 3.22249532 11.89284706 -5.069636822 3.39132953 12.15483093 -5.37081957 3.4143002 11.70099449 -5.40639544
		 3.45696378 12.01320076 -5.81122446 4.20874786 12.13134384 -5.41762304 4.19562817 12.017843246 -5.39315367
		 3.87347913 11.70388985 -5.14649439 3.47008157 12.12670231 -5.83569384 3.8505013 12.15771675 -5.11093569
		 3.68168664 11.89572525 -4.80975771 3.67083097 12.24317837 -4.79443502 4.25446796 11.42905045 -5.61282492
		 4.30698204 11.61914063 -5.70772028 4.18110561 11.44362068 -5.45900774 4.27207279 11.77295208 -5.62338591
		 4.12433147 11.59234619 -5.3957715 4.17685127 11.78244591 -5.49064684 3.91095185 11.7767334 -5.18493319
		 3.99656129 11.94407463 -5.33804941 3.42727828 11.77369308 -5.45868349 3.49992871 11.58842278 -5.74917078
		 3.52636123 11.43950653 -5.82957983 3.62059951 11.42505836 -5.97159529 3.67310166 11.61516571 -6.066470623
		 3.6173203 11.76882935 -5.99397707 3.55244327 11.778512 -5.84406424 3.51288724 11.94103527 -5.61179876
		 6.059696674 0.56035221 -7.79204035 6.38517952 0.18450561 -9.010104179 6.50880957 0.38290775 -9.20932293
		 4.54631567 1.36465764 -8.78499413 5.50638962 0.38290775 -9.79199409 5.39446831 0.18450561 -9.58597183
		 5.62167597 1.70752025 -6.76299334 5.50432158 0.88622439 -6.58527184 3.72348547 0.88622439 -7.6204648
		 3.81983662 1.70752025 -7.81039381 5.37068272 0.82416141 -6.79053259 5.8000083 0.53237402 -7.92430067
		 3.96760917 0.82416141 -7.60612535 4.49712563 0.56035221 -8.70030975 6.21749449 0.20785193 -8.96370316
		 6.11607647 0.065136164 -8.78925514 5.33552027 0.065136164 -9.24295044 5.78425217 0.25512615 -7.8972249
		 4.72464275 0.25512615 -8.51313877 3.95373392 0.55245936 -7.5822525 5.3568058 0.55245936 -6.76666021
		 5.43693304 0.20785193 -9.41741753 4.74037361 0.53237402 -8.5402317 6.10895729 1.36465764 -7.87669992
		 4.33493757 1.63770366 -6.88750887 4.12057066 1.6355238 -6.52877188 4.11746883 2.81864572 -6.52343655
		 4.33183622 2.82082558 -6.88217354 4.47931767 1.63549733 -6.31438208 4.47622299 2.81581926 -6.30905867
		 4.6936841 1.63767719 -6.67311811 4.6905899 2.81799889 -6.66779518 4.17756128 1.25586057 -6.61392593
		 3.7608304 1.012614369 -6.6423111 3.64028859 1.35159278 -6.64231968 4.09109211 1.47090006 -6.61395407
		 4.1766119 1.25550747 -6.30243969 3.75973082 1.012219667 -6.27711153 4.090121746 1.47054696 -6.30246305
		 3.63919401 1.3511982 -6.27709961 4.35511303 1.68340564 -7.22122908 4.35511303 1.13248229 -7.22122908
		 3.82047534 1.68340564 -6.75421476 3.82047534 1.13248229 -6.75421476 4.099423885 1.68340564 -6.10140371
		 4.099423885 1.13248229 -6.10140371 4.80646992 1.68340564 -6.16500092 4.80646992 1.13248229 -6.16500092
		 4.96449471 1.68340564 -6.85707808 4.96449471 1.13246155 -6.85707808 4.25380802 1.25818682 -6.2018466
		 4.40379715 1.0091872215 -5.81565619 4.45453119 1.34650397 -5.70131111 4.29020834 1.47202158 -6.12021112
		 4.53669071 1.25984859 -6.33227777 4.73542881 1.011139631 -5.96857977 4.57307196 1.47368336 -6.2506361
		 4.78618336 1.34845638 -5.85423851 2.88899016 0.76315778 -7.21377325 1.77450848 0.21933816 -6.94288588
		 1.72531295 0.3091093 -6.9485302 2.70393467 1.17994356 -5.71166849 1.72239947 0.30805001 -5.98487663
		 1.77161026 0.21829961 -5.99045229 3.68880105 1.50712419 -7.32561445 3.85046029 1.07712841 -7.31549978
		 2.16068935 0.089458704 -6.8407259 1.87480235 0.24989192 -6.84140539 2.90415955 0.74126542 -6.97189665
		 2.91853094 0.33239329 -6.97230768 3.87671375 0.68732381 -7.13407946 3.87260008 0.68582833 -5.7852397
		 3.76036119 1.014089108 -5.78521204 2.9010663 0.74014372 -5.9532547 2.9154644 0.33127171 -5.95365095
		 1.87254286 0.24908186 -6.091029644 2.15843081 0.088627875 -6.090350151 2.70846701 1.1816051 -7.21390676
		 3.84522867 1.075238228 -5.60347652 3.68352365 1.50521326 -5.59340143 2.88443637 0.76149607 -5.71161699
		 3.76447535 1.015563846 -7.13405275 4.25313663 0.74433947 -4.78799725 4.96870613 0.18737198 -3.89975882
		 4.98427486 0.27643692 -3.8514328 5.69319391 1.16833258 -5.24709797 5.85935545 0.28158808 -4.25496912
		 5.83357906 0.19246082 -4.298594 3.81444263 1.49825525 -5.45497322 3.75554919 1.070544004 -5.61221647
		 4.8985734 0.063370652 -4.29491282 5.018420696 0.21994051 -4.03301239 4.46608925 0.72421265 -4.90403652
		 4.45973969 0.31558979 -4.92298222 3.90908384 0.68229723 -5.71830082 5.13395548 0.68948394 -6.28311443
		 5.18121719 1.016186953 -6.1764431 5.3911109 0.72965455 -5.33059597 5.38478231 0.32103172 -5.34954691
		 5.69983625 0.22394927 -4.3472333 5.57996988 0.067358635 -4.60912848 4.32904434 1.16031504 -4.61802816
		 5.31023455 1.079662323 -6.32910776 5.38745499 1.50747728 -6.180305 5.61723089 0.75235695 -5.41703224
		 3.95634198 1.0090003014 -5.61165047 4.61743355 1.19502306 -6.73629522 4.89253712 1.011451244 -7.14528084
		 4.94691944 1.48570943 -7.2388401 4.6601181 1.59004092 -6.80975819;
	setAttr ".vt[1328:1493]" 4.29341078 1.19502306 -6.92463875 4.51264334 1.011451244 -7.3661027
		 4.33611584 1.59004092 -6.99810839 4.56700611 1.48570943 -7.45965338 -5.11239767 3.18501043 -7.039651394
		 -4.76390648 3.18486834 -7.24008465 -4.81009293 4.45386314 -7.32137012 -5.33230925 9.41638088 -7.25796223
		 -4.90189266 9.42443943 -7.48472977 -4.63291502 9.39447594 -7.017025471 -5.0061860085 9.40345287 -6.7783246
		 -5.19794798 4.46013689 -6.9019413 -5.027722359 3.19754171 -6.89240503 -5.28281164 4.45406151 -7.049480438
		 -3.97324634 4.51657534 -5.8664012 -4.057898998 4.53002977 -6.013581276 -4.38825035 4.53018188 -5.82358122
		 -4.3036232 4.51672745 -5.67638493 -5.044551849 9.84256935 -7.73309565 -4.93101072 9.94238663 -7.53574944
		 -5.36153746 9.93432522 -7.30890036 -4.4777422 10.34084511 -6.74796247 -4.85114479 10.34982109 -6.50918818
		 -4.4154191 3.18470526 -7.44051838 -4.48946476 9.4160099 -7.74273062 -4.23887062 9.40310383 -7.21965027
		 -4.25251436 4.45971775 -7.44570017 -4.33738041 4.45366335 -7.59323835 -4.33071518 3.19723606 -7.2932868
		 -3.64289427 4.51644421 -6.056399822 -3.72754717 4.52989817 -6.20358133 -4.51843548 9.93395233 -7.79379702
		 -4.083570004 10.34947205 -6.95066309 -4.80220938 5.35644102 -5.62133503 -5.18253136 5.45332623 -6.088261604
		 -5.039613247 6.65044832 -5.84267473 -4.68294239 6.62981224 -5.41005945 -4.96174049 7.72584915 -5.71036625
		 -4.66217089 7.65115356 -5.38047934 -3.77150607 6.59976578 -5.51720095 -4.22298813 5.32797813 -5.5368185
		 -4.10327196 6.59991503 -5.32636881 -3.75232124 7.61944485 -5.48461294 -4.081628799 7.61959743 -5.29521275
		 -3.68896246 9.93059731 -5.37622786 -3.98830867 9.9307251 -5.20406199 -5.37225819 5.45175409 -6.13673162
		 -5.68091631 5.22097254 -6.78541374 -5.68586445 6.73462486 -6.73073721 -5.31637192 6.68658066 -6.070521832
		 -5.59097338 7.99646473 -6.59628677 -5.26880598 7.76121473 -5.96902227 -5.23426962 5.92224264 -7.27777719
		 -4.87648773 5.92749739 -7.437922 -5.064190865 6.7809515 -7.76490641 -5.57553625 6.79252434 -7.46976089
		 -5.74825764 8.0577631 -7.47254848 -5.49997044 7.99710035 -6.77678871 -5.5385828 6.76814508 -7.13669062
		 -5.40871811 5.23922491 -6.98073387 -4.81143713 5.23896837 -7.32425451 -3.89263082 5.32782745 -5.72684097
		 -4.23564482 7.64612484 -5.56302071 -4.072659969 9.95019913 -5.35074186 -5.32345343 5.23709202 -6.83332109
		 -5.67739677 9.84209538 -7.36972857 -4.94342709 10.43446827 -6.233109 -5.72605467 9.0756464 -7.40762949
		 -5.26487732 8.97333622 -6.46626043 -5.31832695 7.97101974 -6.6059413 -4.57546854 5.35395718 -5.64058352
		 -5.020231247 5.46778107 -6.40848255 -5.29529858 5.45930481 -6.28847265 -5.52565956 5.21917963 -6.71538448
		 -4.45496702 7.64621401 -5.43690348 -4.92578125 7.76266241 -6.24598837 -5.20044661 7.77078485 -6.12472439
		 -5.43173027 7.97862339 -6.53857327 -4.35543585 5.35386944 -5.76712751 -5.10746813 8.057488441 -7.84109354
		 -5.073411465 9.075763702 -7.78267717 -3.77331996 9.95006943 -5.52288723 -4.67922688 3.19740105 -7.092857838
		 -4.37070417 10.43494892 -6.56193066 -3.55629992 5.45261383 -7.02357769 -3.34402752 5.35580206 -6.4599905
		 -3.41512513 6.64973736 -6.77700758 -3.22055197 6.62917805 -6.25115299 -3.33921313 7.72515535 -6.64355135
		 -3.20474577 7.6505146 -6.21869993 -3.38964176 9.93047142 -5.54837799 -3.42301488 7.61929226 -5.67401266
		 -3.43972516 6.59961271 -5.70800638 -3.56227875 5.32769585 -5.91684008 -3.90845418 5.22019482 -7.80484343
		 -3.50281358 5.45092583 -7.21194649 -3.85768771 6.73381472 -7.78219843 -3.4728694 6.68578005 -7.13081408
		 -3.78838897 7.99566364 -7.6330595 -3.40836525 7.7604022 -7.039055347 -4.5519371 6.79208565 -8.058477402
		 -4.4666543 8.057192802 -8.20965576 -4.55816889 5.92194653 -7.66663313 -4.21414757 5.23871422 -7.6677947
		 -4.28262758 6.76760578 -7.85905981 -3.99015832 7.99645138 -7.64515829 -3.57703018 7.64583969 -5.94181967
		 -3.47399354 9.94994354 -5.6950593 -4.12959337 5.23655844 -7.51995754 -3.79849482 10.43397236 -6.89161777
		 -4.41225863 9.84154034 -8.097360611 -4.42104197 9.075070381 -8.15820122 -3.83933663 8.97270107 -7.28615761
		 -3.93384099 7.97042465 -7.40222406 -3.92597175 5.21847391 -7.63543558 -3.6726625 5.45861244 -7.22173882
		 -3.91470933 5.46730518 -7.044325352 -3.47469711 5.35347843 -6.27369356 -3.35772347 7.64573145 -6.067965508
		 -3.8202579 7.76218605 -6.88182974 -3.57731509 7.77007198 -7.058274746 -3.81857395 7.97792435 -7.46637154
		 -3.69470835 5.3535862 -6.14714193 -3.62607312 11.4738121 -6.49707794 -3.88927722 11.58312225 -6.25211668
		 -3.94828963 11.59235859 -6.36326504 -3.67016268 11.46087933 -6.61883783 -5.18591547 4.27707148 -6.73683023
		 -4.96611929 2.42815399 -6.66013718 -5.095124722 2.3053813 -6.63442469 -5.45054007 4.26973629 -6.62472439
		 -3.89150357 4.27062559 -7.52133465 -4.076928139 2.30596113 -7.21997786 -4.16394615 2.42861176 -7.12147093
		 -4.82696199 3.15644789 -6.15307617 -4.6368556 4.11665058 -5.7596035 -4.46801519 3.61737633 -6.12008476
		 -4.6777854 3.16727209 -6.23232746 -3.55262303 4.11726856 -6.38315201 -3.79628444 3.15703583 -6.74582386
		 -3.93981624 3.16769361 -6.65673685 -3.94868493 3.61767244 -6.4187541 -4.24199009 11.68110561 -5.87554646
		 -4.18925381 11.82146358 -5.74430418 -3.93583989 11.63237 -5.34325933 -4.25257874 11.41055584 -5.89422655
		 -3.94642854 11.36182213 -5.36193991 -4.010837555 11.79306126 -5.43410015 -3.53520966 11.63259888 -5.57366371
		 -3.54579878 11.3620491 -5.59234428 -3.25381088 11.28095818 -5.59173822 -4.092680931 11.28047943 -5.10929823
		 -3.2672317 10.86255074 -5.6612978 -4.16224241 10.86204052 -5.14657116 -3.31822968 8.86407089 -5.96680021
		 -4.39893723 8.86345482 -5.34527779 -3.40712166 6.63159943 -6.13315392 -3.57614112 11.79330921 -5.6841135
		 -3.84135938 11.68133354 -6.10595083 -3.85194802 11.41078472 -6.1246314 -4.5652771 11.34800053 -5.93098545
		 -4.67996883 10.92561913 -6.046735287 -4.99997187 9.12778759 -6.39960957 -4.88374186 8.76530361 -6.17878532
		 -3.95796371 4.59599066 -7.092983246 -4.12128305 4.27767897 -7.34910679;
	setAttr ".vt[1494:1659]" -3.88483119 6.68231773 -6.96374989 -3.79475927 8.76592445 -6.80506563
		 -3.9274838 9.1283989 -7.016403675 -3.78495741 10.92612934 -6.56146097 -3.72640562 11.34847927 -6.41342497
		 -5.16359377 2.32104301 -6.73954535 -4.13338804 2.32163095 -7.33202362 -3.94490981 4.45266819 -7.64167881
		 -5.5278554 4.45176506 -6.73131895 -3.91267705 6.72520638 -7.61028433 -5.518857 6.72428894 -6.68654299
		 -3.76072788 8.97677803 -7.33254766 -5.35716295 8.97586632 -6.41444635 -3.62559652 10.96178055 -6.8331418
		 -4.99467039 10.96390629 -6.045513153 -4.7683382 11.46347809 -5.9869771 -4.41015005 11.59209442 -6.097647667
		 -3.75455785 11.82171154 -5.99431801 -5.046946526 4.59536982 -6.46670294 -4.97381449 6.68169641 -6.33747053
		 -4.20321703 2.64565802 -6.92598629 -5.27300978 9.13561344 -6.27962065 -5.1584053 8.77316952 -6.057512283
		 -4.93119001 10.95817566 -5.93661356 -4.68596411 11.47484207 -5.88739681 -5.24864721 6.68123531 -6.21677351
		 -5.32200527 4.5866375 -6.34670496 -3.71611166 4.58755493 -7.27028036 -3.64249969 6.68215132 -7.14047861
		 -3.55202293 8.77408695 -6.98135185 -3.68661571 9.13651276 -7.19189644 -3.56323719 10.95532513 -6.72366285
		 -4.34373045 11.5828619 -5.99073935 -4.49610472 6.63097858 -5.50687313 -4.77759171 2.64532995 -6.59565783
		 -4.6964736 3.63576078 -6.5172801 -4.95119667 3.35961866 -6.70754433 -4.82506514 2.72756815 -6.67815542
		 -4.17711592 3.6360569 -6.81596613 -4.21322775 3.36003971 -7.13195419 -4.25071669 2.72789574 -7.0084676743
		 -4.65499926 2.75867558 -6.71535492 -4.39671707 2.71841383 -6.27864075 -4.1078105 2.72060013 -6.44932985
		 -4.36609268 2.76086187 -6.88604259 -4.85867739 2.88198662 -6.70534468 -4.51681376 2.82869673 -6.12732887
		 -4.55952978 3.22930813 -6.065140247 -4.41810369 3.50751257 -6.3125391 -4.13159513 3.50740337 -6.48202276
		 -3.89697766 3.23082829 -6.45684052 -3.9497602 2.83124542 -6.46247292 -4.29162455 2.88453531 -7.04049015
		 -4.23884249 3.2841177 -7.034855843 -4.90139437 3.28259802 -6.64315748 -4.59258413 3.53470993 -6.60753822
		 -4.30605459 3.53459978 -6.77701759 -4.93640709 1.14405894 3.99027395 -5.26492977 0.95846099 4.36499691
		 -5.34229517 1.43795395 4.44236088 -4.997159 1.543437 4.051004887 -5.20434523 1.14405894 3.7223351
		 -5.57907009 0.95846099 4.050858021 -5.26509905 1.543437 3.78308797 -5.65643311 1.43795395 4.12820101
		 -4.93063116 2.72481298 4.04275322 -4.57995176 2.72481298 3.68348408 -4.81683302 2.72649288 3.45229602
		 -5.16751099 2.72649288 3.81156301 -4.875422 2.83890605 4.24071884 -4.41128111 2.83890605 3.76519489
		 -4.36339998 3.23540711 3.81194091 -4.65047121 3.49761295 3.75574493 -4.8854599 3.49702501 3.5264051
		 -4.90669203 3.23580599 3.28162909 -4.87624121 2.84048104 3.31136394 -5.34038401 2.84048104 3.78688788
		 -5.37083292 3.23580599 3.75715303 -4.82754183 3.23540711 4.28746605 -4.88735104 3.49761295 3.99844193
		 -5.12234116 3.49702501 3.76907992 -4.50817394 1.20791996 3.49656296 -4.091911793 0.95617199 3.54320407
		 -3.967026 1.297212 3.56319594 -4.41896677 1.42411494 3.51101089 -4.56243801 1.20959997 3.80679607
		 -4.1555419 0.95814598 3.90690303 -4.47322989 1.42579496 3.82122302 -4.030654907 1.29918599 3.92691588
		 -5.1681838 1.59862494 3.76595211 -4.87481403 1.59862494 3.46539998 -4.87481403 2.78766608 3.46539998
		 -5.1681838 2.78766608 3.76595211 -4.57424116 1.59862494 3.75876904 -4.57424116 2.78485203 3.75876904
		 -4.86760998 1.59862494 4.059320927 -4.86760998 2.78485203 4.059320927 -5.47824907 1.63783205 3.85940099
		 -5.47824907 1.080827951 3.85940099 -5.160182 1.63783205 3.21600389 -5.160182 1.080827951 3.21600389
		 -4.44996309 1.63783205 3.31967998 -4.44996309 1.080827951 3.31967998 -4.32912779 1.63783205 4.027171135
		 -4.32912779 1.080827951 4.027171135 -4.96463108 1.63783205 4.36073399 -4.96463108 1.080806971 4.36073399
		 -4.9306531 1.20556796 3.52869391 -5.066249847 0.95963699 3.12874794 -5.097455978 1.30235696 3.010938883
		 -4.95306015 1.42298102 3.44419003 -4.62646818 1.20521104 3.44714999 -4.70960712 0.95923799 3.033155918
		 -4.64887524 1.42262399 3.36262488 -4.7407918 1.30195796 2.91534591 -5.85041094 0.70742702 2.42455602
		 -5.86660814 0.15760501 1.31764221 -5.88485718 0.248367 1.2710222 -4.43022299 1.12881303 1.85493004
		 -4.94378424 0.24729601 1.018770218 -4.93649721 0.156555 1.068309188 -5.75271893 1.45960498 3.23519707
		 -5.70099497 1.024863005 3.39057708 -5.66681433 0.026292 1.6686362 -5.74146938 0.18849599 1.38940024
		 -5.61008692 0.68529302 2.37678099 -5.60676908 0.27190799 2.39093399 -5.51688814 0.63075602 3.36928201
		 -4.19966412 0.62924403 3.016166925 -4.22868586 0.961128 2.90646291 -4.61531687 0.68415898 2.11012197
		 -4.61197805 0.27077401 2.1242969 -5.0086741447 0.187677 1.19298625 -4.93401957 0.025451999 1.47222316
		 -5.8972621 1.13049304 2.24815607 -4.029101849 1.022951961 2.94237304 -4.061106205 1.45767295 2.78172302
		 -4.38345623 0.70574701 2.031330109 -5.54591084 0.96261901 3.25957894 -3.12652206 0.68840098 3.129987
		 -2.073204041 0.125286 3.59946299 -2.021943092 0.215334 3.6021719 -3.20252109 1.11707401 4.65624714
		 -2.18985891 0.220542 4.56187201 -2.23916698 0.130431 4.54796982 -3.8919301 1.45063806 2.87385011
		 -4.060853958 1.018206 2.856987 -2.47755909 -8.3999999e-05 3.63318896 -2.19057298 0.158214 3.68253899
		 -3.18481803 0.66805202 3.36814809 -3.20497799 0.25491899 3.36684608 -4.12479877 0.62567401 3.034499884
		 -4.35980892 0.63293999 4.37780809 -4.2433219 0.96324903 4.39639187 -3.36230993 0.673554 4.382617
		 -3.38246989 0.26042101 4.38133621 -2.3213191 0.162267 4.42984486 -2.60830498 0.0039479998 4.38047409
		 -2.94075608 1.10896802 3.1601851 -4.35913801 1.027425051 4.56199789 -4.19371986 1.45996201 4.59895802
		 -3.38826609 0.69650698 4.6259861 -4.0083332062 0.95598298 3.053085089 -5.47253704 11.34886265 3.48621106
		 -5.17788601 11.46284962 3.680125 -5.26881599 11.46211433 3.76511097;
	setAttr ".vt[1660:1825]" -5.57617092 11.32618141 3.55849195 -4.89839602 4.19596815 4.636549
		 -4.7795372 2.39158511 4.30651188 -4.71500301 2.26764297 4.4159441 -4.72317314 4.18618202 4.85929489
		 -5.97758579 4.18618202 3.604882 -5.534235 2.26764297 3.59669089 -5.42497206 2.39158511 3.66107702
		 -4.37394285 3.14750099 4.084774017 -4.10232782 4.1257019 3.856251 -4.46077824 3.61678791 3.76017594
		 -4.48835087 3.15850496 3.96366596 -4.97471094 4.1257019 2.98386908 -5.20323277 3.14750099 3.25548291
		 -5.082126141 3.15850496 3.36989188 -4.87863493 3.61678791 3.34231901 -4.73442793 11.57118893 3.92500496
		 -4.63108778 11.72014236 3.84906912 -4.30479002 11.57118893 3.4953661 -4.73442793 11.3034811 3.92500496
		 -4.30479002 11.3034811 3.4953661 -4.38070488 11.72014236 3.59868598 -4.62714005 11.57118893 3.17301607
		 -4.62714005 11.3034811 3.17301607 -4.69738483 11.23502064 2.89065003 -4.022422791 11.23502064 3.56561089
		 -4.7368021 10.81836033 2.89821005 -4.016668797 10.81836033 3.61834192 -4.90303802 8.83054256 2.91503191
		 -4.033491135 8.83054256 3.78457808 -4.9142518 6.62062788 2.91958809 -4.73048115 11.72014236 3.24893093
		 -5.056777954 11.57118893 3.60265493 -5.056777954 11.3034811 3.60265493 -4.68522501 11.22743988 4.22841406
		 -4.74219799 10.79983807 4.34387207 -4.89520502 8.99574947 4.639678 -4.69517899 8.65878296 4.45292377
		 -5.571383 4.53263998 3.57672 -5.75500822 4.19596815 3.77993798 -5.58327007 6.5957222 3.58860612
		 -5.571383 8.65878296 3.57672 -5.75813723 8.99574947 3.77674603 -5.46233082 10.79983807 3.623739
		 -5.36018705 11.22743988 3.55345201 -4.79812098 2.27327108 4.50874186 -5.62703323 2.27327108 3.67983007
		 -6.088297844 4.35495901 3.69635701 -4.81464911 4.35495901 4.97000694 -6.19296312 6.59292889 3.78231001
		 -4.90060091 6.59292889 5.074649811 -6.093213081 8.83161259 3.69041395 -4.80872583 8.83161259 4.97492218
		 -5.76363802 10.82258129 3.54337311 -4.6619792 10.82545757 4.64503193 -4.69247103 11.32937336 4.44219398
		 -4.89720011 11.46211433 4.13672686 -4.98086405 11.72014236 3.49931407 -4.69517899 4.53263998 4.45292377
		 -4.70706606 6.5957222 4.46481085 -5.24109602 2.61676788 3.66049004 -4.71116114 9.0010824203 4.86924887
		 -4.50949812 8.66418076 4.68371391 -4.57453394 10.82965946 4.55656004 -4.61970615 11.35047817 4.33906317
		 -4.5214262 6.59288692 4.69545317 -4.50968599 4.52161503 4.68350506 -5.80181599 4.52161503 3.39139605
		 -5.81374502 6.59288692 3.40313506 -5.80200577 8.66418076 3.39120698 -5.98752022 9.0010824203 3.5928061
		 -5.675313 10.82606697 3.45578098 -4.81221199 11.46284962 4.04577589 -4.038046837 6.62062788 3.7957921
		 -4.77894783 2.61676788 4.12263584 -4.78037596 3.59910607 4.079796791 -4.88016796 3.30485392 4.35548401
		 -4.84967709 2.6902051 4.19334316 -5.19825602 3.59910607 3.66191697 -5.47394323 3.30485392 3.76170993
		 -5.31180286 2.6902051 3.7312181 -5.59496689 0.50238299 5.67310905 -6.70120382 0.122388 6.30646801
		 -6.86391306 0.32297999 6.47885799 -6.95710993 1.31556594 4.45099306 -7.69282389 0.32297999 5.64994478
		 -7.52043486 0.122388 5.48723698 -4.7025919 1.66221297 4.97868013 -4.559268 0.83185202 4.81798792
		 -6.031914234 0.83185202 3.34540606 -6.19260502 1.66221297 3.48873091 -4.79446697 0.769104 4.74049902
		 -5.79144192 0.474096 5.45353317 -5.95471811 0.769104 3.58029008 -6.88707495 0.50238299 4.38100004
		 -6.69925117 0.145992 6.13057184 -6.55500317 0.001701 5.9863019 -7.20043802 0.001701 5.34084606
		 -5.7690568 0.19378801 5.43112612 -6.64525986 0.19378801 4.5549221 -5.93497705 0.494403 3.56054997
		 -4.77472687 0.494403 4.72075796 -7.34470701 0.145992 5.485116 -6.66766787 0.474096 4.57730818
		 -5.66495991 1.31556594 5.74316502 -5.14453697 3.10440898 4.58394289 -5.42492914 3.10407305 4.30353022
		 -5.56073713 4.34458494 4.43778276 -5.64131403 9.20845795 5.19052792 -5.96832609 9.21755028 4.83934498
		 -5.59152317 9.23019314 4.46256399 -5.268857 9.24086094 4.75727701 -5.062386036 4.36430407 4.70013714
		 -5.027126789 3.129987 4.46653318 -5.18038511 4.345047 4.81815577 -4.39723206 4.53723907 3.27413106
		 -4.51602793 4.53721809 3.39292789 -4.25023079 4.53755379 3.658746 -4.13141298 4.53757477 3.53996992
		 -6.19080019 9.60634518 5.061316013 -6.03806591 9.72226524 4.90845585 -5.71094894 9.71317196 5.25972414
		 -5.42837286 10.18500042 4.2982378 -5.10560322 10.19566822 4.59305716 -5.70532084 3.1037159 4.023118019
		 -6.31946707 9.20761776 4.51233292 -5.88623714 9.24008369 4.13985586 -5.8230691 4.36335897 3.9393909
		 -5.94106722 4.34412289 4.057411194 -5.58793211 3.12929392 3.90568495 -4.66302919 4.53692389 3.0083129406
		 -4.78182602 4.5369029 3.12711 -6.38929081 9.71233177 4.5813179 -5.72319317 10.19489098 3.97542691
		 -3.99709797 5.3478179 4.046279907 -4.34815502 5.39674807 4.53245211 -4.218081 6.59605789 4.39952087
		 -3.89776802 6.61886406 3.94877696 -4.17213202 7.665483 4.35067606 -3.93172503 7.62596083 3.97748399
		 -4.23305416 6.61712122 3.1074121 -4.064611912 5.34785986 3.47216105 -3.96610188 6.61745691 3.3743639
		 -4.26365089 7.62272692 3.13677001 -3.99869394 7.62306309 3.40174794 -4.30531502 9.90509033 3.1755991
		 -4.064466 9.90538502 3.4164691 -4.34519291 5.38461018 4.72521019 -4.86928988 5.10176086 5.17158699
		 -4.90009689 6.59366417 5.24535894 -4.3652482 6.60546589 4.72287893 -4.86685514 7.84721708 5.19000292
		 -4.34072113 7.67087984 4.71067905 -5.49141598 5.77508402 4.91070414 -5.73621321 5.78314781 4.61147499
		 -6.045962811 6.59292889 4.92021704 -5.63417387 6.60466814 5.33202696 -5.66252279 7.84194613 5.56642818
		 -5.061923981 7.83908987 5.14949512 -5.32578802 6.60473108 5.21060514 -5.12616301 5.11692286 4.96345615
		 -5.60672712 5.11633492 4.48285007 -4.33043098 5.34752417 3.20634294 -4.21497202 7.62503719 3.61800599
		 -4.18319893 9.91132832 3.535182 -5.0079331398 5.12811613 4.84463692;
	setAttr ".vt[1826:1991]" -5.68215895 9.60619736 5.5706501 -4.82409906 10.29409504 4.61508703
		 -5.6630702 8.8480978 5.58457184 -4.881639 8.82915592 4.90020418 -4.94495296 7.83203411 4.93170404
		 -4.073748112 5.35279512 3.835356 -4.69517899 5.3954668 4.46050501 -4.50968599 5.3846941 4.6911068
		 -4.84268284 5.11072779 5.0059390068 -4.038530827 7.625247 3.7944901 -4.69253302 7.66670084 4.45506716
		 -4.50687313 7.67234993 4.6858778 -4.85209084 7.83971977 5.022821903 -4.2507782 5.35258484 3.65830493
		 -6.17809391 7.84131622 5.050815105 -6.18790102 8.84786701 5.059361935 -4.42402697 9.91103363 3.294312
		 -5.30753899 3.12965107 4.18612003 -5.28439808 10.29428387 4.15413713 -5.65660095 5.39513111 3.22390008
		 -5.17032623 5.34636879 2.87294698 -5.52514219 6.59444094 3.092375994 -5.074398041 6.61741495 2.77206302
		 -5.47759819 7.66388702 3.04510498 -5.10434389 7.6245122 2.80475998 -4.54614305 9.90479755 2.93475008
		 -4.52860785 7.62239122 2.87179208 -4.49998522 6.61678505 2.84043908 -4.59622812 5.34720802 2.94052505
		 -6.2954011 5.099997044 3.74537206 -5.84933901 5.38274097 3.22095895 -6.37102222 6.59183693 3.77430892
		 -5.84852123 6.60363913 3.23950291 -6.31721878 7.84541082 3.73955393 -5.83762121 7.6690321 3.21367311
		 -6.4577508 6.60366011 4.50838518 -6.69368696 7.84066486 4.535182 -6.035399914 5.77441216 4.36667824
		 -6.087310791 5.11574697 4.0022439957 -6.33632898 6.60349178 4.20000076 -6.27671099 7.8375988 3.934623
		 -4.74488688 7.62438583 3.088049889 -4.66487694 9.9107399 3.053462982 -5.96849298 5.12691879 3.88399291
		 -5.74530602 10.29296112 3.6938169 -6.7000699 9.60493755 4.55265284 -6.71306896 8.84679604 4.53448915
		 -6.028616905 8.82772732 3.75314093 -6.058897972 7.83066893 3.81767511 -6.12977314 5.10913181 3.71874404
		 -5.81525707 5.38309813 3.38545299 -5.58467722 5.39437485 3.57094598 -4.95942307 5.35170317 2.94961905
		 -4.92135 7.62415504 2.911587 -5.58202982 7.66560888 3.56550694 -5.81284094 7.67073298 3.37982392
		 -6.15001822 7.8381238 3.72479105 -4.78239298 5.35193396 3.1266489 -4.60053301 12.030500412 3.84686399
		 -4.64064312 11.9798069 3.8869741 -5.0041098595 11.9798069 3.52352691 -4.96397877 12.030500412 3.48341799
		 -1.71645606 10.29273033 1.19949901 -1.73439002 10.032203674 0.96702898 -1.96287 9.54542446 1.44591296
		 -1.88800502 10.40585709 1.37106895 -2.13441896 9.65855026 1.61748302 -1.87798798 9.59668541 1.11062706
		 -2.56302905 9.54542446 0.84573299 -2.73459911 9.6585722 1.01730299 -2.22776389 9.59668541 0.76087201
		 -2.31663609 10.29273033 0.59934002 -2.48818493 10.40585709 0.77088898 -2.08416605 10.032203674 0.61727399
		 -2.16705298 9.62610626 1.72489798 -1.87805104 10.50260353 1.43589604 -2.53268409 9.98678112 1.78865397
		 -2.36237407 10.50335979 1.61834395 -3.027276039 11.11826134 2.28324604 -2.84201407 9.62610626 1.04993701
		 -2.90579104 9.98678112 1.41556799 -3.19015193 10.77545738 2.44612193 -2.55301189 10.50260353 0.76093501
		 -2.73546004 10.50335979 1.24523699 -3.40036201 11.11826134 1.91015995 -3.56325889 10.77545738 2.073035955
		 -4.088741779 11.50869274 2.59854007 -4.23948002 11.23367786 2.74925709 -4.33471489 11.6456337 2.84451294
		 -4.54200602 11.29659271 3.051783085 -4.74652481 11.76653099 3.029230118 -4.11679697 11.87564659 3.59984112
		 -4.14634514 11.76653099 3.62940907 -4.16889906 11.29659271 3.42486906 -4.71697807 11.87564659 2.99966097
		 -3.96162891 11.6456337 3.21759892 -3.86639404 11.23367786 3.12236404 -3.71565604 11.50869274 2.97162604
		 -4.55380821 11.40808105 3.9517169 -4.54032612 11.6261034 3.93823504 -4.44066 11.32322121 3.85553694
		 -4.41728592 11.70092773 3.83216405 -4.34483719 11.39831734 3.735039 -4.33133411 11.61633873 3.7215569
		 -4.15982723 11.38596916 3.43570495 -4.19443512 11.62341595 3.47031307 -4.55282116 11.38596916 3.04271102
		 -4.85217619 11.39831734 3.2277 -4.97265196 11.32322121 3.32354498 -5.068852901 11.40808105 3.436692
		 -5.05535078 11.6261034 3.42319012 -4.94929981 11.70092773 3.3001709 -4.8386941 11.61633873 3.21421909
		 -4.58742905 11.62341595 3.077318907 -1.844262 10.2328167 1.48633802 -1.844262 10.54095078 1.20758402
		 -0.97860003 10.58765411 1.233729 -0.97860003 10.23359394 1.56084597 -0.38923499 10.18245888 1.67103302
		 -1.081100941 9.85168839 1.57040095 -0.91156799 9.18033886 2.54351997 -1.081100941 9.55779266 1.364622
		 -0.91156799 8.87298298 2.32831192 -0.741216 8.74616432 2.11770296 -0.38923499 8.65567493 2.24693704
		 -0.97860003 9.46801758 1.086791992 -0.39116701 9.35986805 1.17572701 -0.38923499 9.33111954 2.71987796
		 -0.38923499 9.063809395 2.70992398 -0.741216 9.42160797 2.5906651 -0.38923499 8.75647354 2.49471593
		 -0.97860003 10.36001396 0.186837 -0.97860003 10.68406487 0.41374201 -0.97860003 10.83658791 0.73720503
		 -1.844262 9.68011856 0.60484201 -1.844262 9.96809101 0.28509599 -1.79222405 9.92743492 0.82068002
		 -1.844262 9.51715755 1.016610026 -1.844262 9.60693359 1.29444003 -1.844262 10.57198715 0.57380402
		 -1.844262 10.2479372 0.346899 -0.97860003 9.95448303 0.183246 -0.97860003 9.64481735 0.57254398
		 -1.844262 10.7318821 0.79499698 -1.844262 9.90082836 1.50021899 -1.79222405 10.23640823 1.037021995
		 -0.38982278 9.93218899 1.52033818 -0.39076158 9.53248024 1.27966213 -1.844262 11.38090324 -0.16043603
		 -1.844262 11.68903732 -0.43919003 -0.97860003 11.73574066 -0.41304505 -0.97860003 11.38167953 -0.085928082
		 -0.38923499 11.33054543 0.024258971 -1.081100941 10.99977493 -0.0763731 -0.91156799 10.32842445 0.89674592
		 -1.081100941 10.70587921 -0.28215206 -0.91156799 10.021068573 0.68153787 -0.741216 9.89425087 0.47092891
		 -0.38923499 9.80376053 0.60016298 -0.97860003 10.61610413 -0.55998206 -0.39116701 10.50795364 -0.47104704
		 -0.38923499 10.47920609 1.073103905 -0.38923499 10.21189499 1.063149929 -0.741216 10.56969452 0.94389105
		 -0.38923499 9.90456009 0.84794188 -0.97860003 11.50810051 -1.4599371;
	setAttr ".vt[1992:2157]" -0.97860003 11.83215141 -1.23303199 -0.97860003 11.98467445 -0.90956903
		 -1.844262 10.82820511 -1.041932106 -1.844262 11.11617661 -1.36167812 -1.79222405 11.075521469 -0.82609403
		 -1.844262 10.66524315 -0.63016403 -1.844262 10.75502014 -0.35233402 -1.844262 11.7200737 -1.072970033
		 -1.844262 11.3960228 -1.29987502 -0.97860003 11.10256958 -1.46352804 -0.97860003 10.7929039 -1.074230075
		 -1.844262 11.87996864 -0.85177708 -1.844262 11.048913956 -0.14655507 -1.79222405 11.38449478 -0.60975206
		 -0.38982278 11.080274582 -0.12643588 -0.39076158 10.68056679 -0.36711192 -1.844262 12.55194855 -1.83371937
		 -1.844262 12.86008263 -2.11247349 -0.97860003 12.90678596 -2.086328506 -0.97860003 12.55272579 -1.75921142
		 -0.38923499 12.50159073 -1.64902437 -1.081100941 12.17082024 -1.74965644 -0.91156799 11.49947071 -0.77653742
		 -1.081100941 11.87692451 -1.9554354 -0.91156799 11.19211483 -0.99174547 -0.741216 11.065296173 -1.20235443
		 -0.38923499 10.97480679 -1.073120356 -0.97860003 11.78714943 -2.2332654 -0.39116701 11.6789999 -2.1443305
		 -0.38923499 11.65025139 -0.60017943 -0.38923499 11.38294125 -0.61013341 -0.741216 11.74073982 -0.72939229
		 -0.38923499 11.075605392 -0.82534146 -0.97860003 12.67914581 -3.13322043 -0.97860003 13.0031967163 -2.90631533
		 -0.97860003 13.15571976 -2.58285236 -1.844262 11.99925041 -2.71521544 -1.844262 12.28722286 -3.034961462
		 -1.79222405 12.24656677 -2.49937725 -1.844262 11.83628941 -2.30344725 -1.844262 11.92606544 -2.025617361
		 -1.844262 12.891119 -2.74625349 -1.844262 12.56706905 -2.97315836 -0.97860003 12.27361488 -3.13681149
		 -0.97860003 11.9639492 -2.74751329 -1.844262 13.051013947 -2.52506042 -1.844262 12.21996021 -1.8198384
		 -1.79222405 12.55554008 -2.28303528 -0.38982278 12.25132084 -1.79971921 -0.39076158 11.85161209 -2.04039526
		 -0.78248101 10.49464512 3.32102394 -0.93855298 9.99572659 3.43028688 -0.74207699 9.46274662 2.58927894
		 -1.233078 15.47926807 -2.32344007 -1.73674202 15.15735912 -2.93613601 -2.45206499 14.088438034 -1.27824903
		 -1.60765505 14.72637558 -0.81845403 -2.60507107 12.2963829 1.24425006 -1.86131406 12.97169971 1.64688301
		 -1.764714 10.80359554 2.76895499 -1.37342095 11.35785007 2.93409896 -1.34561706 9.84503078 1.87336802
		 -2.37360907 11.0041675568 0.25097099 -2.097374916 12.75903225 -2.22219896 -1.38205194 14.11254597 -3.88359308
		 -7.91638088 1.14405894 -0.66225576 -8.41365051 0.95846099 -0.62958717 -8.5230608 1.43795395 -0.62958813
		 -8.0022821426 1.543437 -0.66227055 -7.91638088 1.14405894 -1.041177988 -8.41365242 0.95846099 -1.073847771
		 -8.0022983551 1.543437 -1.041178465 -8.52304554 1.43795395 -1.073861599 -7.26446819 1.20791996 -0.7085557
		 -7.0031065941 0.95617199 -0.38123345 -6.92893505 1.297212 -0.27878952 -7.21160507 1.42411494 -0.63526034
		 -7.52220631 1.20959997 -0.52755833 -7.30527401 0.95814598 -0.16905284 -7.46932793 1.42579496 -0.4542768
		 -7.23111629 1.29918599 -0.06659317 -8.20697975 1.63783205 -1.13793683 -8.20697975 1.080827951 -1.13793683
		 -7.5271225 1.63783205 -1.36798 -7.5271225 1.080827951 -1.36798 -7.098231316 1.63783205 -0.79246926
		 -7.098231316 1.080827951 -0.79246926 -7.51306009 1.63783205 -0.20675421 -7.51306009 1.080827951 -0.20675421
		 -8.19829369 1.63783205 -0.42025805 -8.19829369 1.080806971 -0.42025805 -7.58592606 1.20556796 -0.9845736
		 -7.39900303 0.95963699 -1.36325932 -7.33776569 1.30235696 -1.46862912 -7.54201698 1.42298102 -1.06017065
		 -7.31317425 1.20521104 -0.82714248 -7.079224586 0.95923799 -1.1786685 -7.26925039 1.42262399 -0.90275502
		 -7.017971039 1.30195796 -1.28402352 -7.45554972 0.70742702 -2.41568398 -6.68982077 0.15760501 -3.17760849
		 -6.66975927 0.248367 -3.22347808 -6.048538685 1.12881303 -1.81424558 -5.8259511 0.24729601 -2.73640776
		 -5.85582781 0.156555 -2.69622588 -7.95968056 1.45960498 -1.77339554 -8.032976151 1.024863005 -1.6269505
		 -6.79673529 0.026292 -2.78814292 -6.65207481 0.18849599 -3.038381338 -7.25183296 0.68529302 -2.279531
		 -7.2594943 0.27190799 -2.26717758 -7.88773537 0.63075602 -1.51182532 -6.70662737 0.62924403 -0.83009744
		 -6.64957619 0.961128 -0.92819142 -6.35986805 0.68415898 -1.76467896 -6.36752987 0.27077401 -1.75229478
		 -5.99502468 0.187677 -2.65910244 -6.13968611 0.025451999 -2.40886331 -7.36394501 1.13049304 -2.57354641
		 -6.53384161 1.022951961 -0.76167178 -6.44287539 1.45767295 -0.89789915 -6.14020348 0.70574701 -1.65644288
		 -7.83068562 0.96261901 -1.60991931 -6.028284073 0.68840098 0.0092115402 -5.70158768 0.125286 0.96613979
		 -5.66725636 0.215334 1.0043022633 -7.16125298 1.11707401 1.034701109 -6.46460104 0.220542 1.56417823
		 -6.4896369 0.130431 1.5194819 -6.3883934 1.45063806 -0.71312976 -6.49591637 1.018206 -0.84450102
		 -6.011357784 -8.3999999e-05 0.70406556 -5.84332371 0.158214 0.94189095 -6.23791122 0.66805202 0.13639545
		 -6.2512455 0.25491899 0.1212194 -6.66665268 0.62567401 -0.7641964 -7.78269291 0.63293999 0.019488811
		 -7.71346474 0.96324903 0.11499834 -7.080754757 0.673554 0.72822738 -7.09410429 0.26042101 0.71306658
		 -6.46420002 0.162267 1.3778646 -6.63221979 0.0039479998 1.14002466 -5.91828156 1.10896802 0.16192126
		 -7.91246033 1.027425051 0.15020514 -7.82162666 1.45996201 0.29330826 -7.27119637 0.69650698 0.88196158
		 -6.5974412 0.95598298 -0.66870093 -9.57199669 0.50238299 0.062016487 -10.80207729 0.122388 -0.27235889
		 -11.039028168 0.32297999 -0.26551342 -9.67101097 1.31556594 -1.76533079 -11.03902626 0.32297999 -1.43777227
		 -10.80207729 0.122388 -1.43092632 -8.44995689 1.66221297 0.20198536 -8.23498535 0.83185202 0.18970394
		 -8.23503113 0.83185202 -1.89288664 -8.45000267 1.66221297 -1.90516615 -8.34650326 0.769104 -0.031399727
		 -9.55566216 0.474096 -0.2321763 -8.34653282 0.769104 -1.67221284 -9.57199669 0.50238299 -1.76530123
		 -10.67631912 0.145992 -0.3953557 -10.47230625 0.001701 -0.39537096 -10.47229195 0.001701 -1.30816841
		 -9.52398968 0.19378801 -0.23219156 -9.52398872 0.19378801 -1.47133064;
	setAttr ".vt[2158:2323]" -8.31861591 0.494403 -1.67221189 -8.31858635 0.494403 -0.031400204
		 -10.67631912 0.145992 -1.30816793 -9.55566311 0.474096 -1.4713459 -9.67102623 1.31556594 0.062060833
		 -7.94142818 2.7559073 -0.62012291 -7.44325638 2.6729579 -0.6262331 -7.4469738 2.67529011 -0.95920014
		 -7.9451437 2.75823903 -0.95309019 -8.022748947 2.88580751 -0.4400239 -7.36338425 2.77601838 -0.44812107
		 -7.29707193 3.16935587 -0.38080716 -7.41575193 3.45653248 -0.6249938 -7.41981268 3.45660901 -0.95530009
		 -7.3061142 3.17126846 -1.14452887 -7.37093353 2.77888179 -1.10171437 -8.030299187 2.88867116 -1.093617678
		 -7.9654789 3.2810576 -1.13643026 -7.95643806 3.27914548 -0.37270927 -7.75227165 3.51256561 -0.62085605
		 -7.75631809 3.51263976 -0.95117879 -7.90502501 1.59162581 -0.98601437 -7.48253727 1.58942187 -0.99112391
		 -7.47629738 2.78560257 -0.99112439 -7.89878559 2.78780651 -0.98601437 -7.47741318 1.58939505 -0.56861544
		 -7.47118759 2.78274488 -0.56861591 -7.89989948 1.59159899 -0.56350613 -7.89367485 2.78494859 -0.56350613
		 -6.50616455 11.31232262 -1.40151715 -6.41664267 11.41366863 -1.053970575 -6.540205 11.43349266 -1.058198929
		 -6.63335228 11.31036854 -1.42382073 -8.09239006 4.28142881 -0.174788 -8.075546265 2.43839025 -0.32501221
		 -8.1275301 2.32064128 -0.20125914 -8.12735367 4.27726984 0.10831165 -8.12735367 4.27726984 -1.67637181
		 -8.12751579 2.3206389 -1.36681581 -8.075546265 2.43839025 -1.24328804 -7.51044273 3.11523104 -0.19422388
		 -6.99786186 4.027519226 -0.16357017 -7.26606178 3.55315065 -0.486902 -7.50392342 3.12536812 -0.36176109
		 -6.99786282 4.027519226 -1.40472984 -7.51044178 3.1152308 -1.37407565 -7.50392342 3.12536836 -1.20653939
		 -7.26606131 3.55315065 -1.081397057 -6.25939894 11.49797821 -0.56431293 -6.10898829 11.62484646 -0.5448184
		 -5.65644264 11.3975811 -0.56431341 -6.30363369 11.23231602 -0.56431293 -5.70067739 11.13191986 -0.56431341
		 -5.75759983 11.56633759 -0.54481864 -5.65644264 11.3975811 -1.022928715 -5.70067739 11.13191986 -1.022928715
		 -5.56314373 11.039198875 -1.27376294 -5.56314278 11.039198875 -0.31347871 -5.66495466 10.63121223 -1.29642487
		 -5.66495371 10.63121223 -0.27187467 -6.12186337 8.67997742 -1.40271235 -6.12186241 8.67997742 -0.16558743
		 -6.49808407 6.48879862 -1.40744829 -5.75761461 11.56633949 -1.042438984 -6.25939894 11.49797821 -1.022928238
		 -6.30363369 11.23231602 -1.022928238 -6.49457502 11.18655777 -0.31347799 -6.68622494 10.78237152 -0.27187395
		 -7.29925537 9.044511795 -0.1702919 -7.083529949 8.66493034 -0.160851 -7.76531267 4.57032871 -1.40744805
		 -8.092391014 4.28142881 -1.3935101 -7.44110155 6.62041807 -1.40744853 -7.083529949 8.66493034 -1.40744805
		 -7.29925585 9.044511795 -1.39800668 -6.68622446 10.78237152 -1.29642463 -6.49457502 11.18655777 -1.27376318
		 -8.25004101 2.3467803 -0.19437313 -8.25004196 2.3467803 -1.37368631 -8.24134064 4.46837997 -1.69005609
		 -8.24134159 4.46837997 0.12199593 -8.0053081512 6.71151352 -1.70336771 -8.0052919388 6.71151114 0.13529205
		 -7.50092077 8.91069317 -1.69778061 -7.50093555 8.91069508 0.12970591 -6.83750153 10.83075523 -1.56793261
		 -6.83702612 10.83360958 -0.00057554245 -6.63282585 11.31353664 -0.16655731 -6.540205 11.43349266 -0.5294919
		 -6.10900307 11.62484837 -1.042438745 -7.76531219 4.57032871 -0.160851 -7.44110203 6.62041807 -0.160851
		 -7.90890026 2.64029932 -1.11290264 -7.33032084 9.055123329 0.12393761 -7.11429119 8.67555714 0.13541126
		 -6.71289063 10.81722546 -0.0013051033 -6.50591278 11.3139286 -0.18815851 -7.47314882 6.62286234 0.13527632
		 -7.79877281 4.56465578 0.13512897 -7.79878759 4.56465864 -1.70320177 -7.4731493 6.62286234 -1.70333695
		 -7.11429167 8.67555809 -1.70347095 -7.33026218 9.055113792 -1.69202924 -6.71348381 10.81365967 -1.56741095
		 -6.41662645 11.41366577 -0.53373337 -6.49808359 6.48879862 -0.16085076 -7.90889835 2.64029908 -0.45539522
		 -7.71752357 3.61028957 -0.48688602 -8.029619217 3.36215711 -0.36175966 -7.9960103 2.72970009 -0.45541096
		 -7.71752405 3.61028957 -1.081413507 -8.029619217 3.36215734 -1.20653844 -7.99601078 2.72970009 -1.1128881
		 -8.40855789 3.22082591 -0.38730478 -8.4085989 3.22048998 -0.78624058 -8.39312458 4.48307276 -0.78734732
		 -8.17418671 9.40712929 -0.30919218 -8.15572357 9.41332817 -0.79163456 -7.6248436 9.33782673 -0.79161882
		 -7.60346603 9.34514713 -0.35243845 -8.22426701 4.47506762 -0.24621058 -8.23955727 3.21877241 -0.38730478
		 -8.39306259 4.48353386 -0.24619675 -6.72832203 4.40235233 -0.78745151 -6.8950448 4.43009138 -0.78745103
		 -6.89500427 4.43042707 -0.40927958 -6.72828054 4.40268755 -0.40925002 -8.40334892 9.85107994 -0.79199266
		 -8.16975975 9.93040848 -0.79208183 -8.18820858 9.92420578 -0.30950403 -7.23728561 10.24707317 -0.7924552
		 -7.21590996 10.25439358 -0.35312557 -8.40864372 3.2201333 -1.18517494 -8.17429638 9.40629101 -1.2740469
		 -7.60356617 9.34437084 -1.23082972 -8.22437859 4.47412252 -1.32849813 -8.39317226 4.48260927 -1.32848167
		 -8.23964214 3.21807933 -1.18520689 -6.72835922 4.40203714 -1.16562247 -6.89508295 4.42977619 -1.16562223
		 -8.18830204 9.92336464 -1.27464342 -7.21601009 10.25361824 -1.23181462 -6.85542965 5.25020075 0.046466351
		 -7.43482971 5.39657736 0.14258194 -7.052110672 6.55599022 0.14054966 -6.50729084 6.48853302 0.047766209
		 -6.80888748 7.60616493 0.13848972 -6.38485432 7.49525261 0.044031143 -6.15246248 6.42767382 -0.7892592
		 -6.49993706 5.19105101 -0.40996695 -6.15240669 6.42800665 -0.40945959 -6.028371334 7.43259764 -0.79014039
		 -6.028330803 7.43293333 -0.41316438 -5.70772791 9.70691872 -0.79215717 -5.70769405 9.7072134 -0.4494803
		 -7.57001543 5.40670776 0.28181028 -8.29773521 5.23940945 0.2265234 -8.12460327 6.73212719 0.25708675
		 -7.38072443 6.62030172 0.26588535 -7.85530376 7.96574593 0.24135542 -7.1789093 7.67328072 0.27465439
		 -8.43996334 5.94979286 -0.4016161 -8.4004364 5.95143509 -0.7886157 -8.70062828 6.82729006 -0.78933334
		 -8.69870377 6.83894205 -0.20345592 -8.67863464 8.0974617 -0.056877613;
	setAttr ".vt[2324:2489]" -7.9651022 7.97573996 0.073774815 -8.39709663 6.78878641 -0.070456028
		 -8.32943153 5.26015091 -0.10426426 -8.3295002 5.25956249 -0.78800297 -6.49999332 5.19071817 -0.78815365
		 -6.33151579 7.48542976 -0.41317916 -5.87332773 9.74085426 -0.4494946 -8.16124535 5.24356174 -0.10468197
		 -8.40386009 9.85101318 -0.067842484 -7.017573357 10.32175159 -0.13720322 -8.52549839 9.098105431 -0.044360638
		 -7.50007534 8.90804672 0.02468729 -7.7313652 7.92962503 0.0020551682 -6.76038694 5.23945141 -0.15810299
		 -7.6280632 5.42744541 -0.15545797 -7.66149616 5.42202568 0.14053583 -8.16134739 5.22584534 0.1276145
		 -6.3315115 7.48564291 -0.16212106 -7.24710369 7.68037319 -0.15744352 -7.27785301 7.69125462 0.13881731
		 -7.72887135 7.93704796 0.13293171 -6.76040649 5.23924017 -0.40998292 -8.67870903 8.096831322 -0.79042339
		 -8.52527046 9.09783268 -0.79131985 -5.87334728 9.74055672 -0.79215574 -8.23961258 3.21843886 -0.78625488
		 -7.017085075 10.32186317 -0.79254484 -7.43502235 5.3949604 -1.7190516 -6.85559559 5.24875021 -1.62278867
		 -7.05231905 6.55437613 -1.71909785 -6.50747108 6.48708534 -1.62631392 -6.80907774 7.60456896 -1.71890354
		 -6.38502026 7.49380302 -1.62435722 -5.70776129 9.70662594 -1.13480473 -6.028411865 7.43226194 -1.16711593
		 -6.15248871 6.42733526 -1.16905856 -6.50003099 5.19040203 -1.16632462 -8.29795361 5.23764706 -1.80251384
		 -7.57025051 5.40484047 -1.85825038 -8.12481785 6.73029947 -1.83572364 -7.38095379 6.61847734 -1.84447718
		 -7.85554218 7.96394396 -1.82217312 -7.17914057 7.6714344 -1.85509729 -8.69882393 6.83793402 -1.37522554
		 -8.67878819 8.096179962 -1.52399874 -8.4400444 5.94912148 -1.17558527 -8.32958126 5.25897646 -1.47175789
		 -8.39725685 6.78754902 -1.50822306 -7.96528912 7.97425032 -1.65459275 -6.33159447 7.4847784 -1.16713095
		 -5.8733964 9.74026585 -1.13481903 -8.16138363 5.24236393 -1.47135472 -7.017715931 10.32061863 -1.44787192
		 -8.40400696 9.84975338 -1.51611185 -8.52565479 9.096803665 -1.53827906 -7.50025129 8.90661907 -1.60720778
		 -7.7315321 7.92826033 -1.5828414 -8.16153812 5.22424936 -1.7036345 -7.66170168 5.42043209 -1.71699071
		 -7.62820101 5.42635489 -1.42101216 -6.7605238 5.2383604 -1.41821837 -6.33163261 7.48454952 -1.41818929
		 -7.24723959 7.67928219 -1.42299795 -7.27805948 7.68964005 -1.71927619 -7.72906256 7.93545198 -1.7137351
		 -6.76048565 5.23858976 -1.1663537 -6.22605705 11.84802628 -0.53975391 -6.26252651 11.7812624 -0.53986883
		 -6.26156044 11.78160667 -1.053873301 -6.22507668 11.84837437 -1.053742886 -1.95894122 11.52048397 -0.36445946
		 -1.72841001 11.32593155 -0.54121447 -2.037008524 10.69962502 -0.36516464 -2.22543931 11.54581833 -0.36493552
		 -2.30350566 10.72495842 -0.36564064 -1.77389503 10.84755135 -0.54162538 -2.03537631 10.70020485 -1.21393061
		 -2.3018949 10.72555447 -1.21442163 -1.77296615 10.84788132 -1.036267519 -1.95733762 11.52105427 -1.2132256
		 -2.22382092 11.54639339 -1.21371639 -1.72748065 11.32626057 -1.035856605 -2.38605046 10.66118526 -0.31296289
		 -2.2945025 11.62394619 -0.31213593 -2.79252744 10.89948463 -0.52703488 -2.73859668 11.46689606 -0.52654743
		 -3.83054471 11.73135662 -0.52845013 -2.38423085 10.66183186 -1.26749992 -2.79153609 10.89983845 -1.054672003
		 -3.93277049 11.33120346 -0.52891624 -2.29268241 11.62459278 -1.26667285 -2.73757672 11.46725845 -1.054184437
		 -3.82953811 11.73171329 -1.056072235 -3.93177867 11.33155632 -1.056553125 -4.87759304 11.77354527 -1.058041811
		 -4.9863348 11.44302273 -1.058488131 -5.25122452 11.78607273 -1.058745861 -5.41053295 11.3590126 -1.059353828
		 -5.68885517 11.7588253 -1.22017789 -5.68763161 11.87506485 -0.3713274 -5.69047356 11.75825024 -0.37139797
		 -5.41152477 11.35865974 -0.53171682 -5.68601418 11.87563896 -1.22010922 -5.25223064 11.7857151 -0.53112364
		 -4.98735523 11.44266033 -0.53085136 -4.87859917 11.77318859 -0.53041983 -6.056529045 11.247715 -0.43265581
		 -6.11158466 11.45953178 -0.43261719 -5.88866234 11.21732235 -0.42035794 -5.98401833 11.58428669 -0.42029023
		 -5.76965237 11.33932304 -0.43749642 -5.82469368 11.55114365 -0.43744302 -5.44266033 11.44244766 -0.5176425
		 -5.56830311 11.64978886 -0.51774144 -5.4416008 11.44282436 -1.073418856 -5.7682848 11.33981037 -1.15498066
		 -5.88722801 11.21783257 -1.1727066 -6.055153847 11.24820423 -1.16102362 -6.11018276 11.46003056 -1.16098475
		 -5.9825983 11.58479118 -1.17265534 -5.82334042 11.5516243 -1.15494108 -5.56724262 11.65016556 -1.073517799
		 -4.31654358 11.96355629 -5.94604158 -4.32564926 11.8895874 -5.96130991 -3.87833428 11.88676739 -6.21449518
		 -3.86923623 11.96074486 -6.19920969 -2.38724017 12.76262474 -2.20631409 -2.099269629 12.63384247 -2.055562973
		 -2.32265878 11.9498682 -2.083184242 -2.51743937 12.71749878 -2.43582439 -2.45285749 11.90473938 -2.3126936
		 -2.061627626 12.16018677 -1.98379612 -1.58399963 11.9452343 -2.50123692 -1.7141974 11.90011597 -2.73077583
		 -1.63116312 12.15747261 -2.22744513 -1.64859319 12.75797462 -2.62438822 -1.77877355 12.71285629 -2.85389519
		 -1.66880488 12.63112831 -2.29921198 -2.53027368 11.82197762 -2.34120226 -2.60602641 12.77523232 -2.48562908
		 -2.568012 11.94446564 -2.84261036 -2.61266875 12.50626755 -2.92774963 -3.16601682 12.47644234 -3.90509748
		 -1.69957185 11.8167572 -2.8113637 -2.10883307 11.94157028 -3.10251093 -3.16512561 12.063486099 -3.8989377
		 -1.77532458 12.7700119 -2.95579052 -2.15347767 12.50338936 -3.18762875 -2.70684457 12.47355652 -4.16498041
		 -2.70594668 12.060592651 -4.1588378 -3.21165872 12.2402935 -5.054317951 -3.22249532 11.89284706 -5.069636822
		 -3.39132953 12.15483093 -5.37081957 -3.4143002 11.70099449 -5.40639544 -3.45696378 12.01320076 -5.81122446
		 -4.20874786 12.13134384 -5.41762304 -4.19562817 12.017843246 -5.39315367 -3.87347913 11.70388985 -5.14649439
		 -3.47008157 12.12670231 -5.83569384 -3.8505013 12.15771675 -5.11093569 -3.68168664 11.89572525 -4.80975771
		 -3.67083097 12.24317837 -4.79443502 -4.25446796 11.42905045 -5.61282492 -4.30698204 11.61914063 -5.70772028
		 -4.18110561 11.44362068 -5.45900774 -4.27207279 11.77295208 -5.62338591;
	setAttr ".vt[2490:2615]" -4.12433147 11.59234619 -5.3957715 -4.17685127 11.78244591 -5.49064684
		 -3.91095185 11.7767334 -5.18493319 -3.99656129 11.94407463 -5.33804941 -3.42727828 11.77369308 -5.45868349
		 -3.49992871 11.58842278 -5.74917078 -3.52636123 11.43950653 -5.82957983 -3.62059951 11.42505836 -5.97159529
		 -3.67310166 11.61516571 -6.066470623 -3.6173203 11.76882935 -5.99397707 -3.55244327 11.778512 -5.84406424
		 -3.51288724 11.94103527 -5.61179876 -6.059696674 0.56035221 -7.79204035 -6.38517952 0.18450561 -9.010104179
		 -6.50880957 0.38290775 -9.20932293 -4.54631567 1.36465764 -8.78499413 -5.50638962 0.38290775 -9.79199409
		 -5.39446831 0.18450561 -9.58597183 -5.62167597 1.70752025 -6.76299334 -5.50432158 0.88622439 -6.58527184
		 -3.72348547 0.88622439 -7.6204648 -3.81983662 1.70752025 -7.81039381 -5.37068272 0.82416141 -6.79053259
		 -5.8000083 0.53237402 -7.92430067 -3.96760917 0.82416141 -7.60612535 -4.49712563 0.56035221 -8.70030975
		 -6.21749449 0.20785193 -8.96370316 -6.11607647 0.065136164 -8.78925514 -5.33552027 0.065136164 -9.24295044
		 -5.78425217 0.25512615 -7.8972249 -4.72464275 0.25512615 -8.51313877 -3.95373392 0.55245936 -7.5822525
		 -5.3568058 0.55245936 -6.76666021 -5.43693304 0.20785193 -9.41741753 -4.74037361 0.53237402 -8.5402317
		 -6.10895729 1.36465764 -7.87669992 -4.33493757 1.63770366 -6.88750887 -4.12057066 1.6355238 -6.52877188
		 -4.11746883 2.81864572 -6.52343655 -4.33183622 2.82082558 -6.88217354 -4.47931767 1.63549733 -6.31438208
		 -4.47622299 2.81581926 -6.30905867 -4.6936841 1.63767719 -6.67311811 -4.6905899 2.81799889 -6.66779518
		 -4.17756128 1.25586057 -6.61392593 -3.7608304 1.012614369 -6.6423111 -3.64028859 1.35159278 -6.64231968
		 -4.09109211 1.47090006 -6.61395407 -4.1766119 1.25550747 -6.30243969 -3.75973082 1.012219667 -6.27711153
		 -4.090121746 1.47054696 -6.30246305 -3.63919401 1.3511982 -6.27709961 -4.35511303 1.68340564 -7.22122908
		 -4.35511303 1.13248229 -7.22122908 -3.82047534 1.68340564 -6.75421476 -3.82047534 1.13248229 -6.75421476
		 -4.099423885 1.68340564 -6.10140371 -4.099423885 1.13248229 -6.10140371 -4.80646992 1.68340564 -6.16500092
		 -4.80646992 1.13248229 -6.16500092 -4.96449471 1.68340564 -6.85707808 -4.96449471 1.13246155 -6.85707808
		 -4.25380802 1.25818682 -6.2018466 -4.40379715 1.0091872215 -5.81565619 -4.45453119 1.34650397 -5.70131111
		 -4.29020834 1.47202158 -6.12021112 -4.53669071 1.25984859 -6.33227777 -4.73542881 1.011139631 -5.96857977
		 -4.57307196 1.47368336 -6.2506361 -4.78618336 1.34845638 -5.85423851 -2.88899016 0.76315778 -7.21377325
		 -1.77450848 0.21933816 -6.94288588 -1.72531295 0.3091093 -6.9485302 -2.70393467 1.17994356 -5.71166849
		 -1.72239947 0.30805001 -5.98487663 -1.77161026 0.21829961 -5.99045229 -3.68880105 1.50712419 -7.32561445
		 -3.85046029 1.07712841 -7.31549978 -2.16068935 0.089458704 -6.8407259 -1.87480235 0.24989192 -6.84140539
		 -2.90415955 0.74126542 -6.97189665 -2.91853094 0.33239329 -6.97230768 -3.87671375 0.68732381 -7.13407946
		 -3.87260008 0.68582833 -5.7852397 -3.76036119 1.014089108 -5.78521204 -2.9010663 0.74014372 -5.9532547
		 -2.9154644 0.33127171 -5.95365095 -1.87254286 0.24908186 -6.091029644 -2.15843081 0.088627875 -6.090350151
		 -2.70846701 1.1816051 -7.21390676 -3.84522867 1.075238228 -5.60347652 -3.68352365 1.50521326 -5.59340143
		 -2.88443637 0.76149607 -5.71161699 -3.76447535 1.015563846 -7.13405275 -4.25313663 0.74433947 -4.78799725
		 -4.96870613 0.18737198 -3.89975882 -4.98427486 0.27643692 -3.8514328 -5.69319391 1.16833258 -5.24709797
		 -5.85935545 0.28158808 -4.25496912 -5.83357906 0.19246082 -4.298594 -3.81444263 1.49825525 -5.45497322
		 -3.75554919 1.070544004 -5.61221647 -4.8985734 0.063370652 -4.29491282 -5.018420696 0.21994051 -4.03301239
		 -4.46608925 0.72421265 -4.90403652 -4.45973969 0.31558979 -4.92298222 -3.90908384 0.68229723 -5.71830082
		 -5.13395548 0.68948394 -6.28311443 -5.18121719 1.016186953 -6.1764431 -5.3911109 0.72965455 -5.33059597
		 -5.38478231 0.32103172 -5.34954691 -5.69983625 0.22394927 -4.3472333 -5.57996988 0.067358635 -4.60912848
		 -4.32904434 1.16031504 -4.61802816 -5.31023455 1.079662323 -6.32910776 -5.38745499 1.50747728 -6.180305
		 -5.61723089 0.75235695 -5.41703224 -3.95634198 1.0090003014 -5.61165047 -4.61743355 1.19502306 -6.73629522
		 -4.89253712 1.011451244 -7.14528084 -4.94691944 1.48570943 -7.2388401 -4.6601181 1.59004092 -6.80975819
		 -4.29341078 1.19502306 -6.92463875 -4.51264334 1.011451244 -7.3661027 -4.33611584 1.59004092 -6.99810839
		 -4.56700611 1.48570943 -7.45965338;
	setAttr -s 4898 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 4 0 4 5 1 5 6 0 6 3 0 7 8 0 8 0 0 0 9 0
		 9 7 1 10 11 1 11 12 0 12 13 0 13 10 0 14 15 1 15 16 0 17 18 0 18 6 0 5 17 1 1 19 0
		 20 21 0 21 5 0 4 20 0 22 23 1 23 19 0 19 24 0 24 22 0 10 25 0 25 26 0 26 11 0 27 15 0
		 21 28 0 28 17 0 29 30 0 30 31 0 31 32 1 32 29 1 31 33 0 33 34 0 34 32 1 36 37 1 37 35 1
		 38 35 1 37 39 1 39 38 1 40 38 1 39 41 0 41 40 0 42 43 0 43 44 0 44 45 1 45 42 0 44 46 0
		 46 47 0 47 45 0 30 42 0 45 31 1 47 33 0 48 49 0 49 50 1 50 51 1 51 48 0 52 51 0 53 46 0
		 44 54 1 54 53 0 44 55 0 55 48 1 48 54 0 43 55 0 55 56 1 56 49 1 55 9 0 9 2 1 2 56 1
		 34 39 0 37 32 1 36 29 0 35 57 1 57 36 1 13 36 0 57 10 1 58 59 0 59 41 0 39 58 0 60 7 0
		 55 60 0 61 62 0 63 61 0 62 64 0 64 63 1 64 53 1 64 65 0 65 53 0 36 66 1 66 29 1 66 67 0
		 67 30 1 67 68 0 68 42 1 68 69 0 69 43 0 39 70 1 70 58 0 34 70 1 71 70 0 33 71 1 72 71 0
		 47 72 1 73 72 0 46 73 1 65 73 0 69 60 0 36 74 0 74 66 0 12 74 0 52 63 0 53 52 1 54 51 1
		 50 75 1 75 52 1 75 76 1 76 63 1 76 14 1 14 61 0 59 77 0 77 40 1 8 78 0 78 1 1 17 79 1
		 79 62 0 62 18 1 16 18 0 16 61 1 16 3 0 15 4 1 80 81 0 82 80 0 81 83 1 83 82 1 84 82 0
		 83 85 1 85 84 0 40 86 0 86 87 0 87 38 1 87 88 1 88 35 1 88 89 1 90 91 0 92 90 0 91 93 0
		 93 92 1 94 92 0 93 95 0 95 94 0 91 80 0 82 93 1 84 95 0 96 97 0 50 96 1 98 96 0 49 98 0
		 99 98 1 100 98 0 99 92 0;
	setAttr ".ed[166:331]" 92 100 1 101 100 0 94 101 0 99 90 0 56 99 1 23 99 0
		 2 23 1 87 85 0 83 88 1 81 89 0 57 89 1 89 25 0 102 87 0 86 103 0 103 102 0 104 99 0
		 22 104 0 105 106 0 106 107 0 107 108 1 108 105 0 101 108 1 101 109 0 109 108 0 90 110 0
		 110 111 0 111 91 1 111 112 0 112 80 1 112 113 0 113 81 1 113 89 1 102 114 0 114 87 1
		 114 85 1 114 115 0 115 84 1 115 116 0 116 95 1 116 117 0 117 94 1 117 109 0 104 110 0
		 113 118 0 118 89 0 118 26 0 107 97 0 97 101 1 96 100 1 106 14 0 76 107 1 75 97 1
		 77 103 0 78 24 0 28 27 0 105 28 1 105 79 0 27 106 1 20 27 0 119 120 0 120 121 1 122 119 0
		 121 122 0 123 124 0 124 125 0 125 126 0 126 123 0 127 128 0 128 129 1 130 131 0 131 132 1
		 132 133 0 133 130 1 134 135 0 135 136 1 136 137 0 137 134 1 138 139 0 140 138 1 141 138 0
		 140 142 0 142 141 0 140 143 0 144 140 0 144 145 0 145 142 0 145 146 1 146 147 0 147 142 1
		 146 148 0 148 149 1 149 147 0 148 150 0 150 151 1 151 149 0 150 152 0 144 153 0 154 144 1
		 154 155 0 155 145 0 147 156 0 156 141 0 149 157 1 157 156 0 151 158 1 158 157 0 159 158 0
		 160 161 0 161 134 1 134 160 1 162 160 0 134 152 0 152 162 1 163 162 0 150 163 1 150 164 1
		 164 163 0 148 165 1 165 164 0 146 166 0 166 165 0 155 166 0 167 168 0 168 169 0 169 170 1
		 170 167 0 169 171 0 171 172 1 172 170 0 171 173 0 173 174 1 174 172 0 173 175 0 175 176 1
		 176 174 0 175 122 0 122 177 1 177 176 0 121 178 0 178 177 0 153 179 0 179 154 0 139 143 0
		 180 181 0 131 180 1 123 180 0 130 123 1 130 124 0 182 136 0 135 129 0 129 182 1 161 129 0
		 183 184 0 184 174 1 174 183 1 185 183 0 176 185 1 186 185 0 177 186 0 184 187 0 187 172 1
		 187 188 0 188 170 1 188 126 0 126 170 1 125 167 0;
	setAttr ".ed[332:497]" 125 128 0 128 168 0 127 189 0 189 169 1 169 127 1 189 190 0
		 190 171 1 190 191 0 191 173 1 191 192 0 192 173 1 192 193 0 193 175 1 193 119 0 120 194 0
		 194 178 1 194 186 0 124 129 1 190 162 1 189 160 0 127 161 0 163 191 0 164 192 0 165 193 1
		 166 119 1 155 120 0 155 141 0 141 194 1 159 181 0 184 159 0 183 158 0 185 157 1 186 156 1
		 137 132 0 131 134 1 131 195 0 195 152 1 195 151 0 133 196 0 196 124 1 196 182 0 132 197 0
		 197 198 0 198 133 1 198 199 0 199 196 0 137 200 0 200 197 0 200 201 0 201 198 0 182 202 0
		 202 201 0 201 136 1 199 202 0 180 188 0 154 138 0 179 139 0 153 143 0 195 181 1 181 187 1
		 151 159 0 203 204 0 204 205 0 205 206 0 206 203 0 203 207 0 207 208 0 208 204 0 209 208 0
		 210 211 0 211 212 0 212 209 0 209 210 0 212 213 0 213 208 0 213 205 0 213 214 0 214 206 0
		 215 214 0 214 207 0 216 207 0 215 216 0 217 216 0 215 218 0 218 217 0 211 218 0 215 212 0
		 217 210 0 209 216 0 219 220 0 220 221 0 221 222 0 222 219 0 223 224 0 224 220 0 219 223 0
		 223 225 0 225 226 0 226 224 0 222 225 0 221 226 0 227 228 0 228 229 0 229 230 0 230 227 0
		 227 231 0 231 232 0 232 228 0 233 232 0 234 235 0 235 236 0 236 233 0 233 234 0 236 237 0
		 237 232 0 237 229 0 237 238 0 238 230 0 239 238 0 238 231 0 240 231 0 239 240 0 241 240 0
		 239 242 0 242 241 0 235 242 0 239 236 0 241 234 0 233 240 0 243 244 0 244 245 0 245 246 0
		 246 243 0 247 248 0 248 244 0 243 247 0 247 249 0 249 250 0 250 248 0 246 249 0 245 250 0
		 251 252 0 252 253 0 253 254 0 254 251 0 252 255 0 255 256 0 256 253 0 255 257 0 257 258 0
		 258 256 0 257 251 0 254 258 0 259 260 0 261 259 0 260 262 0 262 261 0 263 261 0 262 264 0
		 264 263 0 265 263 0 264 266 0 266 265 0 267 265 0 266 268 0 268 267 0;
	setAttr ".ed[498:663]" 259 267 0 268 260 0 264 260 1 261 265 1 269 270 0 270 271 0
		 271 272 0 272 269 0 273 274 0 274 270 0 269 273 0 273 275 0 275 276 0 276 274 0 272 275 0
		 271 276 0 277 278 0 278 279 0 280 281 0 281 282 0 283 284 0 284 277 0 285 286 0 286 287 0
		 287 288 1 288 285 0 289 288 0 290 291 0 291 292 0 292 293 1 293 290 0 292 294 0 294 295 0
		 295 293 0 279 281 0 280 296 1 296 279 0 283 296 0 277 296 1 278 282 0 297 298 0 298 280 0
		 280 299 1 299 297 0 282 299 0 287 277 1 286 278 1 286 294 0 294 282 1 299 292 1 295 285 0
		 287 300 0 300 289 0 298 283 0 297 284 0 284 300 1 297 291 1 291 300 0 290 289 0 288 293 1
		 301 302 0 302 303 0 304 305 0 305 306 0 307 308 0 308 301 0 309 310 0 310 311 0 311 312 1
		 312 309 0 313 312 0 314 315 0 315 316 0 316 317 1 317 314 0 316 318 0 318 319 0 319 317 0
		 303 305 0 304 320 1 320 303 0 307 320 0 301 320 1 302 306 0 321 322 0 322 304 0 304 323 1
		 323 321 0 306 323 0 311 301 1 310 302 1 310 318 0 318 306 1 323 316 1 319 309 0 311 324 0
		 324 313 0 322 307 0 321 308 0 308 324 1 321 315 1 315 324 0 314 313 0 312 317 1 325 326 0
		 326 327 1 328 325 0 327 328 0 329 330 0 330 331 0 331 332 0 332 329 0 333 334 0 334 335 1
		 336 337 0 337 338 1 338 339 0 339 336 1 340 341 0 341 342 1 342 343 0 343 340 1 344 345 0
		 346 344 1 347 344 0 346 348 0 348 347 0 346 349 0 350 346 0 350 351 0 351 348 0 351 352 1
		 352 353 0 353 348 1 352 354 0 354 355 1 355 353 0 354 356 0 356 357 1 357 355 0 356 358 0
		 350 359 0 360 350 1 360 361 0 361 351 0 353 362 0 362 347 0 355 363 1 363 362 0 357 364 1
		 364 363 0 365 364 0 366 367 0 367 340 1 340 366 1 368 366 0 340 358 0 358 368 1 369 368 0
		 356 369 1 356 370 1 370 369 0 354 371 1 371 370 0 352 372 0 372 371 0;
	setAttr ".ed[664:829]" 361 372 0 373 374 0 374 375 0 375 376 1 376 373 0 375 377 0
		 377 378 1 378 376 0 377 379 0 379 380 1 380 378 0 379 381 0 381 382 1 382 380 0 381 328 0
		 328 383 1 383 382 0 327 384 0 384 383 0 359 385 0 385 360 0 345 349 0 386 387 0 337 386 1
		 329 386 0 336 329 1 336 330 0 388 342 0 341 335 0 335 388 1 367 335 0 389 390 0 390 380 1
		 380 389 1 391 389 0 382 391 1 392 391 0 383 392 0 390 393 0 393 378 1 393 394 0 394 376 1
		 394 332 0 332 376 1 331 373 0 331 334 0 334 374 0 333 395 0 395 375 1 375 333 1 395 396 0
		 396 377 1 396 397 0 397 379 1 397 398 0 398 379 1 398 399 0 399 381 1 399 325 0 326 400 0
		 400 384 1 400 392 0 330 335 1 396 368 1 395 366 0 333 367 0 369 397 0 370 398 0 371 399 1
		 372 325 1 361 326 0 361 347 0 347 400 1 365 387 0 390 365 0 389 364 0 391 363 1 392 362 1
		 343 338 0 337 340 1 337 401 0 401 358 1 401 357 0 339 402 0 402 330 1 402 388 0 338 403 0
		 403 404 0 404 339 1 404 405 0 405 402 0 343 406 0 406 403 0 406 407 0 407 404 0 388 408 0
		 408 407 0 407 342 1 405 408 0 386 394 0 360 344 0 385 345 0 359 349 0 401 387 1 387 393 1
		 357 365 1 409 410 0 410 411 0 412 413 0 413 414 0 415 416 0 416 409 0 417 418 0 418 412 0
		 416 419 1 419 420 0 421 417 1 417 422 0 423 420 0 424 423 0 424 425 0 424 426 0 426 427 1
		 427 425 0 428 427 0 420 426 1 429 426 0 419 429 0 430 425 0 428 421 0 421 431 0 431 427 1
		 431 430 0 411 413 0 412 432 1 432 411 0 415 432 0 409 432 1 410 414 0 412 422 1 414 422 0
		 420 409 1 423 410 1 423 430 0 430 414 1 422 431 1 418 415 0 417 416 0 421 419 0 428 429 0
		 433 434 0 434 435 1 436 437 0 437 438 1 438 439 0 439 436 0 440 441 0 441 433 0 433 442 0
		 442 440 1 443 444 1 444 445 0 445 446 0 446 443 0 447 448 1 448 449 0;
	setAttr ".ed[830:995]" 450 451 0 451 439 0 438 450 1 434 452 0 453 454 0 454 438 0
		 437 453 0 455 456 1 456 452 0 452 457 0 457 455 0 443 458 0 458 459 0 459 444 0 460 448 0
		 454 461 0 461 450 0 462 463 0 463 464 0 464 465 1 465 462 1 464 466 0 466 467 0 467 465 1
		 469 470 1 470 468 1 471 468 1 470 472 1 472 471 1 473 471 1 472 474 0 474 473 0 475 476 0
		 476 477 0 477 478 1 478 475 0 477 479 0 479 480 0 480 478 0 463 475 0 478 464 1 480 466 0
		 481 482 0 482 483 1 483 484 1 484 481 0 485 484 0 486 479 0 477 487 1 487 486 0 477 488 0
		 488 481 1 481 487 0 476 488 0 488 489 1 489 482 1 488 442 0 442 435 1 435 489 1 467 472 0
		 470 465 1 469 462 0 468 490 1 490 469 1 446 469 0 490 443 1 491 492 0 492 474 0 472 491 0
		 493 440 0 488 493 0 494 495 0 496 494 0 495 497 0 497 496 1 497 486 1 497 498 0 498 486 0
		 469 499 1 499 462 1 499 500 0 500 463 1 500 501 0 501 475 1 501 502 0 502 476 0 472 503 1
		 503 491 0 467 503 1 504 503 0 466 504 1 505 504 0 480 505 1 506 505 0 479 506 1 498 506 0
		 502 493 0 469 507 0 507 499 0 445 507 0 485 496 0 486 485 1 487 484 1 483 508 1 508 485 1
		 508 509 1 509 496 1 509 447 1 447 494 0 492 510 0 510 473 1 441 511 0 511 434 1 450 512 1
		 512 495 0 495 451 1 449 451 0 449 494 1 449 436 0 448 437 1 513 514 0 515 513 0 514 516 1
		 516 515 1 517 515 0 516 518 1 518 517 0 473 519 0 519 520 0 520 471 1 520 521 1 521 468 1
		 521 522 1 523 524 0 525 523 0 524 526 0 526 525 1 527 525 0 526 528 0 528 527 0 524 513 0
		 515 526 1 517 528 0 529 530 0 483 529 1 531 529 0 482 531 0 532 531 1 533 531 0 532 525 0
		 525 533 1 534 533 0 527 534 0 532 523 0 489 532 1 456 532 0 435 456 1 520 518 0 516 521 1
		 514 522 0 490 522 1 522 458 0 535 520 0 519 536 0 536 535 0 537 532 0;
	setAttr ".ed[996:1161]" 455 537 0 538 539 0 539 540 0 540 541 1 541 538 0 534 541 1
		 534 542 0 542 541 0 523 543 0 543 544 0 544 524 1 544 545 0 545 513 1 545 546 0 546 514 1
		 546 522 1 535 547 0 547 520 1 547 518 1 547 548 0 548 517 1 548 549 0 549 528 1 549 550 0
		 550 527 1 550 542 0 537 543 0 546 551 0 551 522 0 551 459 0 540 530 0 530 534 1 529 533 1
		 539 447 0 509 540 1 508 530 1 510 536 0 511 457 0 461 460 0 538 461 1 538 512 0 460 539 1
		 453 460 0 552 553 0 553 554 0 554 555 0 555 552 0 556 557 0 558 556 0 559 556 0 558 560 0
		 560 559 0 558 561 0 562 558 0 562 563 0 563 560 0 562 564 0 565 562 0 565 566 0 566 563 0
		 565 567 0 556 565 0 559 566 0 560 568 0 568 569 0 569 559 0 568 570 0 570 571 1 571 569 0
		 572 571 0 563 573 0 573 568 0 573 574 0 574 570 1 575 570 0 566 576 0 576 573 0 576 577 0
		 577 574 1 577 578 0 578 579 1 579 574 0 578 580 0 580 581 1 581 579 0 580 582 0 582 583 1
		 583 581 0 584 583 0 569 566 1 569 576 0 571 577 0 552 585 0 585 586 0 586 553 0 587 586 0
		 586 584 0 584 554 0 584 588 0 588 555 0 582 588 0 588 585 1 589 585 0 564 567 0 557 561 0
		 567 557 0 564 561 0 590 587 0 591 590 1 575 590 0 591 572 0 572 575 1 589 591 0 587 589 1
		 587 583 0 590 581 1 575 579 1 582 589 1 580 591 1 578 572 1 592 593 0 594 592 0 593 595 0
		 595 594 1 596 594 0 595 597 0 597 596 1 598 596 0 597 599 0 599 598 0 598 600 0 600 601 0
		 601 596 1 601 602 0 602 594 0 602 603 0 603 592 0 604 603 0 602 605 1 605 604 0 601 606 1
		 606 605 0 600 607 0 607 606 0 607 599 0 597 606 0 595 605 0 593 604 0 608 609 0 609 610 1
		 610 611 1 611 608 0 612 611 1 612 613 1 613 611 1 612 614 1 614 613 0 611 615 0 616 615 1
		 617 615 0 616 618 0 618 617 0 618 619 0 620 619 0 621 619 0 620 622 0;
	setAttr ".ed[1162:1327]" 622 621 1 623 624 0 624 616 0 616 625 0 625 623 0 611 625 0
		 613 623 0 626 621 1 622 626 1 622 627 0 627 626 1 620 628 0 628 624 0 613 650 0 614 651 0
		 629 630 1 630 631 0 630 632 1 632 633 1 633 631 1 632 634 1 634 635 0 635 633 1 634 636 1
		 636 610 1 610 635 1 636 612 1 637 638 0 639 637 1 640 637 0 639 641 1 641 640 0 642 643 0
		 643 631 1 643 638 0 638 644 0 644 631 1 645 644 1 645 646 1 626 646 1 609 647 0 647 635 0
		 647 642 0 642 633 1 648 608 0 615 648 0 641 648 0 617 641 0 617 621 0 637 645 1 640 621 0
		 621 645 1 618 628 0 609 649 1 649 642 1 649 639 1 639 643 1 648 649 1 644 629 0 646 629 1
		 650 652 0 651 653 0 624 650 1 650 651 1 652 622 0 653 627 0 628 652 1 652 653 1 654 655 0
		 655 656 1 656 657 1 657 654 0 658 657 1 658 659 1 659 657 1 658 660 1 660 659 0 657 661 0
		 662 661 1 663 661 0 662 664 0 664 663 0 664 665 0 666 665 0 667 665 0 666 668 0 668 667 1
		 669 670 0 670 662 0 662 671 0 671 669 0 657 671 0 659 669 0 672 667 1 668 672 1 668 673 0
		 673 672 1 666 674 0 674 670 0 659 696 0 660 697 0 675 676 1 676 677 0 676 678 1 678 679 1
		 679 677 1 678 680 1 680 681 0 681 679 1 680 682 1 682 656 1 656 681 1 682 658 1 683 684 0
		 685 683 1 686 683 0 685 687 1 687 686 0 688 689 0 689 677 1 689 684 0 684 690 0 690 677 1
		 691 690 1 691 692 1 672 692 1 655 693 0 693 681 0 693 688 0 688 679 1 694 654 0 661 694 0
		 687 694 0 663 687 0 663 667 0 683 691 1 686 667 0 667 691 1 664 674 0 655 695 1 695 688 1
		 695 685 1 685 689 1 694 695 1 690 675 0 692 675 1 696 698 0 697 699 0 670 696 1 696 697 1
		 698 668 0 699 673 0 674 698 1 698 699 1 700 701 0 701 702 1 702 703 1 703 700 0 704 703 1
		 704 705 1 705 703 1 704 706 1 706 705 0 703 707 0 708 707 1 709 707 0;
	setAttr ".ed[1328:1493]" 708 710 0 710 709 0 710 711 0 712 711 0 713 711 0 712 714 0
		 714 713 1 715 716 0 716 708 0 708 717 0 717 715 0 703 717 0 705 715 0 718 713 1 714 718 1
		 714 719 0 719 718 1 712 720 0 720 716 0 705 742 0 706 743 0 721 722 1 722 723 0 722 724 1
		 724 725 1 725 723 1 724 726 1 726 727 0 727 725 1 726 728 1 728 702 1 702 727 1 728 704 1
		 729 730 0 731 729 1 732 729 0 731 733 1 733 732 0 734 735 0 735 723 1 735 730 0 730 736 0
		 736 723 1 737 736 1 737 738 1 718 738 1 701 739 0 739 727 0 739 734 0 734 725 1 740 700 0
		 707 740 0 733 740 0 709 733 0 709 713 0 729 737 1 732 713 0 713 737 1 710 720 0 701 741 1
		 741 734 1 741 731 1 731 735 1 740 741 1 736 721 0 738 721 1 742 744 0 743 745 0 716 742 1
		 742 743 1 744 714 0 745 719 0 720 744 1 744 745 1 746 747 0 747 748 1 748 749 0 749 746 1
		 750 749 0 751 752 0 752 753 1 753 754 1 754 751 0 755 752 0 751 756 0 756 755 1 757 755 0
		 756 758 0 758 757 1 759 757 0 758 760 0 760 759 1 749 759 0 760 746 0 750 761 0 761 762 1
		 762 763 1 763 750 0 762 764 1 764 765 1 765 763 0 766 765 0 764 767 1 767 766 1 768 766 0
		 767 769 1 769 768 0 769 753 1 752 768 0 755 766 1 757 765 1 759 763 1 770 758 1 770 771 1
		 771 760 1 771 747 1 754 772 1 772 756 1 772 770 1 748 761 1 773 774 0 774 775 0 775 776 0
		 776 773 0 777 778 0 778 774 0 773 777 0 777 779 0 779 780 0 780 778 0 776 779 0 775 780 0
		 781 782 0 782 783 0 783 784 0 784 781 0 785 786 0 786 782 0 781 785 0 785 787 0 787 788 0
		 788 786 0 784 787 0 783 788 0 789 790 0 791 789 0 790 792 0 792 791 0 793 791 0 792 794 0
		 794 793 0 795 793 0 794 796 0 796 795 0 797 795 0 796 798 0 798 797 0 789 797 0 798 790 0
		 794 790 1 791 795 1 799 800 0 800 801 0 801 802 0 802 799 0 803 804 0;
	setAttr ".ed[1494:1659]" 804 800 0 799 803 0 803 805 0 805 806 0 806 804 0 802 805 0
		 801 806 0 807 808 0 808 809 0 810 811 0 811 812 0 813 814 0 814 807 0 815 816 0 816 817 0
		 817 818 1 818 815 0 819 818 0 820 821 0 821 822 0 822 823 1 823 820 0 822 824 0 824 825 0
		 825 823 0 809 811 0 810 826 1 826 809 0 813 826 0 807 826 1 808 812 0 827 828 0 828 810 0
		 810 829 1 829 827 0 812 829 0 817 807 1 816 808 1 816 824 0 824 812 1 829 822 1 825 815 0
		 817 830 0 830 819 0 828 813 0 827 814 0 814 830 1 827 821 1 821 830 0 820 819 0 818 823 1
		 831 832 0 832 833 0 834 835 0 835 836 0 837 838 0 838 831 0 839 840 0 840 841 0 841 842 1
		 842 839 0 843 842 0 844 845 0 845 846 0 846 847 1 847 844 0 846 848 0 848 849 0 849 847 0
		 833 835 0 834 850 1 850 833 0 837 850 0 831 850 1 832 836 0 851 852 0 852 834 0 834 853 1
		 853 851 0 836 853 0 841 831 1 840 832 1 840 848 0 848 836 1 853 846 1 849 839 0 841 854 0
		 854 843 0 852 837 0 851 838 0 838 854 1 851 845 1 845 854 0 844 843 0 842 847 1 855 856 0
		 856 857 0 858 859 0 859 860 0 861 862 0 862 855 0 863 864 0 864 858 0 862 865 1 865 866 0
		 867 863 1 863 868 0 869 866 0 870 869 0 870 871 0 870 872 0 872 873 1 873 871 0 874 873 0
		 866 872 1 875 872 0 865 875 0 876 871 0 874 867 0 867 877 0 877 873 1 877 876 0 857 859 0
		 858 878 1 878 857 0 861 878 0 855 878 1 856 860 0 858 868 1 860 868 0 866 855 1 869 856 1
		 869 876 0 876 860 1 868 877 1 864 861 0 863 862 0 867 865 0 874 875 0 879 880 0 880 881 0
		 881 882 0 882 879 0 879 883 0 883 884 0 884 880 0 885 884 0 886 887 0 887 888 0 888 885 0
		 885 886 0 888 889 0 889 884 0 889 881 0 889 890 0 890 882 0 891 890 0 890 883 0 892 883 0
		 891 892 0 893 892 0 891 894 0 894 893 0 887 894 0 891 888 0 893 886 0;
	setAttr ".ed[1660:1825]" 885 892 0 895 896 0 896 897 0 897 898 0 898 895 0 896 899 0
		 899 900 0 900 897 0 899 901 0 901 902 0 902 900 0 901 895 0 898 902 0 903 904 0 904 905 1
		 906 903 0 905 906 0 907 908 0 908 909 0 909 910 0 910 907 0 911 912 0 912 913 1 914 915 0
		 915 916 1 916 917 0 917 914 1 918 919 0 919 920 1 920 921 0 921 918 1 922 923 0 924 922 1
		 925 922 0 924 926 0 926 925 0 924 927 0 928 924 0 928 929 0 929 926 0 929 930 1 930 931 0
		 931 926 1 930 932 0 932 933 1 933 931 0 932 934 0 934 935 1 935 933 0 934 936 0 928 937 0
		 938 928 1 938 939 0 939 929 0 931 940 0 940 925 0 933 941 1 941 940 0 935 942 1 942 941 0
		 943 942 0 944 945 0 945 918 1 918 944 1 946 944 0 918 936 0 936 946 1 947 946 0 934 947 1
		 934 948 1 948 947 0 932 949 1 949 948 0 930 950 0 950 949 0 939 950 0 951 952 0 952 953 0
		 953 954 1 954 951 0 953 955 0 955 956 1 956 954 0 955 957 0 957 958 1 958 956 0 957 959 0
		 959 960 1 960 958 0 959 906 0 906 961 1 961 960 0 905 962 0 962 961 0 937 963 0 963 938 0
		 923 927 0 964 965 0 915 964 1 907 964 0 914 907 1 914 908 0 966 920 0 919 913 0 913 966 1
		 945 913 0 967 968 0 968 958 1 958 967 1 969 967 0 960 969 1 970 969 0 961 970 0 968 971 0
		 971 956 1 971 972 0 972 954 1 972 910 0 910 954 1 909 951 0 909 912 0 912 952 0 911 973 0
		 973 953 1 953 911 1 973 974 0 974 955 1 974 975 0 975 957 1 975 976 0 976 957 1 976 977 0
		 977 959 1 977 903 0 904 978 0 978 962 1 978 970 0 908 913 1 974 946 1 973 944 0 911 945 0
		 947 975 0 948 976 0 949 977 1 950 903 1 939 904 0 939 925 0 925 978 1 943 965 0 968 943 0
		 967 942 0 969 941 1 970 940 1 921 916 0 915 918 1 915 979 0 979 936 1 979 935 0 917 980 0
		 980 908 1 980 966 0 916 981 0 981 982 0 982 917 1 982 983 0 983 980 0;
	setAttr ".ed[1826:1991]" 921 984 0 984 981 0 984 985 0 985 982 0 966 986 0 986 985 0
		 985 920 1 983 986 0 964 972 0 938 922 0 963 923 0 937 927 0 979 965 1 965 971 1 935 943 0
		 987 988 0 988 989 1 990 991 0 991 992 1 992 993 0 993 990 0 994 995 0 995 987 0 987 996 0
		 996 994 1 997 998 1 998 999 0 999 1000 0 1000 997 0 1001 1002 1 1002 1003 0 1004 1005 0
		 1005 993 0 992 1004 1 988 1006 0 1007 1008 0 1008 992 0 991 1007 0 1009 1010 1 1010 1006 0
		 1006 1011 0 1011 1009 0 997 1012 0 1012 1013 0 1013 998 0 1014 1002 0 1008 1015 0
		 1015 1004 0 1016 1017 0 1017 1018 0 1018 1019 1 1019 1016 1 1018 1020 0 1020 1021 0
		 1021 1019 1 1023 1024 1 1024 1022 1 1025 1022 1 1024 1026 1 1026 1025 1 1027 1025 1
		 1026 1028 0 1028 1027 0 1029 1030 0 1030 1031 0 1031 1032 1 1032 1029 0 1031 1033 0
		 1033 1034 0 1034 1032 0 1017 1029 0 1032 1018 1 1034 1020 0 1035 1036 0 1036 1037 1
		 1037 1038 1 1038 1035 0 1039 1038 0 1040 1033 0 1031 1041 1 1041 1040 0 1031 1042 0
		 1042 1035 1 1035 1041 0 1030 1042 0 1042 1043 1 1043 1036 1 1042 996 0 996 989 1
		 989 1043 1 1021 1026 0 1024 1019 1 1023 1016 0 1022 1044 1 1044 1023 1 1000 1023 0
		 1044 997 1 1045 1046 0 1046 1028 0 1026 1045 0 1047 994 0 1042 1047 0 1048 1049 0
		 1050 1048 0 1049 1051 0 1051 1050 1 1051 1040 1 1051 1052 0 1052 1040 0 1023 1053 1
		 1053 1016 1 1053 1054 0 1054 1017 1 1054 1055 0 1055 1029 1 1055 1056 0 1056 1030 0
		 1026 1057 1 1057 1045 0 1021 1057 1 1058 1057 0 1020 1058 1 1059 1058 0 1034 1059 1
		 1060 1059 0 1033 1060 1 1052 1060 0 1056 1047 0 1023 1061 0 1061 1053 0 999 1061 0
		 1039 1050 0 1040 1039 1 1041 1038 1 1037 1062 1 1062 1039 1 1062 1063 1 1063 1050 1
		 1063 1001 1 1001 1048 0 1046 1064 0 1064 1027 1 995 1065 0 1065 988 1 1004 1066 1
		 1066 1049 0 1049 1005 1 1003 1005 0 1003 1048 1 1003 990 0 1002 991 1 1067 1068 0
		 1069 1067 0 1068 1070 1 1070 1069 1 1071 1069 0 1070 1072 1 1072 1071 0 1027 1073 0
		 1073 1074 0 1074 1025 1 1074 1075 1 1075 1022 1 1075 1076 1 1077 1078 0 1079 1077 0;
	setAttr ".ed[1992:2157]" 1078 1080 0 1080 1079 1 1081 1079 0 1080 1082 0 1082 1081 0
		 1078 1067 0 1069 1080 1 1071 1082 0 1083 1084 0 1037 1083 1 1085 1083 0 1036 1085 0
		 1086 1085 1 1087 1085 0 1086 1079 0 1079 1087 1 1088 1087 0 1081 1088 0 1086 1077 0
		 1043 1086 1 1010 1086 0 989 1010 1 1074 1072 0 1070 1075 1 1068 1076 0 1044 1076 1
		 1076 1012 0 1089 1074 0 1073 1090 0 1090 1089 0 1091 1086 0 1009 1091 0 1092 1093 0
		 1093 1094 0 1094 1095 1 1095 1092 0 1088 1095 1 1088 1096 0 1096 1095 0 1077 1097 0
		 1097 1098 0 1098 1078 1 1098 1099 0 1099 1067 1 1099 1100 0 1100 1068 1 1100 1076 1
		 1089 1101 0 1101 1074 1 1101 1072 1 1101 1102 0 1102 1071 1 1102 1103 0 1103 1082 1
		 1103 1104 0 1104 1081 1 1104 1096 0 1091 1097 0 1100 1105 0 1105 1076 0 1105 1013 0
		 1094 1084 0 1084 1088 1 1083 1087 1 1093 1001 0 1063 1094 1 1062 1084 1 1064 1090 0
		 1065 1011 0 1015 1014 0 1092 1015 1 1092 1066 0 1014 1093 1 1007 1014 0 1106 1107 0
		 1107 1108 0 1108 1109 0 1109 1106 0 1110 1111 0 1112 1110 0 1113 1110 0 1112 1114 0
		 1114 1113 0 1112 1115 0 1116 1112 0 1116 1117 0 1117 1114 0 1116 1118 0 1119 1116 0
		 1119 1120 0 1120 1117 0 1119 1121 0 1110 1119 0 1113 1120 0 1114 1122 0 1122 1123 0
		 1123 1113 0 1122 1124 0 1124 1125 1 1125 1123 0 1126 1125 0 1117 1127 0 1127 1122 0
		 1127 1128 0 1128 1124 1 1129 1124 0 1120 1130 0 1130 1127 0 1130 1131 0 1131 1128 1
		 1131 1132 0 1132 1133 1 1133 1128 0 1132 1134 0 1134 1135 1 1135 1133 0 1134 1136 0
		 1136 1137 1 1137 1135 0 1138 1137 0 1123 1120 1 1123 1130 0 1125 1131 0 1106 1139 0
		 1139 1140 0 1140 1107 0 1141 1140 0 1140 1138 0 1138 1108 0 1138 1142 0 1142 1109 0
		 1136 1142 0 1142 1139 1 1143 1139 0 1118 1121 0 1111 1115 0 1121 1111 0 1118 1115 0
		 1144 1141 0 1145 1144 1 1129 1144 0 1145 1126 0 1126 1129 1 1143 1145 0 1141 1143 1
		 1141 1137 0 1144 1135 1 1129 1133 1 1136 1143 1 1134 1145 1 1132 1126 1 1146 1147 0
		 1148 1146 0 1147 1149 0 1149 1148 1 1150 1148 0 1149 1151 0 1151 1150 1 1152 1150 0
		 1151 1153 0 1153 1152 0 1152 1154 0 1154 1155 0 1155 1150 1 1155 1156 0 1156 1148 0;
	setAttr ".ed[2158:2323]" 1156 1157 0 1157 1146 0 1158 1157 0 1156 1159 1 1159 1158 0
		 1155 1160 1 1160 1159 0 1154 1161 0 1161 1160 0 1161 1153 0 1151 1160 0 1149 1159 0
		 1147 1158 0 1162 1163 0 1163 1164 0 1164 1165 0 1165 1162 0 1166 1167 0 1168 1166 0
		 1169 1166 0 1168 1170 0 1170 1169 0 1168 1171 0 1172 1168 0 1172 1173 0 1173 1170 0
		 1172 1174 0 1175 1172 0 1175 1176 0 1176 1173 0 1175 1177 0 1166 1175 0 1169 1176 0
		 1170 1178 0 1178 1179 0 1179 1169 0 1178 1180 0 1180 1181 1 1181 1179 0 1182 1181 0
		 1173 1183 0 1183 1178 0 1183 1184 0 1184 1180 1 1185 1180 0 1176 1186 0 1186 1183 0
		 1186 1187 0 1187 1184 1 1187 1188 0 1188 1189 1 1189 1184 0 1188 1190 0 1190 1191 1
		 1191 1189 0 1190 1192 0 1192 1193 1 1193 1191 0 1194 1193 0 1179 1176 1 1179 1186 0
		 1181 1187 0 1162 1195 0 1195 1196 0 1196 1163 0 1197 1196 0 1196 1194 0 1194 1164 0
		 1194 1198 0 1198 1165 0 1192 1198 0 1198 1195 1 1199 1195 0 1174 1177 0 1167 1171 0
		 1177 1167 0 1174 1171 0 1200 1197 0 1201 1200 1 1185 1200 0 1201 1182 0 1182 1185 1
		 1199 1201 0 1197 1199 1 1197 1193 0 1200 1191 1 1185 1189 1 1192 1199 1 1190 1201 1
		 1188 1182 1 1202 1203 0 1204 1202 0 1203 1205 0 1205 1204 1 1206 1204 0 1205 1207 0
		 1207 1206 1 1208 1206 0 1207 1209 0 1209 1208 0 1208 1210 0 1210 1211 0 1211 1206 1
		 1211 1212 0 1212 1204 0 1212 1213 0 1213 1202 0 1214 1213 0 1212 1215 1 1215 1214 0
		 1211 1216 1 1216 1215 0 1210 1217 0 1217 1216 0 1217 1209 0 1207 1216 0 1205 1215 0
		 1203 1214 0 1218 1219 0 1219 1220 0 1221 1222 0 1222 1223 0 1224 1225 0 1225 1218 0
		 1226 1227 0 1227 1221 0 1225 1228 1 1228 1229 0 1230 1226 1 1226 1231 0 1232 1229 0
		 1233 1232 0 1233 1234 0 1233 1235 0 1235 1236 1 1236 1234 0 1237 1236 0 1229 1235 1
		 1238 1235 0 1228 1238 0 1239 1234 0 1237 1230 0 1230 1240 0 1240 1236 1 1240 1239 0
		 1220 1222 0 1221 1241 1 1241 1220 0 1224 1241 0 1218 1241 1 1219 1223 0 1221 1231 1
		 1223 1231 0 1229 1218 1 1232 1219 1 1232 1239 0 1239 1223 1 1231 1240 1 1227 1224 0
		 1226 1225 0 1230 1228 0 1237 1238 0 1242 1243 0 1243 1244 0 1244 1245 0 1245 1242 0;
	setAttr ".ed[2324:2489]" 1243 1246 0 1246 1247 0 1247 1244 0 1246 1248 0 1248 1249 0
		 1249 1247 0 1248 1242 0 1245 1249 0 1250 1251 0 1251 1252 0 1252 1253 0 1253 1250 0
		 1254 1255 0 1255 1251 0 1250 1254 0 1254 1256 0 1256 1257 0 1257 1255 0 1253 1256 0
		 1252 1257 0 1258 1259 0 1260 1258 0 1259 1261 0 1261 1260 0 1262 1260 0 1261 1263 0
		 1263 1262 0 1264 1262 0 1263 1265 0 1265 1264 0 1266 1264 0 1265 1267 0 1267 1266 0
		 1258 1266 0 1267 1259 0 1263 1259 1 1260 1264 1 1268 1269 0 1269 1270 0 1270 1271 0
		 1271 1268 0 1272 1273 0 1273 1269 0 1268 1272 0 1272 1274 0 1274 1275 0 1275 1273 0
		 1271 1274 0 1270 1275 0 1276 1277 0 1277 1278 0 1279 1280 0 1280 1281 0 1282 1283 0
		 1283 1276 0 1284 1285 0 1285 1286 0 1286 1287 1 1287 1284 0 1288 1287 0 1289 1290 0
		 1290 1291 0 1291 1292 1 1292 1289 0 1291 1293 0 1293 1294 0 1294 1292 0 1278 1280 0
		 1279 1295 1 1295 1278 0 1282 1295 0 1276 1295 1 1277 1281 0 1296 1297 0 1297 1279 0
		 1279 1298 1 1298 1296 0 1281 1298 0 1286 1276 1 1285 1277 1 1285 1293 0 1293 1281 1
		 1298 1291 1 1294 1284 0 1286 1299 0 1299 1288 0 1297 1282 0 1296 1283 0 1283 1299 1
		 1296 1290 1 1290 1299 0 1289 1288 0 1287 1292 1 1300 1301 0 1301 1302 0 1303 1304 0
		 1304 1305 0 1306 1307 0 1307 1300 0 1308 1309 0 1309 1310 0 1310 1311 1 1311 1308 0
		 1312 1311 0 1313 1314 0 1314 1315 0 1315 1316 1 1316 1313 0 1315 1317 0 1317 1318 0
		 1318 1316 0 1302 1304 0 1303 1319 1 1319 1302 0 1306 1319 0 1300 1319 1 1301 1305 0
		 1320 1321 0 1321 1303 0 1303 1322 1 1322 1320 0 1305 1322 0 1310 1300 1 1309 1301 1
		 1309 1317 0 1317 1305 1 1322 1315 1 1318 1308 0 1310 1323 0 1323 1312 0 1321 1306 0
		 1320 1307 0 1307 1323 1 1320 1314 1 1314 1323 0 1313 1312 0 1311 1316 1 1324 1325 0
		 1325 1326 0 1326 1327 0 1327 1324 0 1328 1329 0 1329 1325 0 1324 1328 0 1328 1330 0
		 1330 1331 0 1331 1329 0 1327 1330 0 1326 1331 0 1332 1333 0 1333 1334 1 1341 1334 1
		 1332 1341 0 1335 1336 0 1336 1337 1 1337 1338 0 1338 1335 0 1339 1340 0 1340 1332 0
		 1341 1339 1 1342 1343 1 1343 1344 0 1344 1345 0 1345 1342 0 1346 1347 1 1347 1348 0;
	setAttr ".ed[2490:2655]" 1348 1393 1 1346 1393 0 1349 1350 0 1350 1338 0 1337 1349 1
		 1333 1351 0 1355 1351 0 1334 1355 1 1352 1353 0 1353 1337 0 1336 1352 0 1354 1355 1
		 1351 1356 0 1356 1354 0 1342 1357 0 1357 1358 0 1358 1343 0 1359 1347 0 1438 1346 0
		 1359 1438 1 1353 1360 0 1360 1349 0 1361 1362 0 1362 1363 0 1363 1364 1 1364 1361 1
		 1363 1365 0 1365 1366 0 1366 1364 1 1368 1369 1 1369 1367 1 1367 1389 1 1389 1368 1
		 1370 1367 1 1369 1371 1 1371 1370 1 1372 1370 1 1371 1373 0 1373 1372 0 1374 1375 0
		 1375 1376 0 1376 1377 1 1377 1374 0 1376 1378 0 1378 1379 0 1379 1377 0 1362 1374 0
		 1377 1363 1 1379 1365 0 1380 1381 0 1381 1382 1 1382 1383 1 1383 1380 0 1384 1383 0
		 1382 1407 1 1407 1384 1 1385 1378 0 1376 1386 1 1386 1385 0 1376 1387 0 1387 1380 1
		 1380 1386 0 1387 1388 1 1388 1381 1 1375 1387 0 1387 1341 0 1334 1388 1 1366 1371 0
		 1369 1364 1 1368 1361 0 1345 1368 0 1389 1342 1 1390 1391 0 1391 1373 0 1371 1390 0
		 1392 1339 0 1387 1392 0 1395 1393 0 1393 1394 0 1394 1396 0 1396 1395 1 1396 1385 1
		 1385 1384 1 1384 1395 0 1396 1397 0 1397 1385 0 1368 1398 1 1398 1361 1 1398 1399 0
		 1399 1362 1 1399 1400 0 1400 1374 1 1400 1401 0 1401 1375 0 1371 1402 1 1402 1390 0
		 1366 1402 1 1403 1402 0 1365 1403 1 1404 1403 0 1379 1404 1 1405 1404 0 1378 1405 1
		 1397 1405 0 1401 1392 0 1368 1406 0 1406 1398 0 1344 1406 0 1386 1383 1 1407 1408 1
		 1408 1395 1 1408 1346 1 1391 1409 0 1409 1372 1 1340 1410 0 1410 1333 1 1349 1411 1
		 1411 1394 0 1394 1350 1 1348 1350 0 1348 1335 0 1347 1336 1 1414 1412 0 1412 1413 0
		 1413 1415 1 1415 1414 1 1416 1414 0 1415 1417 1 1417 1416 0 1372 1418 0 1418 1419 0
		 1419 1370 1 1419 1420 1 1420 1367 1 1420 1421 1 1389 1421 1 1424 1422 0 1422 1423 0
		 1423 1425 0 1425 1424 1 1426 1424 0 1425 1427 0 1427 1426 0 1423 1412 0 1414 1425 1
		 1416 1427 0 1382 1428 1 1428 1429 0 1407 1429 1 1430 1428 0 1381 1430 0 1431 1430 1
		 1388 1431 1 1432 1430 0 1431 1424 0 1424 1432 1 1433 1432 0 1426 1433 0 1431 1422 0
		 1355 1431 0 1419 1417 0 1415 1420 1 1413 1421 0 1421 1357 0 1434 1419 0 1418 1435 0;
	setAttr ".ed[2656:2821]" 1435 1434 0 1436 1431 0 1354 1436 0 1437 1438 0 1438 1439 0
		 1439 1440 1 1440 1437 0 1433 1440 1 1439 1429 0 1429 1433 1 1433 1441 0 1441 1440 0
		 1422 1442 0 1442 1443 0 1443 1423 1 1443 1444 0 1444 1412 1 1444 1445 0 1445 1413 1
		 1445 1421 1 1434 1446 0 1446 1419 1 1446 1417 1 1446 1447 0 1447 1416 1 1447 1448 0
		 1448 1427 1 1448 1449 0 1449 1426 1 1449 1441 0 1436 1442 0 1445 1450 0 1450 1421 0
		 1450 1358 0 1428 1432 1 1408 1439 1 1409 1435 0 1410 1356 0 1437 1360 1 1360 1359 0
		 1437 1411 0 1352 1359 0 1451 1452 0 1452 1453 1 1453 1454 0 1454 1451 0 1455 1456 0
		 1456 1457 0 1457 1458 0 1458 1455 0 1459 1460 0 1460 1461 1 1493 1461 0 1459 1493 0
		 1462 1463 0 1463 1464 1 1464 1465 0 1465 1462 1 1466 1467 0 1467 1468 1 1468 1469 0
		 1469 1466 1 1472 1470 1 1470 1471 0 1471 1475 0 1472 1475 0 1473 1470 0 1472 1474 0
		 1474 1473 0 1476 1472 0 1485 1475 0 1476 1485 0 1476 1477 0 1477 1474 0 1477 1478 1
		 1478 1479 0 1479 1474 1 1478 1480 0 1480 1481 1 1481 1479 0 1480 1482 0 1482 1483 1
		 1483 1481 0 1482 1484 0 1527 1484 1 1527 1483 0 1486 1476 1 1485 1511 0 1511 1486 0
		 1486 1487 0 1487 1477 0 1479 1488 0 1488 1473 0 1481 1489 1 1489 1488 0 1483 1490 1
		 1490 1489 0 1491 1490 0 1483 1491 0 1492 1493 0 1493 1466 1 1466 1492 1 1494 1492 0
		 1466 1484 0 1484 1494 1 1495 1494 0 1482 1495 1 1482 1496 1 1496 1495 0 1480 1497 1
		 1497 1496 0 1478 1498 0 1498 1497 0 1487 1498 0 1499 1500 0 1500 1501 0 1501 1502 1
		 1502 1499 0 1501 1503 0 1503 1504 1 1504 1502 0 1503 1505 0 1505 1506 1 1506 1504 0
		 1505 1507 0 1507 1508 1 1508 1506 0 1507 1454 0 1454 1509 1 1509 1508 0 1453 1510 0
		 1510 1509 0 1463 1512 1 1512 1513 0 1527 1513 1 1463 1527 0 1455 1512 0 1462 1455 1
		 1462 1456 0 1514 1468 0 1467 1461 0 1461 1514 1 1515 1516 0 1516 1506 1 1506 1515 1
		 1517 1515 0 1508 1517 1 1518 1517 0 1509 1518 0 1516 1519 0 1519 1504 1 1519 1520 0
		 1520 1502 1 1520 1458 0 1458 1502 1 1457 1499 0 1457 1460 0 1460 1500 0 1459 1521 0
		 1521 1501 1 1501 1459 1 1521 1522 0 1522 1503 1 1522 1523 0 1523 1505 1 1523 1524 0;
	setAttr ".ed[2822:2987]" 1524 1505 1 1524 1525 0 1525 1507 1 1525 1451 0 1452 1526 0
		 1526 1510 1 1526 1518 0 1456 1461 1 1522 1494 1 1495 1523 0 1521 1492 0 1496 1524 0
		 1497 1525 1 1498 1451 1 1487 1452 0 1487 1473 0 1473 1526 1 1486 1470 0 1516 1491 0
		 1491 1513 0 1513 1519 1 1515 1490 0 1517 1489 1 1518 1488 1 1469 1464 0 1463 1466 1
		 1465 1528 0 1528 1456 1 1528 1514 0 1464 1529 0 1529 1530 0 1530 1465 1 1530 1531 0
		 1531 1528 0 1469 1532 0 1532 1529 0 1532 1533 0 1533 1530 0 1534 1533 0 1531 1534 0
		 1514 1534 0 1533 1468 1 1512 1520 0 1511 1471 0 1535 1536 0 1536 1537 0 1537 1538 0
		 1538 1535 0 1535 1539 0 1539 1540 0 1540 1536 0 1541 1540 0 1548 1539 0 1541 1548 0
		 1542 1543 0 1543 1544 0 1544 1541 0 1541 1542 0 1544 1545 0 1545 1540 0 1545 1537 0
		 1545 1546 0 1546 1538 0 1547 1546 0 1547 1544 0 1546 1539 0 1547 1548 0 1549 1548 0
		 1547 1550 0 1550 1549 0 1543 1550 0 1549 1542 0 1551 1552 0 1552 1553 0 1553 1554 0
		 1554 1551 0 1555 1556 0 1556 1552 0 1551 1555 0 1555 1557 0 1557 1558 0 1558 1556 0
		 1554 1557 0 1553 1558 0 1559 1560 0 1560 1561 0 1561 1562 0 1562 1559 0 1559 1563 0
		 1563 1564 0 1564 1560 0 1565 1564 0 1572 1563 0 1565 1572 0 1566 1567 0 1567 1568 0
		 1568 1565 0 1565 1566 0 1568 1569 0 1569 1564 0 1569 1561 0 1569 1570 0 1570 1562 0
		 1571 1570 0 1571 1568 0 1570 1563 0 1571 1572 0 1573 1572 0 1571 1574 0 1574 1573 0
		 1567 1574 0 1573 1566 0 1575 1576 0 1576 1577 0 1577 1578 0 1578 1575 0 1579 1580 0
		 1580 1576 0 1575 1579 0 1579 1581 0 1581 1582 0 1582 1580 0 1578 1581 0 1577 1582 0
		 1583 1584 0 1584 1585 0 1585 1586 0 1586 1583 0 1584 1587 0 1587 1588 0 1588 1585 0
		 1587 1589 0 1589 1590 0 1590 1588 0 1589 1583 0 1586 1590 0 1593 1591 0 1591 1592 0
		 1592 1594 0 1594 1593 0 1595 1593 0 1594 1596 0 1596 1595 0 1597 1595 0 1596 1598 0
		 1598 1597 0 1599 1597 0 1598 1600 0 1600 1599 0 1591 1599 0 1600 1592 0 1596 1592 1
		 1593 1597 1 1601 1602 0 1602 1603 0 1603 1604 0 1604 1601 0 1605 1606 0 1606 1602 0
		 1601 1605 0 1605 1607 0 1607 1608 0 1608 1606 0 1604 1607 0 1603 1608 0 1609 1610 0;
	setAttr ".ed[2988:3153]" 1610 1611 0 1628 1611 0 1609 1628 1 1612 1613 0 1613 1614 0
		 1614 1631 0 1612 1631 1 1615 1616 0 1616 1609 0 1615 1628 0 1617 1618 0 1618 1619 0
		 1619 1620 1 1620 1617 0 1621 1620 0 1619 1632 0 1632 1621 0 1622 1623 0 1623 1624 0
		 1624 1625 1 1625 1622 0 1624 1626 0 1626 1627 0 1627 1625 0 1611 1613 0 1612 1628 1
		 1630 1612 0 1630 1615 0 1610 1614 0 1629 1630 0 1631 1629 0 1619 1609 1 1616 1632 1
		 1618 1610 1 1618 1626 0 1626 1614 1 1631 1624 1 1629 1623 1 1627 1617 0 1620 1625 1
		 1629 1616 0 1623 1632 0 1622 1621 0 1633 1634 0 1634 1635 0 1652 1635 0 1633 1652 1
		 1636 1637 0 1637 1638 0 1638 1655 0 1636 1655 1 1639 1640 0 1640 1633 0 1639 1652 0
		 1641 1642 0 1642 1643 0 1643 1644 1 1644 1641 0 1645 1644 0 1643 1656 0 1656 1645 0
		 1646 1647 0 1647 1648 0 1648 1649 1 1649 1646 0 1648 1650 0 1650 1651 0 1651 1649 0
		 1635 1637 0 1636 1652 1 1654 1636 0 1654 1639 0 1634 1638 0 1653 1654 0 1655 1653 0
		 1643 1633 1 1640 1656 1 1642 1634 1 1642 1650 0 1650 1638 1 1655 1648 1 1653 1647 1
		 1651 1641 0 1644 1649 1 1653 1640 0 1647 1656 0 1646 1645 0 1657 1658 0 1658 1659 1
		 1659 1660 0 1660 1657 0 1661 1662 0 1662 1663 0 1663 1664 0 1664 1661 0 1665 1666 0
		 1666 1667 1 1699 1667 0 1665 1699 0 1668 1669 0 1669 1670 1 1670 1671 0 1671 1668 1
		 1672 1673 0 1673 1674 1 1674 1675 0 1675 1672 1 1678 1676 1 1676 1677 0 1677 1681 0
		 1678 1681 0 1679 1676 0 1678 1680 0 1680 1679 0 1682 1678 0 1691 1681 0 1682 1691 0
		 1682 1683 0 1683 1680 0 1683 1684 1 1684 1685 0 1685 1680 1 1684 1686 0 1686 1687 1
		 1687 1685 0 1686 1688 0 1688 1689 1 1689 1687 0 1688 1690 0 1733 1690 1 1733 1689 0
		 1692 1682 1 1691 1717 0 1717 1692 0 1692 1693 0 1693 1683 0 1685 1694 0 1694 1679 0
		 1687 1695 1 1695 1694 0 1689 1696 1 1696 1695 0 1697 1696 0 1689 1697 1 1698 1699 0
		 1699 1672 1 1672 1698 1 1700 1698 0 1672 1690 0 1690 1700 1 1701 1700 0 1688 1701 1
		 1688 1702 1 1702 1701 0 1686 1703 1 1703 1702 0 1684 1704 0 1704 1703 0 1693 1704 0
		 1705 1706 0 1706 1707 0 1707 1708 1 1708 1705 0 1707 1709 0 1709 1710 1 1710 1708 0;
	setAttr ".ed[3154:3319]" 1709 1711 0 1711 1712 1 1712 1710 0 1711 1713 0 1713 1714 1
		 1714 1712 0 1713 1660 0 1660 1715 1 1715 1714 0 1659 1716 0 1716 1715 0 1669 1718 1
		 1718 1719 0 1733 1719 1 1669 1733 0 1661 1718 0 1668 1661 1 1668 1662 0 1720 1674 0
		 1673 1667 0 1667 1720 1 1721 1722 0 1722 1712 1 1712 1721 1 1723 1721 0 1714 1723 1
		 1724 1723 0 1715 1724 0 1722 1725 0 1725 1710 1 1725 1726 0 1726 1708 1 1726 1664 0
		 1664 1708 1 1663 1705 0 1663 1666 0 1666 1706 0 1665 1727 0 1727 1707 1 1707 1665 1
		 1727 1728 0 1728 1709 1 1728 1729 0 1729 1711 1 1729 1730 0 1730 1711 1 1730 1731 0
		 1731 1713 1 1731 1657 0 1658 1732 0 1732 1716 1 1732 1724 0 1662 1667 1 1728 1700 1
		 1701 1729 0 1727 1698 0 1702 1730 0 1703 1731 1 1704 1657 1 1693 1658 0 1693 1679 0
		 1679 1732 1 1692 1676 0 1722 1697 0 1697 1719 0 1719 1725 1 1721 1696 0 1723 1695 1
		 1724 1694 1 1675 1670 0 1669 1672 1 1671 1734 0 1734 1662 1 1734 1720 0 1670 1735 0
		 1735 1736 0 1736 1671 1 1736 1737 0 1737 1734 0 1675 1738 0 1738 1735 0 1738 1739 0
		 1739 1736 0 1740 1739 0 1737 1740 0 1720 1740 0 1739 1674 1 1718 1726 0 1717 1677 0
		 1741 1742 0 1742 1743 0 1764 1743 0 1741 1764 1 1744 1745 0 1745 1746 0 1746 1754 0
		 1744 1754 1 1747 1748 0 1748 1741 0 1747 1764 0 1749 1750 0 1750 1744 0 1749 1754 0
		 1748 1751 1 1751 1752 0 1752 1741 1 1753 1749 1 1754 1763 1 1753 1763 0 1756 1755 0
		 1755 1752 0 1752 1758 1 1756 1758 0 1756 1757 0 1762 1757 0 1755 1762 0 1758 1759 1
		 1759 1757 0 1760 1759 0 1761 1758 0 1760 1761 0 1751 1761 0 1763 1759 1 1763 1762 0
		 1760 1753 0 1743 1745 0 1744 1764 1 1750 1747 0 1742 1746 0 1755 1742 1 1762 1746 1
		 1749 1748 0 1753 1751 0 1765 1766 0 1766 1767 1 1774 1767 1 1765 1774 0 1768 1769 0
		 1769 1770 1 1770 1771 0 1771 1768 0 1772 1773 0 1773 1765 0 1774 1772 1 1775 1776 1
		 1776 1777 0 1777 1778 0 1778 1775 0 1779 1780 1 1780 1781 0 1781 1826 1 1779 1826 0
		 1782 1783 0 1783 1771 0 1770 1782 1 1766 1784 0 1788 1784 0 1767 1788 1 1785 1786 0
		 1786 1770 0 1769 1785 0 1787 1788 1 1784 1789 0 1789 1787 0 1775 1790 0 1790 1791 0;
	setAttr ".ed[3320:3485]" 1791 1776 0 1792 1780 0 1871 1779 0 1792 1871 1 1786 1793 0
		 1793 1782 0 1794 1795 0 1795 1796 0 1796 1797 1 1797 1794 1 1796 1798 0 1798 1799 0
		 1799 1797 1 1801 1802 1 1802 1800 1 1800 1822 1 1822 1801 1 1803 1800 1 1802 1804 1
		 1804 1803 1 1805 1803 1 1804 1806 0 1806 1805 0 1807 1808 0 1808 1809 0 1809 1810 1
		 1810 1807 0 1809 1811 0 1811 1812 0 1812 1810 0 1795 1807 0 1810 1796 1 1812 1798 0
		 1813 1814 0 1814 1815 1 1815 1816 1 1816 1813 0 1817 1816 0 1815 1840 1 1840 1817 1
		 1818 1811 0 1809 1819 1 1819 1818 0 1809 1820 0 1820 1813 1 1813 1819 0 1820 1821 1
		 1821 1814 1 1808 1820 0 1820 1774 0 1767 1821 1 1799 1804 0 1802 1797 1 1801 1794 0
		 1778 1801 0 1822 1775 1 1823 1824 0 1824 1806 0 1804 1823 0 1825 1772 0 1820 1825 0
		 1828 1826 0 1826 1827 0 1827 1829 0 1829 1828 1 1829 1818 1 1818 1817 1 1817 1828 0
		 1829 1830 0 1830 1818 0 1801 1831 1 1831 1794 1 1831 1832 0 1832 1795 1 1832 1833 0
		 1833 1807 1 1833 1834 0 1834 1808 0 1804 1835 1 1835 1823 0 1799 1835 1 1836 1835 0
		 1798 1836 1 1837 1836 0 1812 1837 1 1838 1837 0 1811 1838 1 1830 1838 0 1834 1825 0
		 1801 1839 0 1839 1831 0 1777 1839 0 1819 1816 1 1840 1841 1 1841 1828 1 1841 1779 1
		 1824 1842 0 1842 1805 1 1773 1843 0 1843 1766 1 1782 1844 1 1844 1827 0 1827 1783 1
		 1781 1783 0 1781 1768 0 1780 1769 1 1847 1845 0 1845 1846 0 1846 1848 1 1848 1847 1
		 1849 1847 0 1848 1850 1 1850 1849 0 1805 1851 0 1851 1852 0 1852 1803 1 1852 1853 1
		 1853 1800 1 1853 1854 1 1822 1854 1 1857 1855 0 1855 1856 0 1856 1858 0 1858 1857 1
		 1859 1857 0 1858 1860 0 1860 1859 0 1856 1845 0 1847 1858 1 1849 1860 0 1815 1861 1
		 1861 1862 0 1840 1862 1 1863 1861 0 1814 1863 0 1864 1863 1 1821 1864 1 1865 1863 0
		 1864 1857 0 1857 1865 1 1866 1865 0 1859 1866 0 1864 1855 0 1788 1864 0 1852 1850 0
		 1848 1853 1 1846 1854 0 1854 1790 0 1867 1852 0 1851 1868 0 1868 1867 0 1869 1864 0
		 1787 1869 0 1870 1871 0 1871 1872 0 1872 1873 1 1873 1870 0 1866 1873 1 1872 1862 0
		 1862 1866 1 1866 1874 0 1874 1873 0 1855 1875 0 1875 1876 0 1876 1856 1 1876 1877 0;
	setAttr ".ed[3486:3651]" 1877 1845 1 1877 1878 0 1878 1846 1 1878 1854 1 1867 1879 0
		 1879 1852 1 1879 1850 1 1879 1880 0 1880 1849 1 1880 1881 0 1881 1860 1 1881 1882 0
		 1882 1859 1 1882 1874 0 1869 1875 0 1878 1883 0 1883 1854 0 1883 1791 0 1861 1865 1
		 1841 1872 1 1842 1868 0 1843 1789 0 1870 1793 1 1793 1792 0 1870 1844 0 1785 1792 0
		 1884 1885 0 1885 1886 0 1886 1887 0 1887 1884 0 1890 1888 0 1888 1889 0 1889 1893 0
		 1890 1893 0 1891 1888 0 1890 1892 0 1892 1891 0 1894 1890 0 1896 1893 0 1894 1896 0
		 1894 1895 0 1895 1892 0 1897 1894 0 1896 1899 0 1897 1899 0 1897 1898 0 1898 1895 0
		 1888 1897 0 1899 1889 0 1891 1898 0 1892 1900 0 1900 1901 0 1901 1891 0 1900 1902 0
		 1902 1903 1 1903 1901 0 1904 1903 0 1907 1902 0 1904 1907 1 1895 1905 0 1905 1900 0
		 1905 1906 0 1906 1902 1 1911 1906 0 1907 1911 1 1898 1908 0 1908 1905 0 1908 1909 0
		 1909 1906 1 1909 1910 0 1910 1911 1 1910 1912 0 1912 1913 1 1913 1911 0 1912 1914 0
		 1914 1915 1 1915 1913 0 1916 1915 0 1914 1920 0 1916 1920 0 1901 1898 1 1901 1908 0
		 1903 1909 0 1910 1904 1 1884 1917 0 1917 1918 0 1918 1885 0 1919 1918 0 1921 1917 0
		 1919 1921 1 1918 1916 0 1916 1886 0 1919 1915 0 1920 1887 0 1920 1917 1 1914 1921 1
		 1923 1922 1 1922 1919 0 1921 1923 0 1907 1922 0 1923 1904 0 1922 1913 1 1912 1923 1
		 1926 1924 0 1924 1925 0 1925 1927 0 1927 1926 1 1928 1926 0 1927 1929 0 1929 1928 1
		 1930 1928 0 1929 1931 0 1931 1930 0 1930 1932 0 1932 1933 0 1933 1928 1 1933 1934 0
		 1934 1926 0 1934 1935 0 1935 1924 0 1936 1935 0 1925 1936 0 1934 1937 1 1937 1936 0
		 1933 1938 1 1938 1937 0 1932 1939 0 1939 1938 0 1939 1931 0 1929 1938 0 1927 1937 0
		 1940 1941 0 1941 1942 1 1942 1943 1 1943 1940 0 612 1943 1 636 1942 1 612 1944 1
		 1944 1943 1 614 1944 0 1943 1945 0 1945 1970 0 1970 1940 0 1946 1945 1 1943 1955 0
		 1946 1955 0 1947 1945 0 1946 1948 0 1948 1947 0 1948 1949 0 1951 1949 0 1947 1951 0
		 1950 1949 0 1948 1956 0 1950 1956 0 1950 1952 0 1952 1951 1 1953 1954 0 1954 1946 0
		 1955 1953 0 1944 1953 0 626 1951 1 1952 626 1 1952 627 0 1956 1973 1 1973 1952 0;
	setAttr ".ed[3652:3817]" 1973 653 1 630 1957 0 1967 1957 1 1967 629 0 632 1958 1
		 1958 1957 1 634 1959 0 1959 1958 1 1942 1959 1 1962 1960 1 1960 1961 0 1966 1961 0
		 1962 1966 1 1963 1960 0 1962 1964 1 1964 1963 0 1965 1966 0 1966 1957 1 1965 1958 1
		 1961 1967 0 1968 1967 1 1960 1968 1 1968 646 1 1951 1968 1 1941 1969 0 1969 1959 0
		 1969 1965 0 1964 1970 0 1947 1964 0 1963 1951 0 1956 1954 0 1941 1971 1 1971 1965 1
		 1971 1962 1 1970 1971 1 1944 1972 0 1954 1972 1 1972 651 1 1972 1973 0 1974 1975 0
		 1975 1976 1 1976 1977 1 1977 1974 0 658 1977 1 682 1976 1 658 1978 1 1978 1977 1
		 660 1978 0 1977 1979 0 1979 2004 0 2004 1974 0 1980 1979 1 1977 1989 0 1980 1989 0
		 1981 1979 0 1980 1982 0 1982 1981 0 1982 1983 0 1985 1983 0 1981 1985 0 1984 1983 0
		 1982 1990 0 1984 1990 0 1984 1986 0 1986 1985 1 1987 1988 0 1988 1980 0 1989 1987 0
		 1978 1987 0 672 1985 1 1986 672 1 1986 673 0 1990 2007 1 2007 1986 0 2007 699 1 676 1991 0
		 2001 1991 1 2001 675 0 678 1992 1 1992 1991 1 680 1993 0 1993 1992 1 1976 1993 1
		 1996 1994 1 1994 1995 0 2000 1995 0 1996 2000 1 1997 1994 0 1996 1998 1 1998 1997 0
		 1999 2000 0 2000 1991 1 1999 1992 1 1995 2001 0 2002 2001 1 1994 2002 1 2002 692 1
		 1985 2002 1 1975 2003 0 2003 1993 0 2003 1999 0 1998 2004 0 1981 1998 0 1997 1985 0
		 1990 1988 0 1975 2005 1 2005 1999 1 2005 1996 1 2004 2005 1 1978 2006 0 1988 2006 1
		 2006 697 1 2006 2007 0 2008 2009 0 2009 2010 1 2010 2011 1 2011 2008 0 704 2011 1
		 728 2010 1 704 2012 1 2012 2011 1 706 2012 0 2011 2013 0 2013 2038 0 2038 2008 0
		 2014 2013 1 2011 2023 0 2014 2023 0 2015 2013 0 2014 2016 0 2016 2015 0 2016 2017 0
		 2019 2017 0 2015 2019 0 2018 2017 0 2016 2024 0 2018 2024 0 2018 2020 0 2020 2019 1
		 2021 2022 0 2022 2014 0 2023 2021 0 2012 2021 0 718 2019 1 2020 718 1 2020 719 0
		 2024 2041 1 2041 2020 0 2041 745 1 722 2025 0 2035 2025 1 2035 721 0 724 2026 1 2026 2025 1
		 726 2027 0 2027 2026 1 2010 2027 1 2030 2028 1 2028 2029 0 2034 2029 0 2030 2034 1
		 2031 2028 0 2030 2032 1 2032 2031 0 2033 2034 0 2034 2025 1;
	setAttr ".ed[3818:3983]" 2033 2026 1 2029 2035 0 2036 2035 1 2028 2036 1 2036 738 1
		 2019 2036 1 2009 2037 0 2037 2027 0 2037 2033 0 2032 2038 0 2015 2032 0 2031 2019 0
		 2024 2022 0 2009 2039 1 2039 2033 1 2039 2030 1 2038 2039 1 2012 2040 0 2022 2040 1
		 2040 743 1 2040 2041 0 2042 747 0 748 2043 0 2043 2042 1 2044 2043 0 2044 761 0 2045 2046 0
		 2046 753 1 754 2045 0 2047 2046 0 2045 2048 0 2048 2047 1 2049 2047 0 2048 2050 0
		 2050 2049 1 2051 2049 0 2050 2052 0 2052 2051 1 2043 2051 0 2052 2042 0 762 2053 1
		 2053 2044 0 764 2054 1 2054 2053 0 2055 2054 0 767 2055 1 2056 2055 0 769 2056 0
		 2046 2056 0 2047 2055 1 2049 2054 1 2051 2053 1 770 2050 1 772 2048 1 771 2052 1
		 2057 2058 0 2058 2059 0 2059 2060 0 2060 2057 0 2061 2062 0 2062 2058 0 2057 2061 0
		 2061 2063 0 2063 2064 0 2064 2062 0 2060 2063 0 2059 2064 0 2065 2066 0 2066 2067 0
		 2067 2068 0 2068 2065 0 2069 2070 0 2070 2066 0 2065 2069 0 2069 2071 0 2071 2072 0
		 2072 2070 0 2068 2071 0 2067 2072 0 2075 2073 0 2073 2074 0 2074 2076 0 2076 2075 0
		 2077 2075 0 2076 2078 0 2078 2077 0 2079 2077 0 2078 2080 0 2080 2079 0 2081 2079 0
		 2080 2082 0 2082 2081 0 2073 2081 0 2082 2074 0 2078 2074 1 2075 2079 1 2083 2084 0
		 2084 2085 0 2085 2086 0 2086 2083 0 2087 2088 0 2088 2084 0 2083 2087 0 2087 2089 0
		 2089 2090 0 2090 2088 0 2086 2089 0 2085 2090 0 2091 2092 0 2092 2093 0 2110 2093 0
		 2091 2110 1 2094 2095 0 2095 2096 0 2096 2113 0 2094 2113 1 2097 2098 0 2098 2091 0
		 2097 2110 0 2099 2100 0 2100 2101 0 2101 2102 1 2102 2099 0 2103 2102 0 2101 2114 0
		 2114 2103 0 2104 2105 0 2105 2106 0 2106 2107 1 2107 2104 0 2106 2108 0 2108 2109 0
		 2109 2107 0 2093 2095 0 2094 2110 1 2112 2094 0 2112 2097 0 2092 2096 0 2111 2112 0
		 2113 2111 0 2101 2091 1 2098 2114 1 2100 2092 1 2100 2108 0 2108 2096 1 2113 2106 1
		 2111 2105 1 2109 2099 0 2102 2107 1 2111 2098 0 2105 2114 0 2104 2103 0 2115 2116 0
		 2116 2117 0 2134 2117 0 2115 2134 1 2118 2119 0 2119 2120 0 2120 2137 0 2118 2137 1
		 2121 2122 0 2122 2115 0 2121 2134 0 2123 2124 0 2124 2125 0 2125 2126 1;
	setAttr ".ed[3984:4149]" 2126 2123 0 2127 2126 0 2125 2138 0 2138 2127 0 2128 2129 0
		 2129 2130 0 2130 2131 1 2131 2128 0 2130 2132 0 2132 2133 0 2133 2131 0 2117 2119 0
		 2118 2134 1 2136 2118 0 2136 2121 0 2116 2120 0 2135 2136 0 2137 2135 0 2125 2115 1
		 2122 2138 1 2124 2116 1 2124 2132 0 2132 2120 1 2137 2130 1 2135 2129 1 2133 2123 0
		 2126 2131 1 2135 2122 0 2129 2138 0 2128 2127 0 2139 2140 0 2140 2141 0 2162 2141 0
		 2139 2162 1 2142 2143 0 2143 2144 0 2144 2152 0 2142 2152 1 2145 2146 0 2146 2139 0
		 2145 2162 0 2147 2148 0 2148 2142 0 2147 2152 0 2146 2149 1 2149 2150 0 2150 2139 1
		 2151 2147 1 2152 2161 1 2151 2161 0 2154 2153 0 2153 2150 0 2150 2156 1 2154 2156 0
		 2154 2155 0 2160 2155 0 2153 2160 0 2156 2157 1 2157 2155 0 2158 2157 0 2159 2156 0
		 2158 2159 0 2149 2159 0 2161 2157 1 2161 2160 0 2158 2151 0 2141 2143 0 2142 2162 1
		 2148 2145 0 2140 2144 0 2153 2140 1 2160 2144 1 2147 2146 0 2151 2149 0 2163 2164 0
		 2164 2165 0 2165 2166 0 2166 2163 0 2163 2167 0 2167 2168 0 2168 2164 0 2169 2168 0
		 2176 2167 0 2169 2176 0 2170 2171 0 2171 2172 0 2172 2169 0 2169 2170 0 2172 2173 0
		 2173 2168 0 2173 2165 0 2173 2174 0 2174 2166 0 2175 2174 0 2175 2172 0 2174 2167 0
		 2175 2176 0 2177 2176 0 2175 2178 0 2178 2177 0 2171 2178 0 2177 2170 0 2179 2180 0
		 2180 2181 0 2181 2182 0 2182 2179 0 2180 2183 0 2183 2184 0 2184 2181 0 2183 2185 0
		 2185 2186 0 2186 2184 0 2185 2179 0 2182 2186 0 2187 2188 0 2188 2189 1 2189 2190 0
		 2190 2187 0 2191 2192 0 2192 2193 0 2193 2194 0 2194 2191 0 2195 2196 0 2196 2197 1
		 2229 2197 0 2195 2229 0 2198 2199 0 2199 2200 1 2200 2201 0 2201 2198 1 2202 2203 0
		 2203 2204 1 2204 2205 0 2205 2202 1 2208 2206 1 2206 2207 0 2207 2211 0 2208 2211 0
		 2209 2206 0 2208 2210 0 2210 2209 0 2212 2208 0 2221 2211 0 2212 2221 0 2212 2213 0
		 2213 2210 0 2213 2214 1 2214 2215 0 2215 2210 1 2214 2216 0 2216 2217 1 2217 2215 0
		 2216 2218 0 2218 2219 1 2219 2217 0 2218 2220 0 2263 2220 1 2263 2219 0 2222 2212 1
		 2221 2247 0 2247 2222 0 2222 2223 0 2223 2213 0 2215 2224 0 2224 2209 0 2217 2225 1;
	setAttr ".ed[4150:4315]" 2225 2224 0 2219 2226 1 2226 2225 0 2227 2226 0 2219 2227 0
		 2228 2229 0 2229 2202 1 2202 2228 1 2230 2228 0 2202 2220 0 2220 2230 1 2231 2230 0
		 2218 2231 1 2218 2232 1 2232 2231 0 2216 2233 1 2233 2232 0 2214 2234 0 2234 2233 0
		 2223 2234 0 2235 2236 0 2236 2237 0 2237 2238 1 2238 2235 0 2237 2239 0 2239 2240 1
		 2240 2238 0 2239 2241 0 2241 2242 1 2242 2240 0 2241 2243 0 2243 2244 1 2244 2242 0
		 2243 2190 0 2190 2245 1 2245 2244 0 2189 2246 0 2246 2245 0 2199 2248 1 2248 2249 0
		 2263 2249 1 2199 2263 0 2191 2248 0 2198 2191 1 2198 2192 0 2250 2204 0 2203 2197 0
		 2197 2250 1 2251 2252 0 2252 2242 1 2242 2251 1 2253 2251 0 2244 2253 1 2254 2253 0
		 2245 2254 0 2252 2255 0 2255 2240 1 2255 2256 0 2256 2238 1 2256 2194 0 2194 2238 1
		 2193 2235 0 2193 2196 0 2196 2236 0 2195 2257 0 2257 2237 1 2237 2195 1 2257 2258 0
		 2258 2239 1 2258 2259 0 2259 2241 1 2259 2260 0 2260 2241 1 2260 2261 0 2261 2243 1
		 2261 2187 0 2188 2262 0 2262 2246 1 2262 2254 0 2192 2197 1 2258 2230 1 2231 2259 0
		 2257 2228 0 2232 2260 0 2233 2261 1 2234 2187 1 2223 2188 0 2223 2209 0 2209 2262 1
		 2222 2206 0 2252 2227 0 2227 2249 0 2249 2255 1 2251 2226 0 2253 2225 1 2254 2224 1
		 2205 2200 0 2199 2202 1 2201 2264 0 2264 2192 1 2264 2250 0 2200 2265 0 2265 2266 0
		 2266 2201 1 2266 2267 0 2267 2264 0 2205 2268 0 2268 2265 0 2268 2269 0 2269 2266 0
		 2270 2269 0 2267 2270 0 2250 2270 0 2269 2204 1 2248 2256 0 2247 2207 0 2271 2272 0
		 2272 2273 1 2280 2273 1 2271 2280 0 2274 2275 0 2275 2276 1 2276 2277 0 2277 2274 0
		 2278 2279 0 2279 2271 0 2280 2278 1 2281 2282 1 2282 2283 0 2283 2284 0 2284 2281 0
		 2285 2286 1 2286 2287 0 2287 2332 1 2285 2332 0 2288 2289 0 2289 2277 0 2276 2288 1
		 2272 2290 0 2294 2290 0 2273 2294 1 2291 2292 0 2292 2276 0 2275 2291 0 2293 2294 1
		 2290 2295 0 2295 2293 0 2281 2296 0 2296 2297 0 2297 2282 0 2298 2286 0 2377 2285 0
		 2298 2377 1 2292 2299 0 2299 2288 0 2300 2301 0 2301 2302 0 2302 2303 1 2303 2300 1
		 2302 2304 0 2304 2305 0 2305 2303 1 2307 2308 1 2308 2306 1 2306 2328 1 2328 2307 1;
	setAttr ".ed[4316:4481]" 2309 2306 1 2308 2310 1 2310 2309 1 2311 2309 1 2310 2312 0
		 2312 2311 0 2313 2314 0 2314 2315 0 2315 2316 1 2316 2313 0 2315 2317 0 2317 2318 0
		 2318 2316 0 2301 2313 0 2316 2302 1 2318 2304 0 2319 2320 0 2320 2321 1 2321 2322 1
		 2322 2319 0 2323 2322 0 2321 2346 1 2346 2323 1 2324 2317 0 2315 2325 1 2325 2324 0
		 2315 2326 0 2326 2319 1 2319 2325 0 2326 2327 1 2327 2320 1 2314 2326 0 2326 2280 0
		 2273 2327 1 2305 2310 0 2308 2303 1 2307 2300 0 2284 2307 0 2328 2281 1 2329 2330 0
		 2330 2312 0 2310 2329 0 2331 2278 0 2326 2331 0 2334 2332 0 2332 2333 0 2333 2335 0
		 2335 2334 1 2335 2324 1 2324 2323 1 2323 2334 0 2335 2336 0 2336 2324 0 2307 2337 1
		 2337 2300 1 2337 2338 0 2338 2301 1 2338 2339 0 2339 2313 1 2339 2340 0 2340 2314 0
		 2310 2341 1 2341 2329 0 2305 2341 1 2342 2341 0 2304 2342 1 2343 2342 0 2318 2343 1
		 2344 2343 0 2317 2344 1 2336 2344 0 2340 2331 0 2307 2345 0 2345 2337 0 2283 2345 0
		 2325 2322 1 2346 2347 1 2347 2334 1 2347 2285 1 2330 2348 0 2348 2311 1 2279 2349 0
		 2349 2272 1 2288 2350 1 2350 2333 0 2333 2289 1 2287 2289 0 2287 2274 0 2286 2275 1
		 2353 2351 0 2351 2352 0 2352 2354 1 2354 2353 1 2355 2353 0 2354 2356 1 2356 2355 0
		 2311 2357 0 2357 2358 0 2358 2309 1 2358 2359 1 2359 2306 1 2359 2360 1 2328 2360 1
		 2363 2361 0 2361 2362 0 2362 2364 0 2364 2363 1 2365 2363 0 2364 2366 0 2366 2365 0
		 2362 2351 0 2353 2364 1 2355 2366 0 2321 2367 1 2367 2368 0 2346 2368 1 2369 2367 0
		 2320 2369 0 2370 2369 1 2327 2370 1 2371 2369 0 2370 2363 0 2363 2371 1 2372 2371 0
		 2365 2372 0 2370 2361 0 2294 2370 0 2358 2356 0 2354 2359 1 2352 2360 0 2360 2296 0
		 2373 2358 0 2357 2374 0 2374 2373 0 2375 2370 0 2293 2375 0 2376 2377 0 2377 2378 0
		 2378 2379 1 2379 2376 0 2372 2379 1 2378 2368 0 2368 2372 1 2372 2380 0 2380 2379 0
		 2361 2381 0 2381 2382 0 2382 2362 1 2382 2383 0 2383 2351 1 2383 2384 0 2384 2352 1
		 2384 2360 1 2373 2385 0 2385 2358 1 2385 2356 1 2385 2386 0 2386 2355 1 2386 2387 0
		 2387 2366 1 2387 2388 0 2388 2365 1 2388 2380 0 2375 2381 0 2384 2389 0 2389 2360 0;
	setAttr ".ed[4482:4647]" 2389 2297 0 2367 2371 1 2347 2378 1 2348 2374 0 2349 2295 0
		 2376 2299 1 2299 2298 0 2376 2350 0 2291 2298 0 2390 2391 0 2391 2392 0 2392 2393 0
		 2393 2390 0 2396 2394 0 2394 2395 0 2395 2399 0 2396 2399 0 2397 2394 0 2396 2398 0
		 2398 2397 0 2400 2396 0 2402 2399 0 2400 2402 0 2400 2401 0 2401 2398 0 2403 2400 0
		 2402 2405 0 2403 2405 0 2403 2404 0 2404 2401 0 2394 2403 0 2405 2395 0 2397 2404 0
		 2398 2406 0 2406 2407 0 2407 2397 0 2406 2408 0 2408 2409 1 2409 2407 0 2410 2409 0
		 2413 2408 0 2410 2413 1 2401 2411 0 2411 2406 0 2411 2412 0 2412 2408 1 2417 2412 0
		 2413 2417 1 2404 2414 0 2414 2411 0 2414 2415 0 2415 2412 1 2415 2416 0 2416 2417 1
		 2416 2418 0 2418 2419 1 2419 2417 0 2418 2420 0 2420 2421 1 2421 2419 0 2422 2421 0
		 2420 2426 0 2422 2426 0 2407 2404 1 2407 2414 0 2409 2415 0 2416 2410 1 2390 2423 0
		 2423 2424 0 2424 2391 0 2425 2424 0 2427 2423 0 2425 2427 1 2424 2422 0 2422 2392 0
		 2425 2421 0 2426 2393 0 2426 2423 1 2420 2427 1 2429 2428 1 2428 2425 0 2427 2429 0
		 2413 2428 0 2429 2410 0 2428 2419 1 2418 2429 1 2432 2430 0 2430 2431 0 2431 2433 0
		 2433 2432 1 2434 2432 0 2433 2435 0 2435 2434 1 2436 2434 0 2435 2437 0 2437 2436 0
		 2436 2438 0 2438 2439 0 2439 2434 1 2439 2440 0 2440 2432 0 2440 2441 0 2441 2430 0
		 2442 2441 0 2431 2442 0 2440 2443 1 2443 2442 0 2439 2444 1 2444 2443 0 2438 2445 0
		 2445 2444 0 2445 2437 0 2435 2444 0 2433 2443 0 2446 2447 0 2447 2448 0 2448 2449 0
		 2449 2446 0 2452 2450 0 2450 2451 0 2451 2455 0 2452 2455 0 2453 2450 0 2452 2454 0
		 2454 2453 0 2456 2452 0 2458 2455 0 2456 2458 0 2456 2457 0 2457 2454 0 2459 2456 0
		 2458 2461 0 2459 2461 0 2459 2460 0 2460 2457 0 2450 2459 0 2461 2451 0 2453 2460 0
		 2454 2462 0 2462 2463 0 2463 2453 0 2462 2464 0 2464 2465 1 2465 2463 0 2466 2465 0
		 2469 2464 0 2466 2469 1 2457 2467 0 2467 2462 0 2467 2468 0 2468 2464 1 2473 2468 0
		 2469 2473 1 2460 2470 0 2470 2467 0 2470 2471 0 2471 2468 1 2471 2472 0 2472 2473 1
		 2472 2474 0 2474 2475 1 2475 2473 0 2474 2476 0 2476 2477 1 2477 2475 0 2478 2477 0;
	setAttr ".ed[4648:4813]" 2476 2482 0 2478 2482 0 2463 2460 1 2463 2470 0 2465 2471 0
		 2472 2466 1 2446 2479 0 2479 2480 0 2480 2447 0 2481 2480 0 2483 2479 0 2481 2483 1
		 2480 2478 0 2478 2448 0 2481 2477 0 2482 2449 0 2482 2479 1 2476 2483 1 2485 2484 1
		 2484 2481 0 2483 2485 0 2469 2484 0 2485 2466 0 2484 2475 1 2474 2485 1 2488 2486 0
		 2486 2487 0 2487 2489 0 2489 2488 1 2490 2488 0 2489 2491 0 2491 2490 1 2492 2490 0
		 2491 2493 0 2493 2492 0 2492 2494 0 2494 2495 0 2495 2490 1 2495 2496 0 2496 2488 0
		 2496 2497 0 2497 2486 0 2498 2497 0 2487 2498 0 2496 2499 1 2499 2498 0 2495 2500 1
		 2500 2499 0 2494 2501 0 2501 2500 0 2501 2493 0 2491 2500 0 2489 2499 0 2502 2503 0
		 2503 2504 0 2525 2504 0 2502 2525 1 2505 2506 0 2506 2507 0 2507 2515 0 2505 2515 1
		 2508 2509 0 2509 2502 0 2508 2525 0 2510 2511 0 2511 2505 0 2510 2515 0 2509 2512 1
		 2512 2513 0 2513 2502 1 2514 2510 1 2515 2524 1 2514 2524 0 2517 2516 0 2516 2513 0
		 2513 2519 1 2517 2519 0 2517 2518 0 2523 2518 0 2516 2523 0 2519 2520 1 2520 2518 0
		 2521 2520 0 2522 2519 0 2521 2522 0 2512 2522 0 2524 2520 1 2524 2523 0 2521 2514 0
		 2504 2506 0 2505 2525 1 2511 2508 0 2503 2507 0 2516 2503 1 2523 2507 1 2510 2509 0
		 2514 2512 0 2526 2527 0 2527 2528 0 2528 2529 0 2529 2526 0 2527 2530 0 2530 2531 0
		 2531 2528 0 2530 2532 0 2532 2533 0 2533 2531 0 2532 2526 0 2529 2533 0 2534 2535 0
		 2535 2536 0 2536 2537 0 2537 2534 0 2538 2539 0 2539 2535 0 2534 2538 0 2538 2540 0
		 2540 2541 0 2541 2539 0 2537 2540 0 2536 2541 0 2544 2542 0 2542 2543 0 2543 2545 0
		 2545 2544 0 2546 2544 0 2545 2547 0 2547 2546 0 2548 2546 0 2547 2549 0 2549 2548 0
		 2550 2548 0 2549 2551 0 2551 2550 0 2542 2550 0 2551 2543 0 2547 2543 1 2544 2548 1
		 2552 2553 0 2553 2554 0 2554 2555 0 2555 2552 0 2556 2557 0 2557 2553 0 2552 2556 0
		 2556 2558 0 2558 2559 0 2559 2557 0 2555 2558 0 2554 2559 0 2560 2561 0 2561 2562 0
		 2579 2562 0 2560 2579 1 2563 2564 0 2564 2565 0 2565 2582 0 2563 2582 1 2566 2567 0
		 2567 2560 0 2566 2579 0 2568 2569 0 2569 2570 0 2570 2571 1 2571 2568 0 2572 2571 0;
	setAttr ".ed[4814:4897]" 2570 2583 0 2583 2572 0 2573 2574 0 2574 2575 0 2575 2576 1
		 2576 2573 0 2575 2577 0 2577 2578 0 2578 2576 0 2562 2564 0 2563 2579 1 2581 2563 0
		 2581 2566 0 2561 2565 0 2580 2581 0 2582 2580 0 2570 2560 1 2567 2583 1 2569 2561 1
		 2569 2577 0 2577 2565 1 2582 2575 1 2580 2574 1 2578 2568 0 2571 2576 1 2580 2567 0
		 2574 2583 0 2573 2572 0 2584 2585 0 2585 2586 0 2603 2586 0 2584 2603 1 2587 2588 0
		 2588 2589 0 2589 2606 0 2587 2606 1 2590 2591 0 2591 2584 0 2590 2603 0 2592 2593 0
		 2593 2594 0 2594 2595 1 2595 2592 0 2596 2595 0 2594 2607 0 2607 2596 0 2597 2598 0
		 2598 2599 0 2599 2600 1 2600 2597 0 2599 2601 0 2601 2602 0 2602 2600 0 2586 2588 0
		 2587 2603 1 2605 2587 0 2605 2590 0 2585 2589 0 2604 2605 0 2606 2604 0 2594 2584 1
		 2591 2607 1 2593 2585 1 2593 2601 0 2601 2589 1 2606 2599 1 2604 2598 1 2602 2592 0
		 2595 2600 1 2604 2591 0 2598 2607 0 2597 2596 0 2608 2609 0 2609 2610 0 2610 2611 0
		 2611 2608 0 2612 2613 0 2613 2609 0 2608 2612 0 2612 2614 0 2614 2615 0 2615 2613 0
		 2611 2614 0 2610 2615 0;
	setAttr -s 2398 -ch 9412 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 -74 -9
		mu 0 4 0 1 2 3
		f 4 2 3 4 5
		mu 0 4 4 5 6 7
		f 4 6 7 8 9
		mu 0 4 8 9 0 3
		f 4 10 11 12 13
		mu 0 4 10 11 12 13
		f 4 14 15 133 -125
		mu 0 4 14 15 16 17
		f 4 16 17 -5 18
		mu 0 4 18 19 7 6
		f 4 -2 19 -25 -173
		mu 0 4 2 1 20 21
		f 4 20 21 -4 22
		mu 0 4 22 23 6 5
		f 4 23 24 25 26
		mu 0 4 24 25 26 27
		f 4 27 28 29 -11
		mu 0 4 10 28 29 11
		f 4 30 -15 -216 -224
		mu 0 4 30 15 14 31
		f 4 -19 -22 31 32
		mu 0 4 18 6 32 33
		f 4 33 34 35 36
		mu 0 4 34 35 36 37
		f 4 -36 37 38 39
		mu 0 4 37 36 38 39
		f 4 40 41 78 79
		mu 0 4 40 41 42 43
		f 4 42 -42 43 44
		mu 0 4 44 42 41 45
		f 4 45 -45 46 47
		mu 0 4 46 44 45 47
		f 4 48 49 50 51
		mu 0 4 48 49 50 51
		f 4 -51 52 53 54
		mu 0 4 51 50 52 53
		f 4 55 -52 56 -35
		mu 0 4 35 48 51 36
		f 4 -57 -55 57 -38
		mu 0 4 36 51 53 38
		f 4 58 59 60 61
		mu 0 4 54 55 56 57
		f 4 62 -61 119 120
		mu 0 4 58 57 56 59
		f 4 63 -53 64 65
		mu 0 4 60 52 50 61
		f 4 -65 66 67 68
		mu 0 4 61 50 62 54
		f 4 -59 -68 70 71
		mu 0 4 55 54 62 63
		f 3 -50 69 -67
		mu 0 3 50 49 62
		f 4 -71 72 73 74
		mu 0 4 63 62 3 2
		f 4 75 -44 76 -40
		mu 0 4 39 45 41 37
		f 4 -77 -41 77 -37
		mu 0 4 37 41 40 34
		f 4 80 -80 81 -14
		mu 0 4 13 40 43 10
		f 4 82 83 -47 84
		mu 0 4 64 65 47 45
		f 4 85 -10 -73 86
		mu 0 4 66 8 3 62
		f 4 88 87 89 90
		mu 0 4 67 17 68 69
		f 4 -91 91 117 116
		mu 0 4 67 69 60 58
		f 3 -92 92 93
		mu 0 3 60 69 70
		f 3 -78 94 95
		mu 0 3 34 40 71
		f 4 -34 -96 96 97
		mu 0 4 35 34 71 72
		f 4 -56 -98 98 99
		mu 0 4 48 35 72 73
		f 4 -49 -100 100 101
		mu 0 4 49 48 73 74
		f 3 -85 102 103
		mu 0 3 64 45 75
		f 3 -103 -76 104
		mu 0 3 75 45 39
		f 4 105 -105 -39 106
		mu 0 4 76 75 39 38
		f 4 107 -107 -58 108
		mu 0 4 77 76 38 53
		f 4 109 -109 -54 110
		mu 0 4 78 77 53 52
		f 4 111 -111 -64 -94
		mu 0 4 70 78 52 60
		f 4 112 -87 -70 -102
		mu 0 4 74 66 62 49
		f 3 113 114 -95
		mu 0 3 40 79 71
		f 4 115 -114 -81 -13
		mu 0 4 12 79 40 13
		f 4 -63 -118 -66 118
		mu 0 4 57 58 60 61
		f 3 -119 -69 -62
		mu 0 3 57 61 54
		f 4 -117 -121 121 122
		mu 0 4 67 58 59 80
		f 4 -89 -123 123 124
		mu 0 4 17 67 80 14
		f 4 -84 125 126 -48
		mu 0 4 47 65 81 46
		f 4 -8 127 128 -1
		mu 0 4 0 9 82 1
		f 4 129 130 131 -17
		mu 0 4 18 83 68 19
		f 4 132 -132 -88 -134
		mu 0 4 16 19 68 17
		f 4 -133 134 -6 -18
		mu 0 4 19 16 4 7
		f 4 -16 135 -3 -135
		mu 0 4 16 15 5 4
		f 4 137 136 138 139
		mu 0 4 84 85 86 87
		f 4 140 -140 141 142
		mu 0 4 88 89 90 91
		f 4 143 144 145 -46
		mu 0 4 46 92 93 44
		f 4 -146 146 147 -43
		mu 0 4 44 94 95 42
		f 4 -148 148 -177 -79
		mu 0 4 42 96 97 43
		f 4 150 149 151 152
		mu 0 4 98 99 100 101
		f 4 153 -153 154 155
		mu 0 4 102 103 104 105
		f 4 -152 156 -138 157
		mu 0 4 106 107 108 109
		f 4 -155 -158 -141 158
		mu 0 4 110 111 112 113
		f 4 160 159 -218 -120
		mu 0 4 56 114 115 59
		f 4 161 -161 -60 162
		mu 0 4 116 117 56 55
		f 4 163 -163 -72 170
		mu 0 4 118 119 55 63
		f 4 164 -164 165 166
		mu 0 4 120 121 122 123
		f 4 167 -167 -154 168
		mu 0 4 124 125 126 127
		f 3 169 -151 -166
		mu 0 3 128 129 130
		f 4 171 -171 -75 172
		mu 0 4 131 132 63 2
		f 4 -147 173 -142 174
		mu 0 4 133 134 135 136
		f 4 -149 -175 -139 175
		mu 0 4 137 138 139 140
		f 4 -28 -82 176 177
		mu 0 4 141 10 43 142
		f 4 178 -145 179 180
		mu 0 4 143 144 145 146
		f 4 181 -172 -24 182
		mu 0 4 147 148 149 150
		f 4 183 184 185 186
		mu 0 4 151 152 153 154
		f 4 187 -186 212 213
		mu 0 4 155 156 157 158
		f 3 -188 188 189
		mu 0 3 159 160 161
		f 4 190 191 192 -150
		mu 0 4 162 163 164 165
		f 4 -193 193 194 -157
		mu 0 4 166 167 168 169
		f 4 -195 195 196 -137
		mu 0 4 170 171 172 173
		f 3 -197 197 -176
		mu 0 3 174 175 176
		f 3 -179 198 199
		mu 0 3 177 178 179
		f 3 -200 200 -174
		mu 0 3 180 181 182
		f 4 -201 201 202 -143
		mu 0 4 183 184 185 186
		f 4 -203 203 204 -159
		mu 0 4 187 188 189 190
		f 4 -205 205 206 -156
		mu 0 4 191 192 193 194
		f 4 -207 207 -189 -169
		mu 0 4 195 196 197 198
		f 4 -191 -170 -182 208
		mu 0 4 199 200 201 202
		f 3 209 210 -198
		mu 0 3 203 204 205
		f 4 -29 -178 -211 211
		mu 0 4 206 207 208 209
		f 4 -214 -160 214 -168
		mu 0 4 210 211 212 213
		f 3 -215 -162 -165
		mu 0 3 214 215 216
		f 4 215 -124 216 -185
		mu 0 4 217 14 80 218
		f 4 -217 -122 217 -213
		mu 0 4 219 80 59 220
		f 4 -144 -127 218 -180
		mu 0 4 221 46 81 222
		f 4 -20 -129 219 -26
		mu 0 4 223 1 82 224
		f 4 221 220 223 -184
		mu 0 4 225 226 227 228
		f 4 -33 -222 222 -130
		mu 0 4 18 229 230 83
		f 4 -32 -21 224 -221
		mu 0 4 231 232 233 234
		f 4 -225 -23 -136 -31
		mu 0 4 235 236 5 15
		f 4 225 226 228 227
		mu 0 4 237 238 239 240
		f 4 229 230 231 232
		mu 0 4 241 242 243 244
		f 4 233 234 -318 -353
		mu 0 4 245 246 247 248
		f 4 235 236 237 238
		mu 0 4 249 250 251 252
		f 4 239 240 241 242
		mu 0 4 253 254 255 256
		f 4 244 243 308 -249
		mu 0 4 257 258 259 260
		f 4 245 -245 246 247
		mu 0 4 261 258 257 262
		f 4 249 248 -390 -263
		mu 0 4 263 257 260 264
		f 4 -247 -250 250 251
		mu 0 4 262 257 265 266
		f 4 -252 252 253 254
		mu 0 4 262 267 268 269
		f 4 -254 255 256 257
		mu 0 4 270 268 271 272
		f 4 -257 258 259 260
		mu 0 4 273 271 274 275
		f 4 -260 261 -369 369
		mu 0 4 276 274 277 278
		f 4 263 262 306 307
		mu 0 4 279 280 281 282
		f 4 -251 -264 264 265
		mu 0 4 283 284 285 286
		f 4 -248 -255 266 267
		mu 0 4 261 262 287 288
		f 4 -267 -258 268 269
		mu 0 4 288 289 290 291
		f 4 -269 -261 270 271
		mu 0 4 291 292 293 294
		f 3 272 -271 392
		mu 0 3 295 294 296
		f 3 273 274 275
		mu 0 3 297 298 299
		f 4 276 -276 277 278
		mu 0 4 300 297 301 277
		f 4 279 -279 -262 280
		mu 0 4 302 300 277 274
		f 3 -281 281 282
		mu 0 3 303 274 304
		f 4 -282 -259 283 284
		mu 0 4 305 274 271 306
		f 4 -284 -256 285 286
		mu 0 4 307 271 268 308
		f 4 -286 -253 -266 287
		mu 0 4 309 268 310 311
		f 4 288 289 290 291
		mu 0 4 312 313 314 315
		f 4 -291 292 293 294
		mu 0 4 315 314 316 317
		f 4 -294 295 296 297
		mu 0 4 317 316 318 319
		f 4 -297 298 299 300
		mu 0 4 319 318 320 321
		f 4 -300 301 302 303
		mu 0 4 321 320 322 323
		f 4 -303 -229 304 305
		mu 0 4 323 322 324 325
		f 4 310 309 -391 -368
		mu 0 4 250 326 327 278
		f 4 311 -311 -236 312
		mu 0 4 241 328 250 249
		f 3 -313 313 -230
		mu 0 3 241 249 242
		f 4 314 -241 315 316
		mu 0 4 329 330 331 332
		f 4 -316 -240 -275 317
		mu 0 4 333 334 335 336
		f 3 318 319 320
		mu 0 3 337 338 339
		f 4 321 -321 -301 322
		mu 0 4 340 337 339 341
		f 4 323 -323 -304 324
		mu 0 4 342 340 341 343
		f 4 -320 325 326 -298
		mu 0 4 339 338 344 345
		f 4 -327 327 328 -295
		mu 0 4 345 344 346 347
		f 3 -329 329 330
		mu 0 3 347 346 244
		f 4 -292 -331 -232 331
		mu 0 4 348 347 244 243
		f 4 332 333 -289 -332
		mu 0 4 243 349 350 348
		f 3 334 335 336
		mu 0 3 351 352 353
		f 4 -234 -337 -290 -334
		mu 0 4 354 355 356 357
		f 4 -336 337 338 -293
		mu 0 4 358 352 359 360
		f 4 -339 339 340 -296
		mu 0 4 361 362 363 364
		f 3 -341 341 342
		mu 0 3 364 363 365
		f 4 -299 -343 343 344
		mu 0 4 366 364 365 367
		f 4 -302 -345 345 -228
		mu 0 4 240 366 367 237
		f 4 346 347 -305 -227
		mu 0 4 238 368 369 239
		f 4 348 -325 -306 -348
		mu 0 4 370 342 343 371
		f 4 349 -235 -333 -231
		mu 0 4 242 372 373 243
		f 4 350 -280 353 -340
		mu 0 4 374 300 375 363
		f 4 -277 -351 -338 351
		mu 0 4 297 300 376 352
		f 4 -274 -352 -335 352
		mu 0 4 377 297 352 378
		f 4 -342 -354 -283 354
		mu 0 4 365 363 379 380
		f 4 -344 -355 -285 355
		mu 0 4 367 365 381 382
		f 4 -346 -356 -287 356
		mu 0 4 237 367 383 384
		f 4 -226 -357 -288 357
		mu 0 4 238 237 385 386
		f 4 -347 -358 358 359
		mu 0 4 387 238 388 261
		f 4 -246 -359 -265 387
		mu 0 4 258 261 389 390
		f 4 361 360 391 -326
		mu 0 4 338 295 391 344
		f 4 -273 -362 -319 362
		mu 0 4 294 295 338 337
		f 4 -272 -363 -322 363
		mu 0 4 291 294 337 340
		f 4 -270 -364 -324 364
		mu 0 4 288 291 340 342
		f 4 -268 -365 -349 -360
		mu 0 4 261 288 342 392
		f 4 365 -237 366 -243
		mu 0 4 393 251 250 394
		f 4 -367 367 368 -278
		mu 0 4 395 250 278 277
		f 4 -314 -239 370 371
		mu 0 4 242 249 252 396
		f 4 -350 -372 372 -317
		mu 0 4 397 242 398 329
		f 4 -238 373 374 375
		mu 0 4 252 251 399 400
		f 4 -371 -376 376 377
		mu 0 4 401 252 400 402
		f 4 -366 378 379 -374
		mu 0 4 251 403 404 399
		f 4 -380 380 381 -375
		mu 0 4 399 405 406 400
		f 4 -377 -382 -384 -386
		mu 0 4 402 400 407 408
		f 4 -315 382 383 384
		mu 0 4 409 329 410 411
		f 4 -242 -385 -381 -379
		mu 0 4 412 413 414 415
		f 4 -373 -378 385 -383
		mu 0 4 329 416 402 417
		f 4 386 -328 -392 -310
		mu 0 4 418 346 344 419
		f 4 -330 -387 -312 -233
		mu 0 4 244 346 420 241
		f 4 -388 -308 388 -244
		mu 0 4 258 421 422 259
		f 4 -389 -307 389 -309
		mu 0 4 259 423 424 260
		f 4 -393 -370 390 -361
		mu 0 4 295 296 278 425
		f 4 393 394 395 396
		mu 0 4 426 427 428 429
		f 4 -394 397 398 399
		mu 0 4 427 426 430 431
		f 4 400 -399 -413 -421
		mu 0 4 432 431 430 433
		f 4 401 402 403 404
		mu 0 4 434 435 436 432
		f 4 -404 405 406 -401
		mu 0 4 432 436 437 431
		f 4 -407 407 -395 -400
		mu 0 4 431 437 428 427
		f 4 -396 -408 408 409
		mu 0 4 438 428 437 439
		f 4 410 -409 -406 -419
		mu 0 4 440 439 437 436
		f 4 -397 -410 411 -398
		mu 0 4 426 429 439 430
		f 4 412 -412 -411 413
		mu 0 4 433 430 439 441
		f 4 414 -414 415 416
		mu 0 4 442 433 441 443
		f 4 417 -416 418 -403
		mu 0 4 435 444 440 436
		f 4 419 -405 420 -415
		mu 0 4 442 434 432 433
		f 4 -402 -420 -417 -418
		mu 0 4 435 434 442 443
		f 4 421 422 423 424
		mu 0 4 445 446 447 448
		f 4 425 426 -422 427
		mu 0 4 449 450 451 452
		f 4 428 429 430 -426
		mu 0 4 453 454 455 456
		f 4 -428 -425 431 -429
		mu 0 4 457 458 459 460
		f 4 -432 -424 432 -430
		mu 0 4 461 462 463 464
		f 4 433 434 435 436
		mu 0 4 465 466 467 468
		f 4 -434 437 438 439
		mu 0 4 466 465 469 470
		f 4 440 -439 -453 -461
		mu 0 4 471 470 469 472
		f 4 441 442 443 444
		mu 0 4 473 474 475 471
		f 4 -444 445 446 -441
		mu 0 4 471 475 476 470
		f 4 -447 447 -435 -440
		mu 0 4 470 476 467 466
		f 4 -436 -448 448 449
		mu 0 4 477 467 476 478
		f 4 450 -449 -446 -459
		mu 0 4 479 478 476 475
		f 4 -437 -450 451 -438
		mu 0 4 465 468 478 469
		f 4 452 -452 -451 453
		mu 0 4 472 469 478 480
		f 4 454 -454 455 456
		mu 0 4 481 472 480 482
		f 4 457 -456 458 -443
		mu 0 4 474 483 479 475
		f 4 459 -445 460 -455
		mu 0 4 481 473 471 472
		f 4 -442 -460 -457 -458
		mu 0 4 474 473 481 482
		f 4 461 462 463 464
		mu 0 4 484 485 486 487
		f 4 465 466 -462 467
		mu 0 4 488 489 490 491
		f 4 468 469 470 -466
		mu 0 4 492 493 494 495
		f 4 -468 -465 471 -469
		mu 0 4 492 484 487 493
		f 4 -472 -464 472 -470
		mu 0 4 493 487 486 494
		f 4 473 474 475 476
		mu 0 4 496 497 498 499
		f 4 477 478 479 -475
		mu 0 4 500 501 502 503
		f 4 480 481 482 -479
		mu 0 4 504 505 506 507
		f 4 483 -477 484 -482
		mu 0 4 508 509 510 511
		f 4 486 485 487 488
		mu 0 4 512 513 514 515
		f 4 489 -489 490 491
		mu 0 4 516 512 515 517
		f 4 492 -492 493 494
		mu 0 4 518 516 517 519
		f 4 495 -495 496 497
		mu 0 4 520 518 519 521
		f 4 498 -498 499 -486
		mu 0 4 522 520 521 523
		f 4 -497 -494 500 -500
		mu 0 4 524 525 526 527
		f 3 -501 -491 -488
		mu 0 3 527 526 528
		f 4 -499 -487 501 -496
		mu 0 4 520 522 512 518
		f 3 -502 -490 -493
		mu 0 3 518 512 516
		f 4 502 503 504 505
		mu 0 4 529 530 531 532
		f 4 506 507 -503 508
		mu 0 4 533 534 535 536
		f 4 509 510 511 -507
		mu 0 4 537 538 539 540
		f 4 -509 -506 512 -510
		mu 0 4 541 542 543 544
		f 4 -513 -505 513 -511
		mu 0 4 545 546 547 548
		f 4 514 515 -535 -537
		mu 0 4 549 550 551 552
		f 4 516 517 542 -541
		mu 0 4 553 554 555 556
		f 4 518 519 536 -536
		mu 0 4 557 558 559 560
		f 4 520 521 522 523
		mu 0 4 561 562 563 564
		f 4 524 -523 549 550
		mu 0 4 565 566 567 568
		f 4 525 526 527 528
		mu 0 4 569 570 571 572
		f 4 -528 529 530 531
		mu 0 4 573 574 575 576
		f 4 532 -517 533 534
		mu 0 4 577 578 579 580
		f 4 535 -534 -540 551
		mu 0 4 581 582 583 584
		f 4 537 -518 -533 -516
		mu 0 4 585 586 587 588
		f 4 538 539 540 541
		mu 0 4 589 590 591 592
		f 4 543 -520 553 -550
		mu 0 4 593 594 595 596
		f 4 -515 -544 -522 544
		mu 0 4 597 598 599 600
		f 4 545 546 -538 -545
		mu 0 4 601 602 603 604
		f 4 547 -527 -555 -542
		mu 0 4 605 606 607 608
		f 4 -530 -548 -543 -547
		mu 0 4 609 610 611 612
		f 4 548 -524 557 -532
		mu 0 4 613 614 615 616
		f 4 -521 -549 -531 -546
		mu 0 4 617 618 619 620
		f 4 -519 -552 -539 552
		mu 0 4 621 622 623 624
		f 4 -554 -553 554 555
		mu 0 4 625 626 627 628
		f 4 -556 -526 556 -551
		mu 0 4 629 630 631 632
		f 4 -525 -557 -529 -558
		mu 0 4 633 634 635 636
		f 4 558 559 -579 -581
		mu 0 4 637 638 639 640
		f 4 560 561 586 -585
		mu 0 4 641 642 643 644
		f 4 562 563 580 -580
		mu 0 4 645 646 637 640
		f 4 564 565 566 567
		mu 0 4 647 648 649 650
		f 4 568 -567 593 594
		mu 0 4 651 650 649 652
		f 4 569 570 571 572
		mu 0 4 653 654 655 656
		f 4 -572 573 574 575
		mu 0 4 656 655 657 658
		f 4 576 -561 577 578
		mu 0 4 639 642 641 640
		f 4 579 -578 -584 595
		mu 0 4 645 640 641 659
		f 4 581 -562 -577 -560
		mu 0 4 660 661 642 639
		f 4 582 583 584 585
		mu 0 4 662 663 641 644
		f 4 587 -564 597 -594
		mu 0 4 664 665 666 667
		f 4 -559 -588 -566 588
		mu 0 4 668 669 670 671
		f 4 589 590 -582 -589
		mu 0 4 672 673 674 675
		f 4 591 -571 -599 -586
		mu 0 4 676 677 678 679
		f 4 -574 -592 -587 -591
		mu 0 4 680 681 682 683
		f 4 592 -568 601 -576
		mu 0 4 658 647 650 656
		f 4 -565 -593 -575 -590
		mu 0 4 648 647 658 657
		f 4 -563 -596 -583 596
		mu 0 4 684 645 685 686
		f 4 -598 -597 598 599
		mu 0 4 687 688 689 690
		f 4 -600 -570 600 -595
		mu 0 4 652 654 653 651
		f 4 -569 -601 -573 -602
		mu 0 4 650 651 653 656
		f 4 602 603 605 604
		mu 0 4 691 692 693 694
		f 4 606 607 608 609
		mu 0 4 695 696 697 698
		f 4 610 611 -695 -730
		mu 0 4 699 700 701 702
		f 4 612 613 614 615
		mu 0 4 703 704 705 706
		f 4 616 617 618 619
		mu 0 4 707 708 709 710
		f 4 621 620 685 -626
		mu 0 4 711 712 713 714
		f 4 622 -622 623 624
		mu 0 4 715 712 711 716
		f 4 626 625 -767 -640
		mu 0 4 717 711 714 718
		f 4 -624 -627 627 628
		mu 0 4 716 711 719 720
		f 4 -629 629 630 631
		mu 0 4 716 721 722 723
		f 4 -631 632 633 634
		mu 0 4 724 722 725 726
		f 4 -634 635 636 637
		mu 0 4 727 725 728 729
		f 4 -637 638 -746 746
		mu 0 4 730 728 731 732
		f 4 640 639 683 684
		mu 0 4 733 734 735 736
		f 4 -628 -641 641 642
		mu 0 4 737 738 739 740
		f 4 -625 -632 643 644
		mu 0 4 715 716 741 742
		f 4 -644 -635 645 646
		mu 0 4 742 743 744 745
		f 4 -646 -638 647 648
		mu 0 4 745 746 747 748
		f 3 649 -648 769
		mu 0 3 749 748 750
		f 3 650 651 652
		mu 0 3 751 752 753
		f 4 653 -653 654 655
		mu 0 4 754 751 755 731
		f 4 656 -656 -639 657
		mu 0 4 756 754 731 728
		f 3 -658 658 659
		mu 0 3 757 728 758
		f 4 -659 -636 660 661
		mu 0 4 759 728 725 760
		f 4 -661 -633 662 663
		mu 0 4 761 725 722 762
		f 4 -663 -630 -643 664
		mu 0 4 763 722 764 765
		f 4 665 666 667 668
		mu 0 4 766 767 768 769
		f 4 -668 669 670 671
		mu 0 4 769 768 770 771
		f 4 -671 672 673 674
		mu 0 4 771 770 772 773
		f 4 -674 675 676 677
		mu 0 4 773 772 774 775
		f 4 -677 678 679 680
		mu 0 4 775 774 776 777
		f 4 -680 -606 681 682
		mu 0 4 777 776 778 779
		f 4 687 686 -768 -745
		mu 0 4 704 780 781 732
		f 4 688 -688 -613 689
		mu 0 4 695 782 704 703
		f 3 -690 690 -607
		mu 0 3 695 703 696
		f 4 691 -618 692 693
		mu 0 4 783 784 785 786
		f 4 -693 -617 -652 694
		mu 0 4 787 788 789 790
		f 3 695 696 697
		mu 0 3 791 792 793
		f 4 698 -698 -678 699
		mu 0 4 794 791 793 795
		f 4 700 -700 -681 701
		mu 0 4 796 794 795 797
		f 4 -697 702 703 -675
		mu 0 4 793 792 798 799
		f 4 -704 704 705 -672
		mu 0 4 799 798 800 801
		f 3 -706 706 707
		mu 0 3 801 800 698
		f 4 -669 -708 -609 708
		mu 0 4 802 801 698 697
		f 4 709 710 -666 -709
		mu 0 4 697 803 804 802
		f 3 711 712 713
		mu 0 3 805 806 807
		f 4 -611 -714 -667 -711
		mu 0 4 808 809 810 811
		f 4 -713 714 715 -670
		mu 0 4 812 806 813 814
		f 4 -716 716 717 -673
		mu 0 4 815 816 817 818
		f 3 -718 718 719
		mu 0 3 818 817 819
		f 4 -676 -720 720 721
		mu 0 4 820 818 819 821
		f 4 -679 -722 722 -605
		mu 0 4 694 820 821 691
		f 4 723 724 -682 -604
		mu 0 4 692 822 823 693
		f 4 725 -702 -683 -725
		mu 0 4 824 796 797 825
		f 4 726 -612 -710 -608
		mu 0 4 696 826 827 697
		f 4 727 -657 730 -717
		mu 0 4 828 754 829 817
		f 4 -654 -728 -715 728
		mu 0 4 751 754 830 806
		f 4 -651 -729 -712 729
		mu 0 4 831 751 806 832
		f 4 -719 -731 -660 731
		mu 0 4 819 817 833 834
		f 4 -721 -732 -662 732
		mu 0 4 821 819 835 836
		f 4 -723 -733 -664 733
		mu 0 4 691 821 837 838
		f 4 -603 -734 -665 734
		mu 0 4 692 691 839 840
		f 4 -724 -735 735 736
		mu 0 4 841 692 842 715
		f 4 -623 -736 -642 764
		mu 0 4 712 715 843 844
		f 4 738 737 768 -703
		mu 0 4 792 749 845 798
		f 4 -650 -739 -696 739
		mu 0 4 748 749 792 791
		f 4 -649 -740 -699 740
		mu 0 4 745 748 791 794
		f 4 -647 -741 -701 741
		mu 0 4 742 745 794 796
		f 4 -645 -742 -726 -737
		mu 0 4 715 742 796 846
		f 4 742 -614 743 -620
		mu 0 4 847 705 704 848
		f 4 -744 744 745 -655
		mu 0 4 849 704 732 731
		f 4 -691 -616 747 748
		mu 0 4 696 703 706 850
		f 4 -727 -749 749 -694
		mu 0 4 851 696 852 783
		f 4 -615 750 751 752
		mu 0 4 706 705 853 854
		f 4 -748 -753 753 754
		mu 0 4 855 706 854 856
		f 4 -743 755 756 -751
		mu 0 4 705 857 858 853
		f 4 -757 757 758 -752
		mu 0 4 853 859 860 854
		f 4 -754 -759 -761 -763
		mu 0 4 856 854 861 862
		f 4 -692 759 760 761
		mu 0 4 863 783 864 865
		f 4 -619 -762 -758 -756
		mu 0 4 866 867 868 869
		f 4 -750 -755 762 -760
		mu 0 4 783 870 856 871
		f 4 763 -705 -769 -687
		mu 0 4 872 800 798 873
		f 4 -707 -764 -689 -610
		mu 0 4 698 800 874 695
		f 4 -765 -685 765 -621
		mu 0 4 712 875 876 713
		f 4 -766 -684 766 -686
		mu 0 4 713 877 878 714
		f 4 -770 -747 767 -738
		mu 0 4 749 750 732 879
		f 4 770 771 -800 -802
		mu 0 4 880 881 882 883
		f 4 772 773 804 -804
		mu 0 4 884 885 886 887
		f 4 774 775 801 -801
		mu 0 4 888 889 890 891
		f 4 776 777 803 -782
		mu 0 4 892 893 894 895
		f 4 778 779 805 -776
		mu 0 4 896 897 898 899
		f 4 780 781 809 -795
		mu 0 4 900 901 902 903
		f 4 783 782 789 -786
		mu 0 4 904 905 906 907
		f 4 -784 784 -793 -808
		mu 0 4 908 909 910 911
		f 4 -785 785 786 787
		mu 0 4 912 913 914 915
		f 4 788 -787 -791 -814
		mu 0 4 916 917 918 919
		f 4 790 -790 -780 791
		mu 0 4 920 921 922 923
		f 4 792 -788 -796 796
		mu 0 4 924 925 926 927
		f 4 793 794 795 -789
		mu 0 4 928 929 930 931
		f 4 797 -773 798 799
		mu 0 4 932 933 934 935
		f 4 800 -799 -778 810
		mu 0 4 936 937 938 893
		f 4 802 -774 -798 -772
		mu 0 4 939 940 941 942
		f 4 -771 -806 -783 806
		mu 0 4 943 944 898 945
		f 4 807 808 -803 -807
		mu 0 4 946 947 948 949
		f 4 -797 -810 -805 -809
		mu 0 4 950 951 902 952
		f 4 -775 -811 -777 811
		mu 0 4 953 954 893 955
		f 4 -779 -812 -781 812
		mu 0 4 956 957 958 959
		f 4 -813 -794 813 -792
		mu 0 4 960 961 962 963
		f 4 814 815 -888 -823
		mu 0 4 964 965 966 967
		f 4 816 817 818 819
		mu 0 4 968 969 970 971
		f 4 820 821 822 823
		mu 0 4 972 973 964 967
		f 4 824 825 826 827
		mu 0 4 974 975 976 977
		f 4 828 829 947 -939
		mu 0 4 978 979 980 981
		f 4 830 831 -819 832
		mu 0 4 982 983 971 970
		f 4 -816 833 -839 -987
		mu 0 4 966 965 984 985
		f 4 834 835 -818 836
		mu 0 4 986 987 970 969
		f 4 837 838 839 840
		mu 0 4 988 989 990 991
		f 4 841 842 843 -825
		mu 0 4 974 992 993 975
		f 4 844 -829 -1030 -1038
		mu 0 4 994 979 978 995
		f 4 -833 -836 845 846
		mu 0 4 982 970 996 997
		f 4 847 848 849 850
		mu 0 4 998 999 1000 1001
		f 4 -850 851 852 853
		mu 0 4 1001 1000 1002 1003
		f 4 854 855 892 893
		mu 0 4 1004 1005 1006 1007
		f 4 856 -856 857 858
		mu 0 4 1008 1006 1005 1009
		f 4 859 -859 860 861
		mu 0 4 1010 1008 1009 1011
		f 4 862 863 864 865
		mu 0 4 1012 1013 1014 1015
		f 4 -865 866 867 868
		mu 0 4 1015 1014 1016 1017
		f 4 869 -866 870 -849
		mu 0 4 999 1012 1015 1000
		f 4 -871 -869 871 -852
		mu 0 4 1000 1015 1017 1002
		f 4 872 873 874 875
		mu 0 4 1018 1019 1020 1021
		f 4 876 -875 933 934
		mu 0 4 1022 1021 1020 1023
		f 4 877 -867 878 879
		mu 0 4 1024 1016 1014 1025
		f 4 -879 880 881 882
		mu 0 4 1025 1014 1026 1018
		f 4 -873 -882 884 885
		mu 0 4 1019 1018 1026 1027
		f 3 -864 883 -881
		mu 0 3 1014 1013 1026
		f 4 -885 886 887 888
		mu 0 4 1027 1026 967 966
		f 4 889 -858 890 -854
		mu 0 4 1003 1009 1005 1001
		f 4 -891 -855 891 -851
		mu 0 4 1001 1005 1004 998
		f 4 894 -894 895 -828
		mu 0 4 977 1004 1007 974
		f 4 896 897 -861 898
		mu 0 4 1028 1029 1011 1009
		f 4 899 -824 -887 900
		mu 0 4 1030 972 967 1026
		f 4 902 901 903 904
		mu 0 4 1031 981 1032 1033
		f 4 -905 905 931 930
		mu 0 4 1031 1033 1024 1022
		f 3 -906 906 907
		mu 0 3 1024 1033 1034
		f 3 -892 908 909
		mu 0 3 998 1004 1035
		f 4 -848 -910 910 911
		mu 0 4 999 998 1035 1036
		f 4 -870 -912 912 913
		mu 0 4 1012 999 1036 1037
		f 4 -863 -914 914 915
		mu 0 4 1013 1012 1037 1038
		f 3 -899 916 917
		mu 0 3 1028 1009 1039
		f 3 -917 -890 918
		mu 0 3 1039 1009 1003
		f 4 919 -919 -853 920
		mu 0 4 1040 1039 1003 1002
		f 4 921 -921 -872 922
		mu 0 4 1041 1040 1002 1017
		f 4 923 -923 -868 924
		mu 0 4 1042 1041 1017 1016
		f 4 925 -925 -878 -908
		mu 0 4 1034 1042 1016 1024
		f 4 926 -901 -884 -916
		mu 0 4 1038 1030 1026 1013
		f 3 927 928 -909
		mu 0 3 1004 1043 1035
		f 4 929 -928 -895 -827
		mu 0 4 976 1043 1004 977
		f 4 -877 -932 -880 932
		mu 0 4 1021 1022 1024 1025
		f 3 -933 -883 -876
		mu 0 3 1021 1025 1018
		f 4 -931 -935 935 936
		mu 0 4 1031 1022 1023 1044
		f 4 -903 -937 937 938
		mu 0 4 981 1031 1044 978
		f 4 -898 939 940 -862
		mu 0 4 1011 1029 1045 1010
		f 4 -822 941 942 -815
		mu 0 4 964 973 1046 965
		f 4 943 944 945 -831
		mu 0 4 982 1047 1032 983
		f 4 946 -946 -902 -948
		mu 0 4 980 983 1032 981
		f 4 -947 948 -820 -832
		mu 0 4 983 980 968 971
		f 4 -830 949 -817 -949
		mu 0 4 980 979 969 968
		f 4 951 950 952 953
		mu 0 4 1048 1049 1050 1051
		f 4 954 -954 955 956
		mu 0 4 1052 1053 1054 1055
		f 4 957 958 959 -860
		mu 0 4 1010 1056 1057 1008
		f 4 -960 960 961 -857
		mu 0 4 1008 1058 1059 1006
		f 4 -962 962 -991 -893
		mu 0 4 1006 1060 1061 1007
		f 4 964 963 965 966
		mu 0 4 1062 1063 1064 1065
		f 4 967 -967 968 969
		mu 0 4 1066 1067 1068 1069
		f 4 -966 970 -952 971
		mu 0 4 1070 1071 1072 1073
		f 4 -969 -972 -955 972
		mu 0 4 1074 1075 1076 1077
		f 4 974 973 -1032 -934
		mu 0 4 1020 1078 1079 1023
		f 4 975 -975 -874 976
		mu 0 4 1080 1081 1020 1019
		f 4 977 -977 -886 984
		mu 0 4 1082 1083 1019 1027
		f 4 978 -978 979 980
		mu 0 4 1084 1085 1086 1087
		f 4 981 -981 -968 982
		mu 0 4 1088 1089 1090 1091
		f 3 983 -965 -980
		mu 0 3 1092 1093 1094
		f 4 985 -985 -889 986
		mu 0 4 1095 1096 1027 966
		f 4 -961 987 -956 988
		mu 0 4 1097 1098 1099 1100
		f 4 -963 -989 -953 989
		mu 0 4 1101 1102 1103 1104
		f 4 -842 -896 990 991
		mu 0 4 1105 974 1007 1106
		f 4 992 -959 993 994
		mu 0 4 1107 1108 1109 1110
		f 4 995 -986 -838 996
		mu 0 4 1111 1112 1113 1114
		f 4 997 998 999 1000
		mu 0 4 1115 1116 1117 1118
		f 4 1001 -1000 1026 1027
		mu 0 4 1119 1120 1121 1122
		f 3 -1002 1002 1003
		mu 0 3 1123 1124 1125
		f 4 1004 1005 1006 -964
		mu 0 4 1126 1127 1128 1129
		f 4 -1007 1007 1008 -971
		mu 0 4 1130 1131 1132 1133
		f 4 -1009 1009 1010 -951
		mu 0 4 1134 1135 1136 1137
		f 3 -1011 1011 -990
		mu 0 3 1138 1139 1140
		f 3 -993 1012 1013
		mu 0 3 1141 1142 1143
		f 3 -1014 1014 -988
		mu 0 3 1144 1145 1146
		f 4 -1015 1015 1016 -957
		mu 0 4 1147 1148 1149 1150
		f 4 -1017 1017 1018 -973
		mu 0 4 1151 1152 1153 1154
		f 4 -1019 1019 1020 -970
		mu 0 4 1155 1156 1157 1158
		f 4 -1021 1021 -1003 -983
		mu 0 4 1159 1160 1161 1162
		f 4 -1005 -984 -996 1022
		mu 0 4 1163 1164 1165 1166
		f 3 1023 1024 -1012
		mu 0 3 1167 1168 1169
		f 4 -843 -992 -1025 1025
		mu 0 4 1170 1171 1172 1173
		f 4 -1028 -974 1028 -982
		mu 0 4 1174 1175 1176 1177
		f 3 -1029 -976 -979
		mu 0 3 1178 1179 1180
		f 4 1029 -938 1030 -999
		mu 0 4 1181 978 1044 1182
		f 4 -1031 -936 1031 -1027
		mu 0 4 1183 1044 1023 1184;
	setAttr ".fc[500:999]"
		f 4 -958 -941 1032 -994
		mu 0 4 1185 1010 1045 1186
		f 4 -834 -943 1033 -840
		mu 0 4 1187 965 1046 1188
		f 4 1035 1034 1037 -998
		mu 0 4 1189 1190 1191 1192
		f 4 -847 -1036 1036 -944
		mu 0 4 982 1193 1194 1047
		f 4 -846 -835 1038 -1035
		mu 0 4 1195 1196 1197 1198
		f 4 -1039 -837 -950 -845
		mu 0 4 1199 1200 969 979
		f 4 1039 1040 1041 1042
		mu 0 4 1201 1202 1203 1204
		f 4 1044 1043 1100 -1049
		mu 0 4 1205 1206 1207 1208
		f 4 1045 -1045 1046 1047
		mu 0 4 1209 1206 1205 1210
		f 4 1049 1048 -1103 -1053
		mu 0 4 1211 1205 1208 1212
		f 4 -1047 -1050 1050 1051
		mu 0 4 1210 1205 1213 1214
		f 4 1053 1052 1099 -1057
		mu 0 4 1215 1216 1217 1218
		f 4 -1051 -1054 1054 1055
		mu 0 4 1219 1220 1221 1222
		f 4 1057 1056 1101 -1044
		mu 0 4 1206 1223 1224 1207
		f 4 -1055 -1058 -1046 1058
		mu 0 4 1225 1226 1206 1209
		f 4 -1048 1059 1060 1061
		mu 0 4 1209 1210 1227 1228
		f 4 -1061 1062 1063 1064
		mu 0 4 1228 1227 1229 1230
		f 4 1065 -1064 -1071 -1108
		mu 0 4 1231 1230 1229 1232
		f 4 -1052 1066 1067 -1060
		mu 0 4 1233 1234 1235 1236
		f 4 -1068 1068 1069 -1063
		mu 0 4 1236 1235 1237 1238
		f 4 1070 -1070 -1078 -1113
		mu 0 4 1239 1238 1237 1240
		f 4 -1056 1071 1072 -1067
		mu 0 4 1241 1242 1243 1244
		f 4 -1073 1073 1074 -1069
		mu 0 4 1245 1246 1247 1248
		f 4 -1075 1075 1076 1077
		mu 0 4 1249 1250 1251 1252
		f 4 -1077 1078 1079 1080
		mu 0 4 1252 1253 1254 1255
		f 4 -1080 1081 1082 1083
		mu 0 4 1255 1254 1256 1257
		f 4 1084 -1083 1096 -1095
		mu 0 4 1258 1257 1256 1259
		f 3 -1059 -1062 1085
		mu 0 3 1260 1261 1262
		f 3 -1086 1086 -1072
		mu 0 3 1260 1262 1263
		f 4 -1087 -1065 1087 -1074
		mu 0 4 1263 1262 1264 1265
		f 4 -1076 -1088 -1066 -1116
		mu 0 4 1266 1265 1264 1267
		f 4 -1040 1088 1089 1090
		mu 0 4 1202 1201 1268 1269
		f 4 1091 -1090 -1099 -1110
		mu 0 4 1270 1271 1268 1272
		f 4 -1041 -1091 1092 1093
		mu 0 4 1273 1274 1275 1276
		f 4 -1085 -1093 -1092 1110
		mu 0 4 1277 1276 1275 1278
		f 4 -1042 -1094 1094 1095
		mu 0 4 1279 1280 1258 1281
		f 4 -1043 -1096 1097 -1089
		mu 0 4 1282 1283 1284 1285
		f 4 1098 -1098 -1097 1113
		mu 0 4 1286 1285 1284 1287
		f 4 -1102 -1100 1102 -1101
		mu 0 4 1207 1288 1289 1208
		f 4 1104 1103 1109 1108
		mu 0 4 1290 1291 1292 1293
		f 4 1105 -1105 1106 1107
		mu 0 4 1294 1295 1296 1231
		f 4 -1111 -1104 1111 -1084
		mu 0 4 1277 1278 1297 1298
		f 4 -1112 -1106 1112 -1081
		mu 0 4 1298 1297 1239 1240
		f 4 -1114 -1082 1114 -1109
		mu 0 4 1286 1287 1299 1300
		f 4 -1115 -1079 1115 -1107
		mu 0 4 1300 1299 1266 1267
		f 4 1117 1116 1118 1119
		mu 0 4 1301 1302 1303 1304
		f 4 1120 -1120 1121 1122
		mu 0 4 1305 1301 1304 1306
		f 4 1123 -1123 1124 1125
		mu 0 4 1307 1305 1306 1308
		f 4 1126 1127 1128 -1124
		mu 0 4 1307 1309 1310 1305
		f 4 -1129 1129 1130 -1121
		mu 0 4 1305 1311 1312 1301
		f 4 -1131 1131 1132 -1118
		mu 0 4 1301 1313 1314 1302
		f 4 -1117 -1133 -1134 -1144
		mu 0 4 1303 1302 1315 1316
		f 4 1133 -1132 1134 1135
		mu 0 4 1317 1318 1319 1320
		f 4 -1135 -1130 1136 1137
		mu 0 4 1321 1322 1323 1324
		f 4 -1137 -1128 1138 1139
		mu 0 4 1325 1326 1327 1328
		f 4 1140 -1125 1141 -1140
		mu 0 4 1329 1308 1306 1330
		f 4 -1142 -1122 1142 -1138
		mu 0 4 1331 1306 1304 1332
		f 4 -1143 -1119 1143 -1136
		mu 0 4 1333 1304 1303 1334
		f 4 1144 1145 1146 1147
		mu 0 4 1335 1336 1337 1338
		f 4 1148 -1147 -1187 1188
		mu 0 4 1339 1338 1337 1340
		f 3 -1149 1149 1150
		mu 0 3 1338 1339 1341
		f 3 -1150 1151 1152
		mu 0 3 1341 1339 1342
		f 4 -1148 1153 1207 1206
		mu 0 4 1343 1344 1345 1346
		f 4 1154 -1154 1167 -1166
		mu 0 4 1347 1345 1344 1348
		f 4 1155 -1155 1156 1157
		mu 0 4 1349 1345 1347 1350
		f 4 -1158 1158 -1161 -1211
		mu 0 4 1349 1350 1351 1352
		f 4 1159 -1159 1214 -1174
		mu 0 4 1353 1351 1350 1354
		f 4 1160 -1160 1161 1162
		mu 0 4 1352 1351 1353 1355
		f 4 1163 1164 1165 1166
		mu 0 4 1356 1357 1347 1348
		f 4 -1167 -1168 -1151 1168
		mu 0 4 1356 1348 1344 1358
		f 3 1169 -1163 1170
		mu 0 3 1359 1352 1355
		f 3 -1171 1171 1172
		mu 0 3 1359 1355 1360
		f 4 -1162 1173 1228 1226
		mu 0 4 1361 1362 1363 1364
		f 4 -1172 -1227 1229 1227
		mu 0 4 1365 1361 1364 1366
		f 4 1177 1178 -1199 1220
		mu 0 4 1367 1368 1369 1370
		f 4 -1179 1179 1180 1181
		mu 0 4 1369 1368 1371 1372
		f 4 -1181 1182 1183 1184
		mu 0 4 1372 1371 1373 1374
		f 4 -1184 1185 1186 1187
		mu 0 4 1374 1373 1340 1337
		f 4 1190 1189 -1197 -1219
		mu 0 4 1375 1376 1377 1378
		f 4 1191 -1191 1192 1193
		mu 0 4 1379 1376 1375 1380
		f 4 1194 1195 -1182 -1206
		mu 0 4 1381 1382 1369 1372
		f 4 -1196 1196 1197 1198
		mu 0 4 1369 1382 1383 1370
		f 4 1199 -1198 -1190 1211
		mu 0 4 1384 1370 1383 1385
		f 4 -1200 1200 1221 -1221
		mu 0 4 1370 1384 1386 1367
		f 4 1201 -1201 -1214 -1170
		mu 0 4 1359 1386 1384 1352
		f 4 -1146 1202 1203 -1188
		mu 0 4 1337 1336 1387 1374
		f 4 -1204 1204 1205 -1185
		mu 0 4 1374 1387 1381 1372
		f 4 1208 -1208 -1156 1209
		mu 0 4 1388 1346 1345 1349
		f 4 -1210 1210 -1213 -1194
		mu 0 4 1388 1349 1352 1389
		f 4 -1212 -1192 1212 1213
		mu 0 4 1384 1385 1389 1352
		f 4 -1175 -1215 -1157 -1165
		mu 0 4 1357 1354 1350 1347
		f 4 -1203 1215 1216 -1205
		mu 0 4 1390 1391 1392 1393
		f 4 -1217 1217 1218 -1195
		mu 0 4 1393 1392 1375 1378
		f 4 -1216 -1145 -1207 1219
		mu 0 4 1392 1391 1394 1395
		f 4 -1218 -1220 -1209 -1193
		mu 0 4 1375 1392 1395 1380
		f 4 1175 -1225 -1164 -1169
		mu 0 4 1396 1397 1398 1399
		f 4 -1226 -1176 -1153 1176
		mu 0 4 1400 1397 1396 1401
		f 4 -1229 1174 1224 1222
		mu 0 4 1364 1363 1398 1397
		f 4 -1230 -1223 1225 1223
		mu 0 4 1366 1364 1397 1400
		f 4 1230 1231 1232 1233
		mu 0 4 1402 1403 1404 1405
		f 4 1234 -1233 -1273 1274
		mu 0 4 1406 1405 1404 1407
		f 3 -1235 1235 1236
		mu 0 3 1405 1406 1408
		f 3 -1236 1237 1238
		mu 0 3 1408 1406 1409
		f 4 -1234 1239 1293 1292
		mu 0 4 1410 1411 1412 1413
		f 4 1240 -1240 1253 -1252
		mu 0 4 1414 1412 1411 1415
		f 4 1241 -1241 1242 1243
		mu 0 4 1416 1412 1414 1417
		f 4 -1244 1244 -1247 -1297
		mu 0 4 1416 1417 1418 1419
		f 4 1245 -1245 1300 -1260
		mu 0 4 1420 1418 1417 1421
		f 4 1246 -1246 1247 1248
		mu 0 4 1419 1418 1420 1422
		f 4 1249 1250 1251 1252
		mu 0 4 1423 1424 1414 1415
		f 4 -1253 -1254 -1237 1254
		mu 0 4 1423 1415 1411 1425
		f 3 1255 -1249 1256
		mu 0 3 1426 1419 1422
		f 3 -1257 1257 1258
		mu 0 3 1426 1422 1427
		f 4 -1248 1259 1314 1312
		mu 0 4 1428 1429 1430 1431
		f 4 -1258 -1313 1315 1313
		mu 0 4 1432 1428 1431 1433
		f 4 1263 1264 -1285 1306
		mu 0 4 1434 1435 1436 1437
		f 4 -1265 1265 1266 1267
		mu 0 4 1436 1435 1438 1439
		f 4 -1267 1268 1269 1270
		mu 0 4 1439 1438 1440 1441
		f 4 -1270 1271 1272 1273
		mu 0 4 1441 1440 1407 1404
		f 4 1276 1275 -1283 -1305
		mu 0 4 1442 1443 1444 1445
		f 4 1277 -1277 1278 1279
		mu 0 4 1446 1443 1442 1447
		f 4 1280 1281 -1268 -1292
		mu 0 4 1448 1449 1436 1439
		f 4 -1282 1282 1283 1284
		mu 0 4 1436 1449 1450 1437
		f 4 1285 -1284 -1276 1297
		mu 0 4 1451 1437 1450 1452
		f 4 -1286 1286 1307 -1307
		mu 0 4 1437 1451 1453 1434
		f 4 1287 -1287 -1300 -1256
		mu 0 4 1426 1453 1451 1419
		f 4 -1232 1288 1289 -1274
		mu 0 4 1404 1403 1454 1441
		f 4 -1290 1290 1291 -1271
		mu 0 4 1441 1454 1448 1439
		f 4 1294 -1294 -1242 1295
		mu 0 4 1455 1413 1412 1416
		f 4 -1296 1296 -1299 -1280
		mu 0 4 1455 1416 1419 1456
		f 4 -1298 -1278 1298 1299
		mu 0 4 1451 1452 1456 1419
		f 4 -1261 -1301 -1243 -1251
		mu 0 4 1424 1421 1417 1414
		f 4 -1289 1301 1302 -1291
		mu 0 4 1457 1458 1459 1460
		f 4 -1303 1303 1304 -1281
		mu 0 4 1460 1459 1442 1445
		f 4 -1302 -1231 -1293 1305
		mu 0 4 1459 1458 1461 1462
		f 4 -1304 -1306 -1295 -1279
		mu 0 4 1442 1459 1462 1447
		f 4 1261 -1311 -1250 -1255
		mu 0 4 1463 1464 1465 1466
		f 4 -1312 -1262 -1239 1262
		mu 0 4 1467 1464 1463 1468
		f 4 -1315 1260 1310 1308
		mu 0 4 1431 1430 1465 1464
		f 4 -1316 -1309 1311 1309
		mu 0 4 1433 1431 1464 1467
		f 4 1316 1317 1318 1319
		mu 0 4 1469 1470 1471 1472
		f 4 1320 -1319 -1359 1360
		mu 0 4 1473 1472 1471 1474
		f 3 -1321 1321 1322
		mu 0 3 1472 1473 1475
		f 3 -1322 1323 1324
		mu 0 3 1475 1473 1476
		f 4 -1320 1325 1379 1378
		mu 0 4 1477 1478 1479 1480
		f 4 1326 -1326 1339 -1338
		mu 0 4 1481 1479 1478 1482
		f 4 1327 -1327 1328 1329
		mu 0 4 1483 1479 1481 1484
		f 4 -1330 1330 -1333 -1383
		mu 0 4 1483 1484 1485 1486
		f 4 1331 -1331 1386 -1346
		mu 0 4 1487 1485 1484 1488
		f 4 1332 -1332 1333 1334
		mu 0 4 1486 1485 1487 1489
		f 4 1335 1336 1337 1338
		mu 0 4 1490 1491 1481 1482
		f 4 -1339 -1340 -1323 1340
		mu 0 4 1490 1482 1478 1492
		f 3 1341 -1335 1342
		mu 0 3 1493 1486 1489
		f 3 -1343 1343 1344
		mu 0 3 1493 1489 1494
		f 4 -1334 1345 1400 1398
		mu 0 4 1495 1496 1497 1498
		f 4 -1344 -1399 1401 1399
		mu 0 4 1499 1495 1498 1500
		f 4 1349 1350 -1371 1392
		mu 0 4 1501 1502 1503 1504
		f 4 -1351 1351 1352 1353
		mu 0 4 1503 1502 1505 1506
		f 4 -1353 1354 1355 1356
		mu 0 4 1506 1505 1507 1508
		f 4 -1356 1357 1358 1359
		mu 0 4 1508 1507 1474 1471
		f 4 1362 1361 -1369 -1391
		mu 0 4 1509 1510 1511 1512
		f 4 1363 -1363 1364 1365
		mu 0 4 1513 1510 1509 1514
		f 4 1366 1367 -1354 -1378
		mu 0 4 1515 1516 1503 1506
		f 4 -1368 1368 1369 1370
		mu 0 4 1503 1516 1517 1504
		f 4 1371 -1370 -1362 1383
		mu 0 4 1518 1504 1517 1519
		f 4 -1372 1372 1393 -1393
		mu 0 4 1504 1518 1520 1501
		f 4 1373 -1373 -1386 -1342
		mu 0 4 1493 1520 1518 1486
		f 4 -1318 1374 1375 -1360
		mu 0 4 1471 1470 1521 1508
		f 4 -1376 1376 1377 -1357
		mu 0 4 1508 1521 1515 1506
		f 4 1380 -1380 -1328 1381
		mu 0 4 1522 1480 1479 1483
		f 4 -1382 1382 -1385 -1366
		mu 0 4 1522 1483 1486 1523
		f 4 -1384 -1364 1384 1385
		mu 0 4 1518 1519 1523 1486
		f 4 -1347 -1387 -1329 -1337
		mu 0 4 1491 1488 1484 1481
		f 4 -1375 1387 1388 -1377
		mu 0 4 1524 1525 1526 1527
		f 4 -1389 1389 1390 -1367
		mu 0 4 1527 1526 1509 1512
		f 4 -1388 -1317 -1379 1391
		mu 0 4 1526 1525 1528 1529
		f 4 -1390 -1392 -1381 -1365
		mu 0 4 1509 1526 1529 1514
		f 4 1347 -1397 -1336 -1341
		mu 0 4 1530 1531 1532 1533
		f 4 -1398 -1348 -1325 1348
		mu 0 4 1534 1531 1530 1535
		f 4 -1401 1346 1396 1394
		mu 0 4 1498 1497 1532 1531
		f 4 -1402 -1395 1397 1395
		mu 0 4 1500 1498 1531 1534
		f 4 1402 1403 1404 1405
		mu 0 4 1536 1537 1538 1539
		f 4 1406 -1405 1447 -1423
		mu 0 4 1540 1539 1538 1541
		f 4 1407 1408 1409 1410
		mu 0 4 1542 1543 1544 1545
		f 4 1411 -1408 1412 1413
		mu 0 4 1546 1543 1542 1547
		f 4 1414 -1414 1415 1416
		mu 0 4 1548 1546 1547 1549
		f 4 1417 -1417 1418 1419
		mu 0 4 1550 1548 1549 1551
		f 4 1420 -1420 1421 -1406
		mu 0 4 1539 1550 1551 1536
		f 4 1422 1423 1424 1425
		mu 0 4 1552 1553 1554 1555
		f 4 -1425 1426 1427 1428
		mu 0 4 1555 1554 1556 1557
		f 4 1429 -1428 1430 1431
		mu 0 4 1558 1557 1556 1559
		f 4 1432 -1432 1433 1434
		mu 0 4 1560 1558 1559 1561
		f 4 -1435 1435 -1409 1436
		mu 0 4 1562 1563 1564 1543
		f 4 -1433 -1437 -1412 1437
		mu 0 4 1565 1562 1543 1546
		f 4 -1430 -1438 -1415 1438
		mu 0 4 1566 1565 1546 1548
		f 4 -1429 -1439 -1418 1439
		mu 0 4 1567 1566 1548 1550
		f 4 -1426 -1440 -1421 -1407
		mu 0 4 1568 1567 1550 1569
		f 4 1440 -1416 -1446 1446
		mu 0 4 1570 1549 1547 1571
		f 4 -1419 -1441 1441 1442
		mu 0 4 1551 1549 1570 1572
		f 4 -1422 -1443 1443 -1403
		mu 0 4 1536 1551 1572 1537
		f 4 -1411 1444 1445 -1413
		mu 0 4 1542 1545 1571 1547
		f 4 1448 1449 1450 1451
		mu 0 4 1573 1574 1575 1576
		f 4 1452 1453 -1449 1454
		mu 0 4 1577 1578 1579 1580
		f 4 1455 1456 1457 -1453
		mu 0 4 1581 1582 1583 1584
		f 4 -1455 -1452 1458 -1456
		mu 0 4 1585 1586 1587 1588
		f 4 -1459 -1451 1459 -1457
		mu 0 4 1589 1590 1591 1592
		f 4 1460 1461 1462 1463
		mu 0 4 1593 1594 1595 1596
		f 4 1464 1465 -1461 1466
		mu 0 4 1597 1598 1599 1600
		f 4 1467 1468 1469 -1465
		mu 0 4 1601 1602 1603 1604
		f 4 -1467 -1464 1470 -1468
		mu 0 4 1601 1593 1596 1602
		f 4 -1471 -1463 1471 -1469
		mu 0 4 1602 1596 1595 1603
		f 4 1473 1472 1474 1475
		mu 0 4 1605 1606 1607 1608
		f 4 1476 -1476 1477 1478
		mu 0 4 1609 1605 1608 1610
		f 4 1479 -1479 1480 1481
		mu 0 4 1611 1609 1610 1612
		f 4 1482 -1482 1483 1484
		mu 0 4 1613 1611 1612 1614
		f 4 1485 -1485 1486 -1473
		mu 0 4 1615 1613 1614 1616
		f 4 -1484 -1481 1487 -1487
		mu 0 4 1617 1618 1619 1620
		f 3 -1488 -1478 -1475
		mu 0 3 1620 1619 1621
		f 4 -1486 -1474 1488 -1483
		mu 0 4 1613 1615 1605 1611
		f 3 -1489 -1477 -1480
		mu 0 3 1611 1605 1609
		f 4 1489 1490 1491 1492
		mu 0 4 1622 1623 1624 1625
		f 4 1493 1494 -1490 1495
		mu 0 4 1626 1627 1628 1629
		f 4 1496 1497 1498 -1494
		mu 0 4 1630 1631 1632 1633
		f 4 -1496 -1493 1499 -1497
		mu 0 4 1634 1635 1636 1637
		f 4 -1500 -1492 1500 -1498
		mu 0 4 1638 1639 1640 1641
		f 4 1501 1502 -1522 -1524
		mu 0 4 1642 1643 1644 1645
		f 4 1503 1504 1529 -1528
		mu 0 4 1646 1647 1648 1649
		f 4 1505 1506 1523 -1523
		mu 0 4 1650 1651 1652 1653
		f 4 1507 1508 1509 1510
		mu 0 4 1654 1655 1656 1657
		f 4 1511 -1510 1536 1537
		mu 0 4 1658 1659 1660 1661
		f 4 1512 1513 1514 1515
		mu 0 4 1662 1663 1664 1665
		f 4 -1515 1516 1517 1518
		mu 0 4 1666 1667 1668 1669
		f 4 1519 -1504 1520 1521
		mu 0 4 1670 1671 1672 1673
		f 4 1522 -1521 -1527 1538
		mu 0 4 1674 1675 1676 1677
		f 4 1524 -1505 -1520 -1503
		mu 0 4 1678 1679 1680 1681
		f 4 1525 1526 1527 1528
		mu 0 4 1682 1683 1684 1685
		f 4 1530 -1507 1540 -1537
		mu 0 4 1686 1687 1688 1689
		f 4 -1502 -1531 -1509 1531
		mu 0 4 1690 1691 1692 1693
		f 4 1532 1533 -1525 -1532
		mu 0 4 1694 1695 1696 1697
		f 4 1534 -1514 -1542 -1529
		mu 0 4 1698 1699 1700 1701
		f 4 -1517 -1535 -1530 -1534
		mu 0 4 1702 1703 1704 1705
		f 4 1535 -1511 1544 -1519
		mu 0 4 1706 1707 1708 1709
		f 4 -1508 -1536 -1518 -1533
		mu 0 4 1710 1711 1712 1713
		f 4 -1506 -1539 -1526 1539
		mu 0 4 1714 1715 1716 1717
		f 4 -1541 -1540 1541 1542
		mu 0 4 1718 1719 1720 1721
		f 4 -1543 -1513 1543 -1538
		mu 0 4 1722 1723 1724 1725
		f 4 -1512 -1544 -1516 -1545
		mu 0 4 1726 1727 1728 1729
		f 4 1545 1546 -1566 -1568
		mu 0 4 1730 1731 1732 1733
		f 4 1547 1548 1573 -1572
		mu 0 4 1734 1735 1736 1737
		f 4 1549 1550 1567 -1567
		mu 0 4 1738 1739 1730 1733
		f 4 1551 1552 1553 1554
		mu 0 4 1740 1741 1742 1743
		f 4 1555 -1554 1580 1581
		mu 0 4 1744 1743 1742 1745
		f 4 1556 1557 1558 1559
		mu 0 4 1746 1747 1748 1749
		f 4 -1559 1560 1561 1562
		mu 0 4 1749 1748 1750 1751
		f 4 1563 -1548 1564 1565
		mu 0 4 1732 1735 1734 1733
		f 4 1566 -1565 -1571 1582
		mu 0 4 1738 1733 1734 1752
		f 4 1568 -1549 -1564 -1547
		mu 0 4 1753 1754 1735 1732
		f 4 1569 1570 1571 1572
		mu 0 4 1755 1756 1734 1737
		f 4 1574 -1551 1584 -1581
		mu 0 4 1757 1758 1759 1760
		f 4 -1546 -1575 -1553 1575
		mu 0 4 1761 1762 1763 1764
		f 4 1576 1577 -1569 -1576
		mu 0 4 1765 1766 1767 1768
		f 4 1578 -1558 -1586 -1573
		mu 0 4 1769 1770 1771 1772
		f 4 -1561 -1579 -1574 -1578
		mu 0 4 1773 1774 1775 1776
		f 4 1579 -1555 1588 -1563
		mu 0 4 1751 1740 1743 1749
		f 4 -1552 -1580 -1562 -1577
		mu 0 4 1741 1740 1751 1750
		f 4 -1550 -1583 -1570 1583
		mu 0 4 1777 1738 1778 1779
		f 4 -1585 -1584 1585 1586
		mu 0 4 1780 1781 1782 1783
		f 4 -1587 -1557 1587 -1582
		mu 0 4 1745 1747 1746 1744
		f 4 -1556 -1588 -1560 -1589
		mu 0 4 1743 1744 1746 1749
		f 4 1589 1590 -1619 -1621
		mu 0 4 1784 1785 1786 1787
		f 4 1591 1592 1623 -1623
		mu 0 4 1788 1789 1790 1791
		f 4 1593 1594 1620 -1620
		mu 0 4 1792 1793 1794 1795
		f 4 1595 1596 1622 -1601
		mu 0 4 1796 1797 1798 1799
		f 4 1597 1598 1624 -1595
		mu 0 4 1800 1801 1802 1803
		f 4 1599 1600 1628 -1614
		mu 0 4 1804 1805 1806 1807
		f 4 1602 1601 1608 -1605
		mu 0 4 1808 1809 1810 1811
		f 4 -1603 1603 -1612 -1627
		mu 0 4 1812 1813 1814 1815
		f 4 -1604 1604 1605 1606
		mu 0 4 1816 1817 1818 1819
		f 4 1607 -1606 -1610 -1633
		mu 0 4 1820 1821 1822 1823
		f 4 1609 -1609 -1599 1610
		mu 0 4 1824 1825 1826 1827
		f 4 1611 -1607 -1615 1615
		mu 0 4 1828 1829 1830 1831
		f 4 1612 1613 1614 -1608
		mu 0 4 1832 1833 1834 1835
		f 4 1616 -1592 1617 1618
		mu 0 4 1836 1837 1838 1839
		f 4 1619 -1618 -1597 1629
		mu 0 4 1840 1841 1842 1797
		f 4 1621 -1593 -1617 -1591
		mu 0 4 1843 1844 1845 1846
		f 4 -1590 -1625 -1602 1625
		mu 0 4 1847 1848 1802 1849
		f 4 1626 1627 -1622 -1626
		mu 0 4 1850 1851 1852 1853
		f 4 -1616 -1629 -1624 -1628
		mu 0 4 1854 1855 1806 1856
		f 4 -1594 -1630 -1596 1630
		mu 0 4 1857 1858 1797 1859
		f 4 -1598 -1631 -1600 1631
		mu 0 4 1860 1861 1862 1863
		f 4 -1632 -1613 1632 -1611
		mu 0 4 1864 1865 1866 1867
		f 4 1633 1634 1635 1636
		mu 0 4 1868 1869 1870 1871
		f 4 -1634 1637 1638 1639
		mu 0 4 1869 1868 1872 1873
		f 4 1640 -1639 -1653 -1661
		mu 0 4 1874 1873 1872 1875
		f 4 1641 1642 1643 1644
		mu 0 4 1876 1877 1878 1874
		f 4 -1644 1645 1646 -1641
		mu 0 4 1874 1878 1879 1873
		f 4 -1647 1647 -1635 -1640
		mu 0 4 1873 1879 1870 1869
		f 4 -1636 -1648 1648 1649
		mu 0 4 1880 1870 1879 1881
		f 4 1650 -1649 -1646 -1659
		mu 0 4 1882 1881 1879 1878
		f 4 -1637 -1650 1651 -1638
		mu 0 4 1868 1871 1881 1872
		f 4 1652 -1652 -1651 1653
		mu 0 4 1875 1872 1881 1883
		f 4 1654 -1654 1655 1656
		mu 0 4 1884 1875 1883 1885
		f 4 1657 -1656 1658 -1643
		mu 0 4 1877 1886 1882 1878
		f 4 1659 -1645 1660 -1655
		mu 0 4 1884 1876 1874 1875
		f 4 -1642 -1660 -1657 -1658
		mu 0 4 1877 1876 1884 1885
		f 4 1661 1662 1663 1664
		mu 0 4 1887 1888 1889 1890
		f 4 1665 1666 1667 -1663
		mu 0 4 1891 1892 1893 1894
		f 4 1668 1669 1670 -1667
		mu 0 4 1895 1896 1897 1898
		f 4 1671 -1665 1672 -1670
		mu 0 4 1899 1900 1901 1902
		f 4 1673 1674 1676 1675
		mu 0 4 1903 1904 1905 1906
		f 4 1677 1678 1679 1680
		mu 0 4 1907 1908 1909 1910
		f 4 1681 1682 -1766 -1801
		mu 0 4 1911 1912 1913 1914
		f 4 1683 1684 1685 1686
		mu 0 4 1915 1916 1917 1918
		f 4 1687 1688 1689 1690
		mu 0 4 1919 1920 1921 1922
		f 4 1692 1691 1756 -1697
		mu 0 4 1923 1924 1925 1926
		f 4 1693 -1693 1694 1695
		mu 0 4 1927 1924 1923 1928
		f 4 1697 1696 -1838 -1711
		mu 0 4 1929 1923 1926 1930
		f 4 -1695 -1698 1698 1699
		mu 0 4 1928 1923 1931 1932
		f 4 -1700 1700 1701 1702
		mu 0 4 1928 1933 1934 1935
		f 4 -1702 1703 1704 1705
		mu 0 4 1936 1934 1937 1938
		f 4 -1705 1706 1707 1708
		mu 0 4 1939 1937 1940 1941
		f 4 -1708 1709 -1817 1817
		mu 0 4 1942 1940 1943 1944
		f 4 1711 1710 1754 1755
		mu 0 4 1945 1946 1947 1948
		f 4 -1699 -1712 1712 1713
		mu 0 4 1949 1950 1951 1952
		f 4 -1696 -1703 1714 1715
		mu 0 4 1927 1928 1953 1954
		f 4 -1715 -1706 1716 1717
		mu 0 4 1954 1955 1956 1957
		f 4 -1717 -1709 1718 1719
		mu 0 4 1957 1958 1959 1960
		f 3 1720 -1719 1840
		mu 0 3 1961 1960 1962
		f 3 1721 1722 1723
		mu 0 3 1963 1964 1965
		f 4 1724 -1724 1725 1726
		mu 0 4 1966 1963 1967 1943
		f 4 1727 -1727 -1710 1728
		mu 0 4 1968 1966 1943 1940
		f 3 -1729 1729 1730
		mu 0 3 1969 1940 1970
		f 4 -1730 -1707 1731 1732
		mu 0 4 1971 1940 1937 1972
		f 4 -1732 -1704 1733 1734
		mu 0 4 1973 1937 1934 1974
		f 4 -1734 -1701 -1714 1735
		mu 0 4 1975 1934 1976 1977
		f 4 1736 1737 1738 1739
		mu 0 4 1978 1979 1980 1981
		f 4 -1739 1740 1741 1742
		mu 0 4 1981 1980 1982 1983
		f 4 -1742 1743 1744 1745
		mu 0 4 1983 1982 1984 1985
		f 4 -1745 1746 1747 1748
		mu 0 4 1985 1984 1986 1987
		f 4 -1748 1749 1750 1751
		mu 0 4 1987 1986 1988 1989
		f 4 -1751 -1677 1752 1753
		mu 0 4 1989 1988 1990 1991
		f 4 1758 1757 -1839 -1816
		mu 0 4 1916 1992 1993 1944
		f 4 1759 -1759 -1684 1760
		mu 0 4 1907 1994 1916 1915
		f 3 -1761 1761 -1678
		mu 0 3 1907 1915 1908
		f 4 1762 -1689 1763 1764
		mu 0 4 1995 1996 1997 1998
		f 4 -1764 -1688 -1723 1765
		mu 0 4 1999 2000 2001 2002
		f 3 1766 1767 1768
		mu 0 3 2003 2004 2005
		f 4 1769 -1769 -1749 1770
		mu 0 4 2006 2003 2005 2007
		f 4 1771 -1771 -1752 1772
		mu 0 4 2008 2006 2007 2009
		f 4 -1768 1773 1774 -1746
		mu 0 4 2005 2004 2010 2011
		f 4 -1775 1775 1776 -1743
		mu 0 4 2011 2010 2012 2013
		f 3 -1777 1777 1778
		mu 0 3 2013 2012 1910
		f 4 -1740 -1779 -1680 1779
		mu 0 4 2014 2013 1910 1909
		f 4 1780 1781 -1737 -1780
		mu 0 4 1909 2015 2016 2014
		f 3 1782 1783 1784
		mu 0 3 2017 2018 2019
		f 4 -1682 -1785 -1738 -1782
		mu 0 4 2020 2021 2022 2023
		f 4 -1784 1785 1786 -1741
		mu 0 4 2024 2018 2025 2026
		f 4 -1787 1787 1788 -1744
		mu 0 4 2027 2028 2029 2030
		f 3 -1789 1789 1790
		mu 0 3 2030 2029 2031
		f 4 -1747 -1791 1791 1792
		mu 0 4 2032 2030 2031 2033
		f 4 -1750 -1793 1793 -1676
		mu 0 4 1906 2032 2033 1903
		f 4 1794 1795 -1753 -1675
		mu 0 4 1904 2034 2035 1905
		f 4 1796 -1773 -1754 -1796
		mu 0 4 2036 2008 2009 2037
		f 4 1797 -1683 -1781 -1679
		mu 0 4 1908 2038 2039 1909
		f 4 1798 -1728 1801 -1788
		mu 0 4 2040 1966 2041 2029
		f 4 -1725 -1799 -1786 1799
		mu 0 4 1963 1966 2042 2018
		f 4 -1722 -1800 -1783 1800
		mu 0 4 2043 1963 2018 2044
		f 4 -1790 -1802 -1731 1802
		mu 0 4 2031 2029 2045 2046
		f 4 -1792 -1803 -1733 1803
		mu 0 4 2033 2031 2047 2048
		f 4 -1794 -1804 -1735 1804
		mu 0 4 1903 2033 2049 2050
		f 4 -1674 -1805 -1736 1805
		mu 0 4 1904 1903 2051 2052
		f 4 -1795 -1806 1806 1807
		mu 0 4 2053 1904 2054 1927
		f 4 -1694 -1807 -1713 1835
		mu 0 4 1924 1927 2055 2056
		f 4 1809 1808 1839 -1774
		mu 0 4 2004 1961 2057 2010
		f 4 -1721 -1810 -1767 1810
		mu 0 4 1960 1961 2004 2003
		f 4 -1720 -1811 -1770 1811
		mu 0 4 1957 1960 2003 2006
		f 4 -1718 -1812 -1772 1812
		mu 0 4 1954 1957 2006 2008
		f 4 -1716 -1813 -1797 -1808
		mu 0 4 1927 1954 2008 2058
		f 4 1813 -1685 1814 -1691
		mu 0 4 2059 1917 1916 2060
		f 4 -1815 1815 1816 -1726
		mu 0 4 2061 1916 1944 1943
		f 4 -1762 -1687 1818 1819
		mu 0 4 1908 1915 1918 2062
		f 4 -1798 -1820 1820 -1765
		mu 0 4 2063 1908 2064 1995
		f 4 -1686 1821 1822 1823
		mu 0 4 1918 1917 2065 2066
		f 4 -1819 -1824 1824 1825
		mu 0 4 2067 1918 2066 2068
		f 4 -1814 1826 1827 -1822
		mu 0 4 1917 2069 2070 2065
		f 4 -1828 1828 1829 -1823
		mu 0 4 2065 2071 2072 2066
		f 4 -1825 -1830 -1832 -1834
		mu 0 4 2068 2066 2073 2074
		f 4 -1763 1830 1831 1832
		mu 0 4 2075 1995 2076 2077
		f 4 -1690 -1833 -1829 -1827
		mu 0 4 2078 2079 2080 2081
		f 4 -1821 -1826 1833 -1831
		mu 0 4 1995 2082 2068 2083
		f 4 1834 -1776 -1840 -1758
		mu 0 4 2084 2012 2010 2085
		f 4 -1778 -1835 -1760 -1681
		mu 0 4 1910 2012 2086 1907
		f 4 -1836 -1756 1836 -1692
		mu 0 4 1924 2087 2088 1925
		f 4 -1837 -1755 1837 -1757
		mu 0 4 1925 2089 2090 1926
		f 4 -1841 -1818 1838 -1809
		mu 0 4 1961 1962 1944 2091
		f 4 1841 1842 -1915 -1850
		mu 0 4 2092 2093 2094 2095
		f 4 1843 1844 1845 1846
		mu 0 4 2096 2097 2098 2099
		f 4 1847 1848 1849 1850
		mu 0 4 2100 2101 2092 2095
		f 4 1851 1852 1853 1854
		mu 0 4 2102 2103 2104 2105
		f 4 1855 1856 1974 -1966
		mu 0 4 2106 2107 2108 2109
		f 4 1857 1858 -1846 1859
		mu 0 4 2110 2111 2099 2098
		f 4 -1843 1860 -1866 -2014
		mu 0 4 2094 2093 2112 2113
		f 4 1861 1862 -1845 1863
		mu 0 4 2114 2115 2098 2097
		f 4 1864 1865 1866 1867
		mu 0 4 2116 2117 2118 2119
		f 4 1868 1869 1870 -1852
		mu 0 4 2102 2120 2121 2103
		f 4 1871 -1856 -2057 -2065
		mu 0 4 2122 2107 2106 2123
		f 4 -1860 -1863 1872 1873
		mu 0 4 2110 2098 2124 2125
		f 4 1874 1875 1876 1877
		mu 0 4 2126 2127 2128 2129
		f 4 -1877 1878 1879 1880
		mu 0 4 2129 2128 2130 2131
		f 4 1881 1882 1919 1920
		mu 0 4 2132 2133 2134 2135
		f 4 1883 -1883 1884 1885
		mu 0 4 2136 2134 2133 2137
		f 4 1886 -1886 1887 1888
		mu 0 4 2138 2136 2137 2139
		f 4 1889 1890 1891 1892
		mu 0 4 2140 2141 2142 2143
		f 4 -1892 1893 1894 1895
		mu 0 4 2143 2142 2144 2145
		f 4 1896 -1893 1897 -1876
		mu 0 4 2127 2140 2143 2128
		f 4 -1898 -1896 1898 -1879
		mu 0 4 2128 2143 2145 2130
		f 4 1899 1900 1901 1902
		mu 0 4 2146 2147 2148 2149
		f 4 1903 -1902 1960 1961
		mu 0 4 2150 2149 2148 2151
		f 4 1904 -1894 1905 1906
		mu 0 4 2152 2144 2142 2153
		f 4 -1906 1907 1908 1909
		mu 0 4 2153 2142 2154 2146
		f 4 -1900 -1909 1911 1912
		mu 0 4 2147 2146 2154 2155
		f 3 -1891 1910 -1908
		mu 0 3 2142 2141 2154
		f 4 -1912 1913 1914 1915
		mu 0 4 2155 2154 2095 2094
		f 4 1916 -1885 1917 -1881
		mu 0 4 2131 2137 2133 2129
		f 4 -1918 -1882 1918 -1878
		mu 0 4 2129 2133 2132 2126
		f 4 1921 -1921 1922 -1855
		mu 0 4 2105 2132 2135 2102
		f 4 1923 1924 -1888 1925
		mu 0 4 2156 2157 2139 2137
		f 4 1926 -1851 -1914 1927
		mu 0 4 2158 2100 2095 2154
		f 4 1929 1928 1930 1931
		mu 0 4 2159 2109 2160 2161
		f 4 -1932 1932 1958 1957
		mu 0 4 2159 2161 2152 2150
		f 3 -1933 1933 1934
		mu 0 3 2152 2161 2162
		f 3 -1919 1935 1936
		mu 0 3 2126 2132 2163
		f 4 -1875 -1937 1937 1938
		mu 0 4 2127 2126 2163 2164
		f 4 -1897 -1939 1939 1940
		mu 0 4 2140 2127 2164 2165
		f 4 -1890 -1941 1941 1942
		mu 0 4 2141 2140 2165 2166
		f 3 -1926 1943 1944
		mu 0 3 2156 2137 2167
		f 3 -1944 -1917 1945
		mu 0 3 2167 2137 2131
		f 4 1946 -1946 -1880 1947
		mu 0 4 2168 2167 2131 2130
		f 4 1948 -1948 -1899 1949
		mu 0 4 2169 2168 2130 2145
		f 4 1950 -1950 -1895 1951
		mu 0 4 2170 2169 2145 2144
		f 4 1952 -1952 -1905 -1935
		mu 0 4 2162 2170 2144 2152
		f 4 1953 -1928 -1911 -1943
		mu 0 4 2166 2158 2154 2141
		f 3 1954 1955 -1936
		mu 0 3 2132 2171 2163
		f 4 1956 -1955 -1922 -1854
		mu 0 4 2104 2171 2132 2105
		f 4 -1904 -1959 -1907 1959
		mu 0 4 2149 2150 2152 2153
		f 3 -1960 -1910 -1903
		mu 0 3 2149 2153 2146
		f 4 -1958 -1962 1962 1963
		mu 0 4 2159 2150 2151 2172
		f 4 -1930 -1964 1964 1965
		mu 0 4 2109 2159 2172 2106
		f 4 -1925 1966 1967 -1889
		mu 0 4 2139 2157 2173 2138
		f 4 -1849 1968 1969 -1842
		mu 0 4 2092 2101 2174 2093
		f 4 1970 1971 1972 -1858
		mu 0 4 2110 2175 2160 2111
		f 4 1973 -1973 -1929 -1975
		mu 0 4 2108 2111 2160 2109
		f 4 -1974 1975 -1847 -1859
		mu 0 4 2111 2108 2096 2099
		f 4 -1857 1976 -1844 -1976
		mu 0 4 2108 2107 2097 2096
		f 4 1978 1977 1979 1980
		mu 0 4 2176 2177 2178 2179
		f 4 1981 -1981 1982 1983
		mu 0 4 2180 2181 2182 2183
		f 4 1984 1985 1986 -1887
		mu 0 4 2138 2184 2185 2136
		f 4 -1987 1987 1988 -1884
		mu 0 4 2136 2186 2187 2134
		f 4 -1989 1989 -2018 -1920
		mu 0 4 2134 2188 2189 2135
		f 4 1991 1990 1992 1993
		mu 0 4 2190 2191 2192 2193
		f 4 1994 -1994 1995 1996
		mu 0 4 2194 2195 2196 2197
		f 4 -1993 1997 -1979 1998
		mu 0 4 2198 2199 2200 2201
		f 4 -1996 -1999 -1982 1999
		mu 0 4 2202 2203 2204 2205
		f 4 2001 2000 -2059 -1961
		mu 0 4 2148 2206 2207 2151
		f 4 2002 -2002 -1901 2003
		mu 0 4 2208 2209 2148 2147
		f 4 2004 -2004 -1913 2011
		mu 0 4 2210 2211 2147 2155
		f 4 2005 -2005 2006 2007
		mu 0 4 2212 2213 2214 2215
		f 4 2008 -2008 -1995 2009
		mu 0 4 2216 2217 2218 2219
		f 3 2010 -1992 -2007
		mu 0 3 2220 2221 2222
		f 4 2012 -2012 -1916 2013
		mu 0 4 2223 2224 2155 2094
		f 4 -1988 2014 -1983 2015
		mu 0 4 2225 2226 2227 2228
		f 4 -1990 -2016 -1980 2016
		mu 0 4 2229 2230 2231 2232
		f 4 -1869 -1923 2017 2018
		mu 0 4 2233 2102 2135 2234
		f 4 2019 -1986 2020 2021
		mu 0 4 2235 2236 2237 2238
		f 4 2022 -2013 -1865 2023
		mu 0 4 2239 2240 2241 2242
		f 4 2024 2025 2026 2027
		mu 0 4 2243 2244 2245 2246
		f 4 2028 -2027 2053 2054
		mu 0 4 2247 2248 2249 2250
		f 3 -2029 2029 2030
		mu 0 3 2251 2252 2253
		f 4 2031 2032 2033 -1991
		mu 0 4 2254 2255 2256 2257
		f 4 -2034 2034 2035 -1998
		mu 0 4 2258 2259 2260 2261
		f 4 -2036 2036 2037 -1978
		mu 0 4 2262 2263 2264 2265
		f 3 -2038 2038 -2017
		mu 0 3 2266 2267 2268
		f 3 -2020 2039 2040
		mu 0 3 2269 2270 2271
		f 3 -2041 2041 -2015
		mu 0 3 2272 2273 2274
		f 4 -2042 2042 2043 -1984
		mu 0 4 2275 2276 2277 2278
		f 4 -2044 2044 2045 -2000
		mu 0 4 2279 2280 2281 2282
		f 4 -2046 2046 2047 -1997
		mu 0 4 2283 2284 2285 2286
		f 4 -2048 2048 -2030 -2010
		mu 0 4 2287 2288 2289 2290
		f 4 -2032 -2011 -2023 2049
		mu 0 4 2291 2292 2293 2294
		f 3 2050 2051 -2039
		mu 0 3 2295 2296 2297
		f 4 -1870 -2019 -2052 2052
		mu 0 4 2298 2299 2300 2301
		f 4 -2055 -2001 2055 -2009
		mu 0 4 2302 2303 2304 2305
		f 3 -2056 -2003 -2006
		mu 0 3 2306 2307 2308
		f 4 2056 -1965 2057 -2026
		mu 0 4 2309 2106 2172 2310
		f 4 -2058 -1963 2058 -2054
		mu 0 4 2311 2172 2151 2312
		f 4 -1985 -1968 2059 -2021
		mu 0 4 2313 2138 2173 2314
		f 4 -1861 -1970 2060 -1867
		mu 0 4 2315 2093 2174 2316
		f 4 2062 2061 2064 -2025
		mu 0 4 2317 2318 2319 2320
		f 4 -1874 -2063 2063 -1971
		mu 0 4 2110 2321 2322 2175
		f 4 -1873 -1862 2065 -2062
		mu 0 4 2323 2324 2325 2326;
	setAttr ".fc[1000:1499]"
		f 4 -2066 -1864 -1977 -1872
		mu 0 4 2327 2328 2097 2107
		f 4 2066 2067 2068 2069
		mu 0 4 2329 2330 2331 2332
		f 4 2071 2070 2127 -2076
		mu 0 4 2333 2334 2335 2336
		f 4 2072 -2072 2073 2074
		mu 0 4 2337 2334 2333 2338
		f 4 2076 2075 -2130 -2080
		mu 0 4 2339 2333 2336 2340
		f 4 -2074 -2077 2077 2078
		mu 0 4 2338 2333 2341 2342
		f 4 2080 2079 2126 -2084
		mu 0 4 2343 2344 2345 2346
		f 4 -2078 -2081 2081 2082
		mu 0 4 2347 2348 2349 2350
		f 4 2084 2083 2128 -2071
		mu 0 4 2334 2351 2352 2335
		f 4 -2082 -2085 -2073 2085
		mu 0 4 2353 2354 2334 2337
		f 4 -2075 2086 2087 2088
		mu 0 4 2337 2338 2355 2356
		f 4 -2088 2089 2090 2091
		mu 0 4 2356 2355 2357 2358
		f 4 2092 -2091 -2098 -2135
		mu 0 4 2359 2358 2357 2360
		f 4 -2079 2093 2094 -2087
		mu 0 4 2361 2362 2363 2364
		f 4 -2095 2095 2096 -2090
		mu 0 4 2364 2363 2365 2366
		f 4 2097 -2097 -2105 -2140
		mu 0 4 2367 2366 2365 2368
		f 4 -2083 2098 2099 -2094
		mu 0 4 2369 2370 2371 2372
		f 4 -2100 2100 2101 -2096
		mu 0 4 2373 2374 2375 2376
		f 4 -2102 2102 2103 2104
		mu 0 4 2377 2378 2379 2380
		f 4 -2104 2105 2106 2107
		mu 0 4 2380 2381 2382 2383
		f 4 -2107 2108 2109 2110
		mu 0 4 2383 2382 2384 2385
		f 4 2111 -2110 2123 -2122
		mu 0 4 2386 2385 2384 2387
		f 3 -2086 -2089 2112
		mu 0 3 2388 2389 2390
		f 3 -2113 2113 -2099
		mu 0 3 2388 2390 2391
		f 4 -2114 -2092 2114 -2101
		mu 0 4 2391 2390 2392 2393
		f 4 -2103 -2115 -2093 -2143
		mu 0 4 2394 2393 2392 2395
		f 4 -2067 2115 2116 2117
		mu 0 4 2330 2329 2396 2397
		f 4 2118 -2117 -2126 -2137
		mu 0 4 2398 2399 2396 2400
		f 4 -2068 -2118 2119 2120
		mu 0 4 2401 2402 2403 2404
		f 4 -2112 -2120 -2119 2137
		mu 0 4 2405 2404 2403 2406
		f 4 -2069 -2121 2121 2122
		mu 0 4 2407 2408 2386 2409
		f 4 -2070 -2123 2124 -2116
		mu 0 4 2410 2411 2412 2413
		f 4 2125 -2125 -2124 2140
		mu 0 4 2414 2413 2412 2415
		f 4 -2129 -2127 2129 -2128
		mu 0 4 2335 2416 2417 2336
		f 4 2131 2130 2136 2135
		mu 0 4 2418 2419 2420 2421
		f 4 2132 -2132 2133 2134
		mu 0 4 2422 2423 2424 2359
		f 4 -2138 -2131 2138 -2111
		mu 0 4 2405 2406 2425 2426
		f 4 -2139 -2133 2139 -2108
		mu 0 4 2426 2425 2367 2368
		f 4 -2141 -2109 2141 -2136
		mu 0 4 2414 2415 2427 2428
		f 4 -2142 -2106 2142 -2134
		mu 0 4 2428 2427 2394 2395
		f 4 2144 2143 2145 2146
		mu 0 4 2429 2430 2431 2432
		f 4 2147 -2147 2148 2149
		mu 0 4 2433 2429 2432 2434
		f 4 2150 -2150 2151 2152
		mu 0 4 2435 2433 2434 2436
		f 4 2153 2154 2155 -2151
		mu 0 4 2435 2437 2438 2433
		f 4 -2156 2156 2157 -2148
		mu 0 4 2433 2439 2440 2429
		f 4 -2158 2158 2159 -2145
		mu 0 4 2429 2441 2442 2430
		f 4 -2144 -2160 -2161 -2171
		mu 0 4 2431 2430 2443 2444
		f 4 2160 -2159 2161 2162
		mu 0 4 2445 2446 2447 2448
		f 4 -2162 -2157 2163 2164
		mu 0 4 2449 2450 2451 2452
		f 4 -2164 -2155 2165 2166
		mu 0 4 2453 2454 2455 2456
		f 4 2167 -2152 2168 -2167
		mu 0 4 2457 2436 2434 2458
		f 4 -2169 -2149 2169 -2165
		mu 0 4 2459 2434 2432 2460
		f 4 -2170 -2146 2170 -2163
		mu 0 4 2461 2432 2431 2462
		f 4 2171 2172 2173 2174
		mu 0 4 2463 2464 2465 2466
		f 4 2176 2175 2232 -2181
		mu 0 4 2467 2468 2469 2470
		f 4 2177 -2177 2178 2179
		mu 0 4 2471 2468 2467 2472
		f 4 2181 2180 -2235 -2185
		mu 0 4 2473 2467 2470 2474
		f 4 -2179 -2182 2182 2183
		mu 0 4 2472 2467 2475 2476
		f 4 2185 2184 2231 -2189
		mu 0 4 2477 2478 2479 2480
		f 4 -2183 -2186 2186 2187
		mu 0 4 2481 2482 2483 2484
		f 4 2189 2188 2233 -2176
		mu 0 4 2468 2485 2486 2469
		f 4 -2187 -2190 -2178 2190
		mu 0 4 2487 2488 2468 2471
		f 4 -2180 2191 2192 2193
		mu 0 4 2471 2472 2489 2490
		f 4 -2193 2194 2195 2196
		mu 0 4 2490 2489 2491 2492
		f 4 2197 -2196 -2203 -2240
		mu 0 4 2493 2492 2491 2494
		f 4 -2184 2198 2199 -2192
		mu 0 4 2495 2496 2497 2498
		f 4 -2200 2200 2201 -2195
		mu 0 4 2498 2497 2499 2500
		f 4 2202 -2202 -2210 -2245
		mu 0 4 2501 2500 2499 2502
		f 4 -2188 2203 2204 -2199
		mu 0 4 2503 2504 2505 2506
		f 4 -2205 2205 2206 -2201
		mu 0 4 2507 2508 2509 2510
		f 4 -2207 2207 2208 2209
		mu 0 4 2511 2512 2513 2514
		f 4 -2209 2210 2211 2212
		mu 0 4 2514 2515 2516 2517
		f 4 -2212 2213 2214 2215
		mu 0 4 2517 2516 2518 2519
		f 4 2216 -2215 2228 -2227
		mu 0 4 2520 2519 2518 2521
		f 3 -2191 -2194 2217
		mu 0 3 2522 2523 2524
		f 3 -2218 2218 -2204
		mu 0 3 2522 2524 2525
		f 4 -2219 -2197 2219 -2206
		mu 0 4 2525 2524 2526 2527
		f 4 -2208 -2220 -2198 -2248
		mu 0 4 2528 2527 2526 2529
		f 4 -2172 2220 2221 2222
		mu 0 4 2464 2463 2530 2531
		f 4 2223 -2222 -2231 -2242
		mu 0 4 2532 2533 2530 2534
		f 4 -2173 -2223 2224 2225
		mu 0 4 2535 2536 2537 2538
		f 4 -2217 -2225 -2224 2242
		mu 0 4 2539 2538 2537 2540
		f 4 -2174 -2226 2226 2227
		mu 0 4 2541 2542 2520 2543
		f 4 -2175 -2228 2229 -2221
		mu 0 4 2544 2545 2546 2547
		f 4 2230 -2230 -2229 2245
		mu 0 4 2548 2547 2546 2549
		f 4 -2234 -2232 2234 -2233
		mu 0 4 2469 2550 2551 2470
		f 4 2236 2235 2241 2240
		mu 0 4 2552 2553 2554 2555
		f 4 2237 -2237 2238 2239
		mu 0 4 2556 2557 2558 2493
		f 4 -2243 -2236 2243 -2216
		mu 0 4 2539 2540 2559 2560
		f 4 -2244 -2238 2244 -2213
		mu 0 4 2560 2559 2501 2502
		f 4 -2246 -2214 2246 -2241
		mu 0 4 2548 2549 2561 2562
		f 4 -2247 -2211 2247 -2239
		mu 0 4 2562 2561 2528 2529
		f 4 2249 2248 2250 2251
		mu 0 4 2563 2564 2565 2566
		f 4 2252 -2252 2253 2254
		mu 0 4 2567 2563 2566 2568
		f 4 2255 -2255 2256 2257
		mu 0 4 2569 2567 2568 2570
		f 4 2258 2259 2260 -2256
		mu 0 4 2569 2571 2572 2567
		f 4 -2261 2261 2262 -2253
		mu 0 4 2567 2573 2574 2563
		f 4 -2263 2263 2264 -2250
		mu 0 4 2563 2575 2576 2564
		f 4 -2249 -2265 -2266 -2276
		mu 0 4 2565 2564 2577 2578
		f 4 2265 -2264 2266 2267
		mu 0 4 2579 2580 2581 2582
		f 4 -2267 -2262 2268 2269
		mu 0 4 2583 2584 2585 2586
		f 4 -2269 -2260 2270 2271
		mu 0 4 2587 2588 2589 2590
		f 4 2272 -2257 2273 -2272
		mu 0 4 2591 2570 2568 2592
		f 4 -2274 -2254 2274 -2270
		mu 0 4 2593 2568 2566 2594
		f 4 -2275 -2251 2275 -2268
		mu 0 4 2595 2566 2565 2596
		f 4 2276 2277 -2306 -2308
		mu 0 4 2597 2598 2599 2600
		f 4 2278 2279 2310 -2310
		mu 0 4 2601 2602 2603 2604
		f 4 2280 2281 2307 -2307
		mu 0 4 2605 2606 2607 2608
		f 4 2282 2283 2309 -2288
		mu 0 4 2609 2610 2611 2612
		f 4 2284 2285 2311 -2282
		mu 0 4 2613 2614 2615 2616
		f 4 2286 2287 2315 -2301
		mu 0 4 2617 2618 2619 2620
		f 4 2289 2288 2295 -2292
		mu 0 4 2621 2622 2623 2624
		f 4 -2290 2290 -2299 -2314
		mu 0 4 2625 2626 2627 2628
		f 4 -2291 2291 2292 2293
		mu 0 4 2629 2630 2631 2632
		f 4 2294 -2293 -2297 -2320
		mu 0 4 2633 2634 2635 2636
		f 4 2296 -2296 -2286 2297
		mu 0 4 2637 2638 2639 2640
		f 4 2298 -2294 -2302 2302
		mu 0 4 2641 2642 2643 2644
		f 4 2299 2300 2301 -2295
		mu 0 4 2645 2646 2647 2648
		f 4 2303 -2279 2304 2305
		mu 0 4 2649 2650 2651 2652
		f 4 2306 -2305 -2284 2316
		mu 0 4 2653 2654 2655 2610
		f 4 2308 -2280 -2304 -2278
		mu 0 4 2656 2657 2658 2659
		f 4 -2277 -2312 -2289 2312
		mu 0 4 2660 2661 2615 2662
		f 4 2313 2314 -2309 -2313
		mu 0 4 2663 2664 2665 2666
		f 4 -2303 -2316 -2311 -2315
		mu 0 4 2667 2668 2619 2669
		f 4 -2281 -2317 -2283 2317
		mu 0 4 2670 2671 2610 2672
		f 4 -2285 -2318 -2287 2318
		mu 0 4 2673 2674 2675 2676
		f 4 -2319 -2300 2319 -2298
		mu 0 4 2677 2678 2679 2680
		f 4 2320 2321 2322 2323
		mu 0 4 2681 2682 2683 2684
		f 4 2324 2325 2326 -2322
		mu 0 4 2685 2686 2687 2688
		f 4 2327 2328 2329 -2326
		mu 0 4 2689 2690 2691 2692
		f 4 2330 -2324 2331 -2329
		mu 0 4 2693 2694 2695 2696
		f 4 2332 2333 2334 2335
		mu 0 4 2697 2698 2699 2700
		f 4 2336 2337 -2333 2338
		mu 0 4 2701 2702 2703 2704
		f 4 2339 2340 2341 -2337
		mu 0 4 2705 2706 2707 2708
		f 4 -2339 -2336 2342 -2340
		mu 0 4 2709 2710 2711 2712
		f 4 -2343 -2335 2343 -2341
		mu 0 4 2713 2714 2715 2716
		f 4 2345 2344 2346 2347
		mu 0 4 2717 2718 2719 2720
		f 4 2348 -2348 2349 2350
		mu 0 4 2721 2717 2720 2722
		f 4 2351 -2351 2352 2353
		mu 0 4 2723 2721 2722 2724
		f 4 2354 -2354 2355 2356
		mu 0 4 2725 2723 2724 2726
		f 4 2357 -2357 2358 -2345
		mu 0 4 2727 2725 2726 2728
		f 4 -2356 -2353 2359 -2359
		mu 0 4 2729 2730 2731 2732
		f 3 -2360 -2350 -2347
		mu 0 3 2732 2731 2733
		f 4 -2358 -2346 2360 -2355
		mu 0 4 2725 2727 2717 2723
		f 3 -2361 -2349 -2352
		mu 0 3 2723 2717 2721
		f 4 2361 2362 2363 2364
		mu 0 4 2734 2735 2736 2737
		f 4 2365 2366 -2362 2367
		mu 0 4 2738 2739 2740 2741
		f 4 2368 2369 2370 -2366
		mu 0 4 2742 2743 2744 2745
		f 4 -2368 -2365 2371 -2369
		mu 0 4 2742 2734 2737 2743
		f 4 -2372 -2364 2372 -2370
		mu 0 4 2743 2737 2736 2744
		f 4 2373 2374 -2394 -2396
		mu 0 4 2746 2747 2748 2749
		f 4 2375 2376 2401 -2400
		mu 0 4 2750 2751 2752 2753
		f 4 2377 2378 2395 -2395
		mu 0 4 2754 2755 2756 2757
		f 4 2379 2380 2381 2382
		mu 0 4 2758 2759 2760 2761
		f 4 2383 -2382 2408 2409
		mu 0 4 2762 2763 2764 2765
		f 4 2384 2385 2386 2387
		mu 0 4 2766 2767 2768 2769
		f 4 -2387 2388 2389 2390
		mu 0 4 2770 2771 2772 2773
		f 4 2391 -2376 2392 2393
		mu 0 4 2774 2775 2776 2777
		f 4 2394 -2393 -2399 2410
		mu 0 4 2778 2779 2780 2781
		f 4 2396 -2377 -2392 -2375
		mu 0 4 2782 2783 2784 2785
		f 4 2397 2398 2399 2400
		mu 0 4 2786 2787 2788 2789
		f 4 2402 -2379 2412 -2409
		mu 0 4 2790 2791 2792 2793
		f 4 -2374 -2403 -2381 2403
		mu 0 4 2794 2795 2796 2797
		f 4 2404 2405 -2397 -2404
		mu 0 4 2798 2799 2800 2801
		f 4 2406 -2386 -2414 -2401
		mu 0 4 2802 2803 2804 2805
		f 4 -2389 -2407 -2402 -2406
		mu 0 4 2806 2807 2808 2809
		f 4 2407 -2383 2416 -2391
		mu 0 4 2810 2811 2812 2813
		f 4 -2380 -2408 -2390 -2405
		mu 0 4 2814 2815 2816 2817
		f 4 -2378 -2411 -2398 2411
		mu 0 4 2818 2819 2820 2821
		f 4 -2413 -2412 2413 2414
		mu 0 4 2822 2823 2824 2825
		f 4 -2415 -2385 2415 -2410
		mu 0 4 2826 2827 2828 2829
		f 4 -2384 -2416 -2388 -2417
		mu 0 4 2830 2831 2832 2833
		f 4 2417 2418 -2438 -2440
		mu 0 4 2834 2835 2836 2837
		f 4 2419 2420 2445 -2444
		mu 0 4 2838 2839 2840 2841
		f 4 2421 2422 2439 -2439
		mu 0 4 2842 2843 2834 2837
		f 4 2423 2424 2425 2426
		mu 0 4 2844 2845 2846 2847
		f 4 2427 -2426 2452 2453
		mu 0 4 2848 2847 2846 2849
		f 4 2428 2429 2430 2431
		mu 0 4 2850 2851 2852 2853
		f 4 -2431 2432 2433 2434
		mu 0 4 2853 2852 2854 2855
		f 4 2435 -2420 2436 2437
		mu 0 4 2836 2839 2838 2837
		f 4 2438 -2437 -2443 2454
		mu 0 4 2842 2837 2838 2856
		f 4 2440 -2421 -2436 -2419
		mu 0 4 2857 2858 2839 2836
		f 4 2441 2442 2443 2444
		mu 0 4 2859 2860 2838 2841
		f 4 2446 -2423 2456 -2453
		mu 0 4 2861 2862 2863 2864
		f 4 -2418 -2447 -2425 2447
		mu 0 4 2865 2866 2867 2868
		f 4 2448 2449 -2441 -2448
		mu 0 4 2869 2870 2871 2872
		f 4 2450 -2430 -2458 -2445
		mu 0 4 2873 2874 2875 2876
		f 4 -2433 -2451 -2446 -2450
		mu 0 4 2877 2878 2879 2880
		f 4 2451 -2427 2460 -2435
		mu 0 4 2855 2844 2847 2853
		f 4 -2424 -2452 -2434 -2449
		mu 0 4 2845 2844 2855 2854
		f 4 -2422 -2455 -2442 2455
		mu 0 4 2881 2842 2882 2883
		f 4 -2457 -2456 2457 2458
		mu 0 4 2884 2885 2886 2887
		f 4 -2459 -2429 2459 -2454
		mu 0 4 2849 2851 2850 2848
		f 4 -2428 -2460 -2432 -2461
		mu 0 4 2847 2848 2850 2853
		f 4 2461 2462 2463 2464
		mu 0 4 2888 2889 2890 2891
		f 4 2465 2466 -2462 2467
		mu 0 4 2892 2893 2894 2895
		f 4 2468 2469 2470 -2466
		mu 0 4 2896 2897 2898 2899
		f 4 -2468 -2465 2471 -2469
		mu 0 4 2900 2901 2902 2903
		f 4 -2472 -2464 2472 -2470
		mu 0 4 2904 2905 2906 2907
		f 4 2476 2475 -2475 -2474
		mu 0 4 2908 2911 2910 2909
		f 4 -2481 -2480 -2479 -2478
		mu 0 4 2912 2915 2914 2913
		f 4 -2484 -2477 -2483 -2482
		mu 0 4 2916 2911 2908 2917
		f 4 -2488 -2487 -2486 -2485
		mu 0 4 2918 2921 2920 2919
		f 4 2491 -2491 -2490 -2489
		mu 0 4 2922 2925 2924 2923
		f 4 -2495 2479 -2494 -2493
		mu 0 4 2926 2914 2915 2927
		f 4 2497 2496 -2496 2474
		mu 0 4 2910 2929 2928 2909
		f 4 -2501 2478 -2500 -2499
		mu 0 4 2930 2913 2914 2931
		f 4 -2504 -2503 -2497 -2502
		mu 0 4 2932 2935 2934 2933
		f 4 2484 -2507 -2506 -2505
		mu 0 4 2918 2919 2937 2936
		f 4 2509 2508 2488 -2508
		mu 0 4 2938 2939 2922 2923
		f 4 -2512 -2511 2499 2494
		mu 0 4 2926 2941 2940 2914
		f 4 -2516 -2515 -2514 -2513
		mu 0 4 2942 2945 2944 2943
		f 4 -2519 -2518 -2517 2514
		mu 0 4 2945 2947 2946 2944
		f 4 -2523 -2522 -2521 -2520
		mu 0 4 2948 2951 2950 2949
		f 4 -2526 -2525 2520 -2524
		mu 0 4 2952 2953 2949 2950
		f 4 -2529 -2528 2525 -2527
		mu 0 4 2954 2955 2953 2952
		f 4 -2533 -2532 -2531 -2530
		mu 0 4 2956 2959 2958 2957
		f 4 -2536 -2535 -2534 2531
		mu 0 4 2959 2961 2960 2958
		f 4 2513 -2538 2532 -2537
		mu 0 4 2943 2944 2959 2956
		f 4 2516 -2539 2535 2537
		mu 0 4 2944 2946 2961 2959
		f 4 -2543 -2542 -2541 -2540
		mu 0 4 2962 2965 2964 2963
		f 4 -2546 -2545 2541 -2544
		mu 0 4 2966 2967 2964 2965
		f 4 -2549 -2548 2533 -2547
		mu 0 4 2968 2969 2958 2960
		f 4 -2552 -2551 -2550 2547
		mu 0 4 2969 2962 2970 2958
		f 4 -2554 -2553 2550 2539
		mu 0 4 2963 2971 2970 2962
		f 3 2549 -2555 2530
		mu 0 3 2958 2970 2957
		f 4 -2557 -2476 -2556 2552
		mu 0 4 2971 2910 2911 2970
		f 4 2518 -2559 2524 -2558
		mu 0 4 2947 2945 2949 2953
		f 4 2515 -2560 2519 2558
		mu 0 4 2945 2942 2948 2949
		f 4 2487 -2562 2522 -2561
		mu 0 4 2921 2918 2951 2948
		f 4 -2565 2527 -2564 -2563
		mu 0 4 2972 2953 2955 2973
		f 4 -2567 2555 2483 -2566
		mu 0 4 2974 2970 2911 2916
		f 4 -2571 -2570 -2569 -2568
		mu 0 4 2975 2977 2976 2925
		f 4 -2574 -2573 -2572 2570
		mu 0 4 2975 2966 2968 2977
		f 3 -2576 -2575 2571
		mu 0 3 2968 2978 2977
		f 3 -2578 -2577 2559
		mu 0 3 2942 2979 2948
		f 4 -2580 -2579 2577 2512
		mu 0 4 2943 2980 2979 2942
		f 4 -2582 -2581 2579 2536
		mu 0 4 2956 2981 2980 2943
		f 4 -2584 -2583 2581 2529
		mu 0 4 2957 2982 2981 2956
		f 3 -2586 -2585 2564
		mu 0 3 2972 2983 2953
		f 3 -2587 2557 2584
		mu 0 3 2983 2947 2953
		f 4 -2589 2517 2586 -2588
		mu 0 4 2984 2946 2947 2983
		f 4 -2591 2538 2588 -2590
		mu 0 4 2985 2961 2946 2984
		f 4 -2593 2534 2590 -2592
		mu 0 4 2986 2960 2961 2985
		f 4 2575 2546 2592 -2594
		mu 0 4 2978 2968 2960 2986
		f 4 2583 2554 2566 -2595
		mu 0 4 2982 2957 2970 2974
		f 3 2576 -2597 -2596
		mu 0 3 2948 2979 2987
		f 4 2486 2560 2595 -2598
		mu 0 4 2920 2921 2948 2987
		f 4 -2599 2548 2572 2543
		mu 0 4 2965 2969 2968 2966
		f 3 2542 2551 2598
		mu 0 3 2965 2962 2969
		f 4 -2601 -2600 2545 2573
		mu 0 4 2975 2988 2967 2966
		f 4 -2492 -2602 2600 2567
		mu 0 4 2925 2922 2988 2975
		f 4 2528 -2604 -2603 2563
		mu 0 4 2955 2954 2989 2973
		f 4 2473 -2606 -2605 2482
		mu 0 4 2908 2909 2990 2917
		f 4 2492 -2609 -2608 -2607
		mu 0 4 2926 2927 2976 2991
		f 4 2490 2568 2608 -2610
		mu 0 4 2924 2925 2976 2927
		f 4 2493 2480 -2611 2609
		mu 0 4 2927 2915 2912 2924
		f 4 2610 2477 -2612 2489
		mu 0 4 2924 2912 2913 2923
		f 4 -2616 -2615 -2614 -2613
		mu 0 4 2992 2995 2994 2993
		f 4 -2619 -2618 2615 -2617
		mu 0 4 2996 2999 2998 2997
		f 4 2526 -2622 -2621 -2620
		mu 0 4 2954 2952 3001 3000
		f 4 2523 -2624 -2623 2621
		mu 0 4 2952 2950 3003 3002
		f 4 2521 2625 -2625 2623
		mu 0 4 2950 2951 3005 3004
		f 4 -2630 -2629 -2628 -2627
		mu 0 4 3006 3009 3008 3007
		f 4 -2633 -2632 2629 -2631
		mu 0 4 3010 3013 3012 3011
		f 4 -2635 2612 -2634 2628
		mu 0 4 3014 3017 3016 3015
		f 4 -2636 2616 2634 2631
		mu 0 4 3018 3021 3020 3019
		f 4 2544 2638 -2638 -2637
		mu 0 4 2964 2967 3023 3022
		f 4 -2641 2540 2636 -2640
		mu 0 4 3024 2963 2964 3025
		f 4 -2643 2553 2640 -2642
		mu 0 4 3026 2971 2963 3027
		f 4 -2646 -2645 2641 -2644
		mu 0 4 3028 3031 3030 3029
		f 4 -2648 2630 2645 -2647
		mu 0 4 3032 3035 3034 3033
		f 3 2644 2626 -2649
		mu 0 3 3036 3038 3037
		f 4 -2498 2556 2642 -2650
		mu 0 4 3039 2910 2971 3040
		f 4 -2652 2617 -2651 2622
		mu 0 4 3041 3044 3043 3042
		f 4 -2653 2614 2651 2624
		mu 0 4 3045 3048 3047 3046
		f 4 -2654 -2626 2561 2504
		mu 0 4 3049 3050 2951 2918
		f 4 -2657 -2656 2620 -2655
		mu 0 4 3051 3054 3053 3052
		f 4 -2659 2501 2649 -2658
		mu 0 4 3055 3058 3057 3056
		f 4 -2663 -2662 -2661 -2660
		mu 0 4 3059 3062 3061 3060
		f 4 -2666 -2665 2661 -2664
		mu 0 4 3063 3066 3065 3064
		f 3 -2668 -2667 2663
		mu 0 3 3067 3069 3068
		f 4 2627 -2671 -2670 -2669
		mu 0 4 3070 3073 3072 3071
		f 4 2633 -2673 -2672 2670
		mu 0 4 3074 3077 3076 3075
		f 4 2613 -2675 -2674 2672
		mu 0 4 3078 3081 3080 3079
		f 3 2652 -2676 2674
		mu 0 3 3082 3084 3083
		f 3 -2678 -2677 2654
		mu 0 3 3085 3087 3086
		f 3 2650 -2679 2677
		mu 0 3 3088 3090 3089
		f 4 2618 -2681 -2680 2678
		mu 0 4 3091 3094 3093 3092
		f 4 2635 -2683 -2682 2680
		mu 0 4 3095 3098 3097 3096
		f 4 2632 -2685 -2684 2682
		mu 0 4 3099 3102 3101 3100
		f 4 2647 2666 -2686 2684
		mu 0 4 3103 3106 3105 3104
		f 4 -2687 2657 2648 2668
		mu 0 4 3107 3110 3109 3108
		f 3 2675 -2689 -2688
		mu 0 3 3111 3113 3112
		f 4 -2690 2688 2653 2505
		mu 0 4 3114 3117 3116 3115
		f 4 2646 -2691 2637 2665
		mu 0 4 3118 3121 3120 3119
		f 3 2643 2639 2690
		mu 0 3 3122 3124 3123
		f 4 2660 -2692 2601 -2509
		mu 0 4 3125 3126 2988 2922
		f 4 2664 -2639 2599 2691
		mu 0 4 3127 3128 2967 2988
		f 4 2655 -2693 2603 2619
		mu 0 4 3129 3130 2989 2954
		f 4 2502 -2694 2605 2495
		mu 0 4 3131 3132 2990 2909
		f 4 2659 -2510 -2696 -2695
		mu 0 4 3133 3136 3135 3134
		f 4 2606 -2697 2694 2511
		mu 0 4 2926 2991 3138 3137
		f 4 2695 -2698 2498 2510
		mu 0 4 3139 3142 3141 3140
		f 4 2507 2611 2500 2697
		mu 0 4 3143 2923 2913 3144
		f 4 -2702 -2701 -2700 -2699
		mu 0 4 3145 3148 3147 3146
		f 4 -2706 -2705 -2704 -2703
		mu 0 4 3149 3152 3151 3150
		f 4 2709 2708 -2708 -2707
		mu 0 4 3153 3156 3155 3154
		f 4 -2714 -2713 -2712 -2711
		mu 0 4 3157 3160 3159 3158
		f 4 -2718 -2717 -2716 -2715
		mu 0 4 3161 3164 3163 3162
		f 4 2721 -2721 -2720 -2719
		mu 0 4 3165 3168 3167 3166
		f 4 -2725 -2724 2718 -2723
		mu 0 4 3169 3170 3165 3166
		f 4 2727 2726 -2722 -2726
		mu 0 4 3171 3172 3168 3165
		f 4 -2730 -2729 2725 2723
		mu 0 4 3170 3174 3173 3165
		f 4 -2733 -2732 -2731 2729
		mu 0 4 3170 3177 3176 3175
		f 4 -2736 -2735 -2734 2731
		mu 0 4 3178 3180 3179 3176
		f 4 -2739 -2738 -2737 2734
		mu 0 4 3181 3183 3182 3179
		f 4 -2742 2740 -2740 2737
		mu 0 4 3184 3186 3185 3182
		f 4 -2745 -2744 -2728 -2743
		mu 0 4 3187 3190 3189 3188
		f 4 -2747 -2746 2742 2728
		mu 0 4 3191 3194 3193 3192
		f 4 -2749 -2748 2732 2724
		mu 0 4 3169 3196 3195 3170
		f 4 -2751 -2750 2735 2747
		mu 0 4 3196 3199 3198 3197
		f 4 -2753 -2752 2738 2749
		mu 0 4 3199 3202 3201 3200
		f 3 -2755 2751 -2754
		mu 0 3 3203 3204 3202
		f 3 -2758 -2757 -2756
		mu 0 3 3205 3207 3206
		f 4 -2761 -2760 2757 -2759
		mu 0 4 3208 3185 3209 3205
		f 4 -2763 2739 2760 -2762
		mu 0 4 3210 3182 3185 3208
		f 3 -2765 -2764 2762
		mu 0 3 3211 3212 3182
		f 4 -2767 -2766 2736 2763
		mu 0 4 3213 3214 3179 3182
		f 4 -2769 -2768 2733 2765
		mu 0 4 3215 3216 3176 3179
		f 4 -2770 2746 2730 2767
		mu 0 4 3217 3219 3218 3176
		f 4 -2774 -2773 -2772 -2771
		mu 0 4 3220 3223 3222 3221
		f 4 -2777 -2776 -2775 2772
		mu 0 4 3223 3225 3224 3222
		f 4 -2780 -2779 -2778 2775
		mu 0 4 3225 3227 3226 3224
		f 4 -2783 -2782 -2781 2778
		mu 0 4 3227 3229 3228 3226
		f 4 -2786 -2785 -2784 2781
		mu 0 4 3229 3231 3230 3228
		f 4 -2788 -2787 2700 2784
		mu 0 4 3231 3233 3232 3230
		f 4 2791 2790 -2790 -2789
		mu 0 4 3158 3186 3235 3234
		f 4 -2794 2710 2788 -2793
		mu 0 4 3149 3157 3158 3236
		f 3 2702 -2795 2793
		mu 0 3 3149 3150 3157
		f 4 -2798 -2797 2715 -2796
		mu 0 4 3237 3240 3239 3238
		f 4 -2709 2756 2714 2796
		mu 0 4 3241 3244 3243 3242
		f 3 -2801 -2800 -2799
		mu 0 3 3245 3247 3246
		f 4 -2803 2782 2800 -2802
		mu 0 4 3248 3249 3247 3245
		f 4 -2805 2785 2802 -2804
		mu 0 4 3250 3251 3249 3248
		f 4 2779 -2807 -2806 2799
		mu 0 4 3247 3253 3252 3246
		f 4 2776 -2809 -2808 2806
		mu 0 4 3253 3255 3254 3252
		f 3 -2811 -2810 2808
		mu 0 3 3255 3152 3254
		f 4 -2812 2704 2810 2773
		mu 0 4 3256 3151 3152 3255
		f 4 2811 2770 -2814 -2813
		mu 0 4 3151 3256 3258 3257
		f 3 -2817 -2816 -2815
		mu 0 3 3259 3261 3260
		f 4 2813 2771 2816 2706
		mu 0 4 3262 3265 3264 3263
		f 4 2774 -2819 -2818 2815
		mu 0 4 3266 3268 3267 3260
		f 4 2777 -2821 -2820 2818
		mu 0 4 3269 3272 3271 3270
		f 3 -2823 -2822 2820
		mu 0 3 3272 3273 3271
		f 4 -2825 -2824 2822 2780
		mu 0 4 3274 3275 3273 3272
		f 4 2701 -2826 2824 2783
		mu 0 4 3148 3145 3275 3274
		f 4 2699 2786 -2828 -2827
		mu 0 4 3146 3147 3277 3276
		f 4 2827 2787 2804 -2829
		mu 0 4 3278 3279 3251 3250
		f 4 2703 2812 2707 -2830
		mu 0 4 3150 3151 3281 3280
		f 4 2819 -2832 2761 -2831
		mu 0 4 3282 3271 3283 3208
		f 4 -2833 2817 2830 2758
		mu 0 4 3205 3260 3284 3208
		f 4 -2710 2814 2832 2755
		mu 0 4 3285 3286 3260 3205
		f 4 -2834 2764 2831 2821
		mu 0 4 3273 3288 3287 3271
		f 4 -2835 2766 2833 2823
		mu 0 4 3275 3290 3289 3273
		f 4 -2836 2768 2834 2825
		mu 0 4 3145 3292 3291 3275
		f 4 -2837 2769 2835 2698
		mu 0 4 3146 3294 3293 3145
		f 4 -2839 -2838 2836 2826
		mu 0 4 3295 3169 3296 3146
		f 4 -2840 2745 2837 2722
		mu 0 4 3166 3298 3297 3169
		f 4 2805 -2843 -2842 -2841
		mu 0 4 3246 3252 3299 3203
		f 4 -2844 2798 2840 2753
		mu 0 4 3202 3245 3246 3203
		f 4 -2845 2801 2843 2752
		mu 0 4 3199 3248 3245 3202
		f 4 -2846 2803 2844 2750
		mu 0 4 3196 3250 3248 3199
		f 4 2838 2828 2845 2748
		mu 0 4 3169 3300 3250 3196
		f 4 2717 -2848 2711 -2847
		mu 0 4 3301 3302 3158 3159
		f 4 2759 -2741 -2792 2847
		mu 0 4 3303 3185 3186 3158
		f 4 -2850 -2849 2713 2794
		mu 0 4 3150 3304 3160 3157
		f 4 2797 -2851 2849 2829
		mu 0 4 3305 3237 3306 3150
		f 4 -2854 -2853 -2852 2712
		mu 0 4 3160 3308 3307 3159
		f 4 -2856 -2855 2853 2848
		mu 0 4 3309 3310 3308 3160
		f 4 2851 -2858 -2857 2846
		mu 0 4 3159 3307 3312 3311
		f 4 2852 -2860 -2859 2857
		mu 0 4 3307 3308 3314 3313
		f 4 2861 2860 2859 2854
		mu 0 4 3310 3316 3315 3308
		f 4 -2864 -2861 -2863 2795
		mu 0 4 3317 3319 3318 3237
		f 4 2856 2858 2863 2716
		mu 0 4 3320 3323 3322 3321
		f 4 2862 -2862 2855 2850
		mu 0 4 3237 3325 3310 3324
		f 4 2789 2842 2807 -2865
		mu 0 4 3326 3327 3252 3254
		f 4 2705 2792 2864 2809
		mu 0 4 3152 3149 3328 3254
		f 4 2719 -2866 2744 2839
		mu 0 4 3166 3167 3330 3329
		f 4 2720 -2727 2743 2865
		mu 0 4 3167 3168 3332 3331
		f 4 2841 -2791 2741 2754
		mu 0 4 3203 3333 3186 3204
		f 4 -2870 -2869 -2868 -2867
		mu 0 4 3334 3337 3336 3335
		f 4 -2873 -2872 -2871 2866
		mu 0 4 3335 3339 3338 3334
		f 4 2875 2874 2871 -2874
		mu 0 4 3340 3341 3338 3339
		f 4 -2880 -2879 -2878 -2877
		mu 0 4 3342 3340 3344 3343
		f 4 2873 -2882 -2881 2878
		mu 0 4 3340 3339 3345 3344
		f 4 2872 2867 -2883 2881
		mu 0 4 3339 3335 3336 3345
		f 4 -2885 -2884 2882 2868
		mu 0 4 3346 3347 3345 3336
		f 4 2886 2880 2883 -2886
		mu 0 4 3348 3344 3345 3347
		f 4 2870 -2888 2884 2869
		mu 0 4 3334 3338 3347 3337
		f 4 -2889 2885 2887 -2875
		mu 0 4 3341 3349 3347 3338
		f 4 -2892 -2891 2888 -2890
		mu 0 4 3350 3351 3349 3341
		f 4 2877 -2887 2890 -2893
		mu 0 4 3343 3344 3348 3352
		f 4 2889 -2876 2879 -2894
		mu 0 4 3350 3341 3340 3342
		f 4 2892 2891 2893 2876
		mu 0 4 3343 3351 3350 3342
		f 4 -2898 -2897 -2896 -2895
		mu 0 4 3353 3356 3355 3354
		f 4 -2901 2894 -2900 -2899
		mu 0 4 3357 3360 3359 3358
		f 4 2898 -2904 -2903 -2902
		mu 0 4 3361 3364 3363 3362
		f 4 2901 -2905 2897 2900
		mu 0 4 3365 3368 3367 3366
		f 4 2902 -2906 2896 2904
		mu 0 4 3369 3372 3371 3370
		f 4 -2910 -2909 -2908 -2907
		mu 0 4 3373 3376 3375 3374
		f 4 -2913 -2912 -2911 2906
		mu 0 4 3374 3378 3377 3373
		f 4 2915 2914 2911 -2914
		mu 0 4 3379 3380 3377 3378
		f 4 -2920 -2919 -2918 -2917
		mu 0 4 3381 3379 3383 3382
		f 4 2913 -2922 -2921 2918
		mu 0 4 3379 3378 3384 3383
		f 4 2912 2907 -2923 2921
		mu 0 4 3378 3374 3375 3384
		f 4 -2925 -2924 2922 2908
		mu 0 4 3385 3386 3384 3375
		f 4 2926 2920 2923 -2926
		mu 0 4 3387 3383 3384 3386
		f 4 2910 -2928 2924 2909
		mu 0 4 3373 3377 3386 3376
		f 4 -2929 2925 2927 -2915
		mu 0 4 3380 3388 3386 3377
		f 4 -2932 -2931 2928 -2930
		mu 0 4 3389 3390 3388 3380
		f 4 2917 -2927 2930 -2933
		mu 0 4 3382 3383 3387 3391
		f 4 2929 -2916 2919 -2934
		mu 0 4 3389 3380 3379 3381
		f 4 2932 2931 2933 2916
		mu 0 4 3382 3390 3389 3381
		f 4 -2938 -2937 -2936 -2935
		mu 0 4 3392 3395 3394 3393
		f 4 -2941 2934 -2940 -2939
		mu 0 4 3396 3399 3398 3397
		f 4 2938 -2944 -2943 -2942
		mu 0 4 3400 3403 3402 3401
		f 4 2941 -2945 2937 2940
		mu 0 4 3400 3401 3395 3392
		f 4 2942 -2946 2936 2944
		mu 0 4 3401 3402 3394 3395
		f 4 -2950 -2949 -2948 -2947
		mu 0 4 3404 3407 3406 3405
		f 4 2947 -2953 -2952 -2951
		mu 0 4 3408 3411 3410 3409
		f 4 2951 -2956 -2955 -2954
		mu 0 4 3412 3415 3414 3413
		f 4 2954 -2958 2949 -2957
		mu 0 4 3416 3419 3418 3417
		f 4 -2962 -2961 -2960 -2959
		mu 0 4 3420 3423 3422 3421
		f 4 -2965 -2964 2961 -2963
		mu 0 4 3424 3425 3423 3420
		f 4 -2968 -2967 2964 -2966
		mu 0 4 3426 3427 3425 3424
		f 4 -2971 -2970 2967 -2969
		mu 0 4 3428 3429 3427 3426
		f 4 2959 -2973 2970 -2972
		mu 0 4 3430 3431 3429 3428
		f 4 2972 -2974 2966 2969
		mu 0 4 3432 3435 3434 3433
		f 3 2960 2963 2973
		mu 0 3 3435 3436 3434
		f 4 2968 -2975 2958 2971
		mu 0 4 3428 3426 3420 3430
		f 3 2965 2962 2974
		mu 0 3 3426 3424 3420
		f 4 -2979 -2978 -2977 -2976
		mu 0 4 3437 3440 3439 3438
		f 4 -2982 2975 -2981 -2980
		mu 0 4 3441 3444 3443 3442
		f 4 2979 -2985 -2984 -2983
		mu 0 4 3445 3448 3447 3446
		f 4 2982 -2986 2978 2981
		mu 0 4 3449 3452 3451 3450
		f 4 2983 -2987 2977 2985
		mu 0 4 3453 3456 3455 3454
		f 4 2990 2989 -2989 -2988
		mu 0 4 3457 3460 3459 3458
		f 4 2994 -2994 -2993 -2992
		mu 0 4 3461 3464 3463 3462
		f 4 2997 -2991 -2997 -2996
		mu 0 4 3465 3468 3467 3466
		f 4 -3002 -3001 -3000 -2999
		mu 0 4 3469 3472 3471 3470
		f 4 -3005 -3004 3000 -3003
		mu 0 4 3473 3476 3475 3474
		f 4 -3009 -3008 -3007 -3006
		mu 0 4 3477 3480 3479 3478
		f 4 -3012 -3011 -3010 3007
		mu 0 4 3481 3484 3483 3482
		f 4 -2990 -3014 2991 -3013
		mu 0 4 3485 3488 3487 3486
		f 4 -3016 3014 3013 -2998
		mu 0 4 3489 3492 3491 3490
		f 4 2988 3012 2992 -3017
		mu 0 4 3493 3496 3495 3494
		f 4 -3019 -2995 -3015 -3018
		mu 0 4 3497 3500 3499 3498
		f 4 3003 -3021 2996 -3020
		mu 0 4 3501 3504 3503 3502
		f 4 -3022 2999 3019 2987
		mu 0 4 3505 3508 3507 3506
		f 4 3021 3016 -3024 -3023
		mu 0 4 3509 3512 3511 3510
		f 4 3018 3025 3006 -3025
		mu 0 4 3513 3516 3515 3514
		f 4 3023 2993 3024 3009
		mu 0 4 3517 3520 3519 3518
		f 4 3011 -3028 3001 -3027
		mu 0 4 3521 3524 3523 3522
		f 4 3022 3010 3026 2998
		mu 0 4 3525 3528 3527 3526
		f 4 -3029 3017 3015 2995
		mu 0 4 3529 3532 3531 3530
		f 4 -3030 -3026 3028 3020
		mu 0 4 3533 3536 3535 3534
		f 4 3004 -3031 3005 3029
		mu 0 4 3537 3540 3539 3538
		f 4 3027 3008 3030 3002
		mu 0 4 3541 3544 3543 3542
		f 4 3034 3033 -3033 -3032
		mu 0 4 3545 3548 3547 3546
		f 4 3038 -3038 -3037 -3036
		mu 0 4 3549 3552 3551 3550
		f 4 3041 -3035 -3041 -3040
		mu 0 4 3553 3548 3545 3554
		f 4 -3046 -3045 -3044 -3043
		mu 0 4 3555 3558 3557 3556
		f 4 -3049 -3048 3044 -3047
		mu 0 4 3559 3560 3557 3558
		f 4 -3053 -3052 -3051 -3050
		mu 0 4 3561 3564 3563 3562
		f 4 -3056 -3055 -3054 3051
		mu 0 4 3564 3566 3565 3563
		f 4 -3034 -3058 3035 -3057
		mu 0 4 3547 3548 3549 3550
		f 4 -3060 3058 3057 -3042
		mu 0 4 3553 3567 3549 3548
		f 4 3032 3056 3036 -3061
		mu 0 4 3568 3547 3550 3569
		f 4 -3063 -3039 -3059 -3062
		mu 0 4 3570 3552 3549 3571
		f 4 3047 -3065 3040 -3064
		mu 0 4 3572 3575 3574 3573
		f 4 -3066 3043 3063 3031
		mu 0 4 3576 3579 3578 3577
		f 4 3065 3060 -3068 -3067
		mu 0 4 3580 3583 3582 3581
		f 4 3062 3069 3050 -3069
		mu 0 4 3584 3587 3586 3585
		f 4 3067 3037 3068 3053
		mu 0 4 3588 3591 3590 3589
		f 4 3055 -3072 3045 -3071
		mu 0 4 3566 3564 3558 3555
		f 4 3066 3054 3070 3042
		mu 0 4 3556 3565 3566 3555
		f 4 -3073 3061 3059 3039
		mu 0 4 3592 3594 3593 3553
		f 4 -3074 -3070 3072 3064
		mu 0 4 3595 3598 3597 3596
		f 4 3048 -3075 3049 3073
		mu 0 4 3560 3559 3561 3562
		f 4 3071 3052 3074 3046
		mu 0 4 3558 3564 3561 3559
		f 4 -3079 -3078 -3077 -3076
		mu 0 4 3599 3602 3601 3600
		f 4 -3083 -3082 -3081 -3080
		mu 0 4 3603 3606 3605 3604
		f 4 3086 3085 -3085 -3084
		mu 0 4 3607 3610 3609 3608
		f 4 -3091 -3090 -3089 -3088
		mu 0 4 3611 3614 3613 3612
		f 4 -3095 -3094 -3093 -3092
		mu 0 4 3615 3618 3617 3616
		f 4 3098 -3098 -3097 -3096
		mu 0 4 3619 3622 3621 3620
		f 4 -3102 -3101 3095 -3100
		mu 0 4 3623 3624 3619 3620
		f 4 3104 3103 -3099 -3103
		mu 0 4 3625 3626 3622 3619
		f 4 -3107 -3106 3102 3100
		mu 0 4 3624 3628 3627 3619;
	setAttr ".fc[1500:1999]"
		f 4 -3110 -3109 -3108 3106
		mu 0 4 3624 3631 3630 3629
		f 4 -3113 -3112 -3111 3108
		mu 0 4 3632 3634 3633 3630
		f 4 -3116 -3115 -3114 3111
		mu 0 4 3635 3637 3636 3633
		f 4 -3119 3117 -3117 3114
		mu 0 4 3638 3640 3639 3636
		f 4 -3122 -3121 -3105 -3120
		mu 0 4 3641 3644 3643 3642
		f 4 -3124 -3123 3119 3105
		mu 0 4 3645 3648 3647 3646
		f 4 -3126 -3125 3109 3101
		mu 0 4 3623 3650 3649 3624
		f 4 -3128 -3127 3112 3124
		mu 0 4 3650 3653 3652 3651
		f 4 -3130 -3129 3115 3126
		mu 0 4 3653 3656 3655 3654
		f 3 -3132 3128 -3131
		mu 0 3 3657 3658 3656
		f 3 -3135 -3134 -3133
		mu 0 3 3659 3661 3660
		f 4 -3138 -3137 3134 -3136
		mu 0 4 3662 3639 3663 3659
		f 4 -3140 3116 3137 -3139
		mu 0 4 3664 3636 3639 3662
		f 3 -3142 -3141 3139
		mu 0 3 3665 3666 3636
		f 4 -3144 -3143 3113 3140
		mu 0 4 3667 3668 3633 3636
		f 4 -3146 -3145 3110 3142
		mu 0 4 3669 3670 3630 3633
		f 4 -3147 3123 3107 3144
		mu 0 4 3671 3673 3672 3630
		f 4 -3151 -3150 -3149 -3148
		mu 0 4 3674 3677 3676 3675
		f 4 -3154 -3153 -3152 3149
		mu 0 4 3677 3679 3678 3676
		f 4 -3157 -3156 -3155 3152
		mu 0 4 3679 3681 3680 3678
		f 4 -3160 -3159 -3158 3155
		mu 0 4 3681 3683 3682 3680
		f 4 -3163 -3162 -3161 3158
		mu 0 4 3683 3685 3684 3682
		f 4 -3165 -3164 3077 3161
		mu 0 4 3685 3687 3686 3684
		f 4 3168 3167 -3167 -3166
		mu 0 4 3612 3640 3689 3688
		f 4 -3171 3087 3165 -3170
		mu 0 4 3603 3611 3612 3690
		f 3 3079 -3172 3170
		mu 0 3 3603 3604 3611
		f 4 -3175 -3174 3092 -3173
		mu 0 4 3691 3694 3693 3692
		f 4 -3086 3133 3091 3173
		mu 0 4 3695 3698 3697 3696
		f 3 -3178 -3177 -3176
		mu 0 3 3699 3701 3700
		f 4 -3180 3159 3177 -3179
		mu 0 4 3702 3703 3701 3699
		f 4 -3182 3162 3179 -3181
		mu 0 4 3704 3705 3703 3702
		f 4 3156 -3184 -3183 3176
		mu 0 4 3701 3707 3706 3700
		f 4 3153 -3186 -3185 3183
		mu 0 4 3707 3709 3708 3706
		f 3 -3188 -3187 3185
		mu 0 3 3709 3606 3708
		f 4 -3189 3081 3187 3150
		mu 0 4 3710 3605 3606 3709
		f 4 3188 3147 -3191 -3190
		mu 0 4 3605 3710 3712 3711
		f 3 -3194 -3193 -3192
		mu 0 3 3713 3715 3714
		f 4 3190 3148 3193 3083
		mu 0 4 3716 3719 3718 3717
		f 4 3151 -3196 -3195 3192
		mu 0 4 3720 3722 3721 3714
		f 4 3154 -3198 -3197 3195
		mu 0 4 3723 3726 3725 3724
		f 3 -3200 -3199 3197
		mu 0 3 3726 3727 3725
		f 4 -3202 -3201 3199 3157
		mu 0 4 3728 3729 3727 3726
		f 4 3078 -3203 3201 3160
		mu 0 4 3602 3599 3729 3728
		f 4 3076 3163 -3205 -3204
		mu 0 4 3600 3601 3731 3730
		f 4 3204 3164 3181 -3206
		mu 0 4 3732 3733 3705 3704
		f 4 3080 3189 3084 -3207
		mu 0 4 3604 3605 3735 3734
		f 4 3196 -3209 3138 -3208
		mu 0 4 3736 3725 3737 3662
		f 4 -3210 3194 3207 3135
		mu 0 4 3659 3714 3738 3662
		f 4 -3087 3191 3209 3132
		mu 0 4 3739 3740 3714 3659
		f 4 -3211 3141 3208 3198
		mu 0 4 3727 3742 3741 3725
		f 4 -3212 3143 3210 3200
		mu 0 4 3729 3744 3743 3727
		f 4 -3213 3145 3211 3202
		mu 0 4 3599 3746 3745 3729
		f 4 -3214 3146 3212 3075
		mu 0 4 3600 3748 3747 3599
		f 4 -3216 -3215 3213 3203
		mu 0 4 3749 3623 3750 3600
		f 4 -3217 3122 3214 3099
		mu 0 4 3620 3752 3751 3623
		f 4 3182 -3220 -3219 -3218
		mu 0 4 3700 3706 3753 3657
		f 4 -3221 3175 3217 3130
		mu 0 4 3656 3699 3700 3657
		f 4 -3222 3178 3220 3129
		mu 0 4 3653 3702 3699 3656
		f 4 -3223 3180 3221 3127
		mu 0 4 3650 3704 3702 3653
		f 4 3215 3205 3222 3125
		mu 0 4 3623 3754 3704 3650
		f 4 3094 -3225 3088 -3224
		mu 0 4 3755 3756 3612 3613
		f 4 3136 -3118 -3169 3224
		mu 0 4 3757 3639 3640 3612
		f 4 -3227 -3226 3090 3171
		mu 0 4 3604 3758 3614 3611
		f 4 3174 -3228 3226 3206
		mu 0 4 3759 3691 3760 3604
		f 4 -3231 -3230 -3229 3089
		mu 0 4 3614 3762 3761 3613
		f 4 -3233 -3232 3230 3225
		mu 0 4 3763 3764 3762 3614
		f 4 3228 -3235 -3234 3223
		mu 0 4 3613 3761 3766 3765
		f 4 3229 -3237 -3236 3234
		mu 0 4 3761 3762 3768 3767
		f 4 3238 3237 3236 3231
		mu 0 4 3764 3770 3769 3762
		f 4 -3241 -3238 -3240 3172
		mu 0 4 3771 3773 3772 3691
		f 4 3233 3235 3240 3093
		mu 0 4 3774 3777 3776 3775
		f 4 3239 -3239 3232 3227
		mu 0 4 3691 3779 3764 3778
		f 4 3166 3219 3184 -3242
		mu 0 4 3780 3781 3706 3708
		f 4 3082 3169 3241 3186
		mu 0 4 3606 3603 3782 3708
		f 4 3096 -3243 3121 3216
		mu 0 4 3620 3621 3784 3783
		f 4 3097 -3104 3120 3242
		mu 0 4 3621 3622 3786 3785
		f 4 3218 -3168 3118 3131
		mu 0 4 3657 3787 3640 3658
		f 4 3246 3245 -3245 -3244
		mu 0 4 3788 3791 3790 3789
		f 4 3250 -3250 -3249 -3248
		mu 0 4 3792 3795 3794 3793
		f 4 3253 -3247 -3253 -3252
		mu 0 4 3796 3799 3798 3797
		f 4 3256 -3251 -3256 -3255
		mu 0 4 3800 3803 3802 3801
		f 4 3252 -3260 -3259 -3258
		mu 0 4 3804 3807 3806 3805
		f 4 3262 -3262 -3257 -3261
		mu 0 4 3808 3811 3810 3809
		f 4 3266 -3266 -3265 -3264
		mu 0 4 3812 3815 3814 3813
		f 4 3269 3268 -3268 3263
		mu 0 4 3816 3819 3818 3817
		f 4 -3272 -3271 -3267 3267
		mu 0 4 3820 3823 3822 3821
		f 4 3274 3273 3270 -3273
		mu 0 4 3824 3827 3826 3825
		f 4 -3276 3258 3265 -3274
		mu 0 4 3828 3831 3830 3829
		f 4 -3278 3276 3271 -3269
		mu 0 4 3832 3835 3834 3833
		f 4 3272 -3277 -3263 -3279
		mu 0 4 3836 3839 3838 3837
		f 4 -3246 -3281 3247 -3280
		mu 0 4 3840 3843 3842 3841
		f 4 -3282 3255 3280 -3254
		mu 0 4 3844 3801 3846 3845
		f 4 3244 3279 3248 -3283
		mu 0 4 3847 3850 3849 3848
		f 4 -3284 3264 3259 3243
		mu 0 4 3851 3853 3806 3852
		f 4 3283 3282 -3285 -3270
		mu 0 4 3854 3857 3856 3855
		f 4 3284 3249 3261 3277
		mu 0 4 3858 3860 3810 3859
		f 4 -3286 3254 3281 3251
		mu 0 4 3861 3863 3801 3862
		f 4 -3287 3260 3285 3257
		mu 0 4 3864 3867 3866 3865
		f 4 3275 -3275 3278 3286
		mu 0 4 3868 3871 3870 3869
		f 4 3290 3289 -3289 -3288
		mu 0 4 3872 3875 3874 3873
		f 4 -3295 -3294 -3293 -3292
		mu 0 4 3876 3879 3878 3877
		f 4 -3298 -3291 -3297 -3296
		mu 0 4 3880 3875 3872 3881
		f 4 -3302 -3301 -3300 -3299
		mu 0 4 3882 3885 3884 3883
		f 4 3305 -3305 -3304 -3303
		mu 0 4 3886 3889 3888 3887
		f 4 -3309 3293 -3308 -3307
		mu 0 4 3890 3878 3879 3891
		f 4 3311 3310 -3310 3288
		mu 0 4 3874 3893 3892 3873
		f 4 -3315 3292 -3314 -3313
		mu 0 4 3894 3877 3878 3895
		f 4 -3318 -3317 -3311 -3316
		mu 0 4 3896 3899 3898 3897
		f 4 3298 -3321 -3320 -3319
		mu 0 4 3882 3883 3901 3900
		f 4 3323 3322 3302 -3322
		mu 0 4 3902 3903 3886 3887
		f 4 -3326 -3325 3313 3308
		mu 0 4 3890 3905 3904 3878
		f 4 -3330 -3329 -3328 -3327
		mu 0 4 3906 3909 3908 3907
		f 4 -3333 -3332 -3331 3328
		mu 0 4 3909 3911 3910 3908
		f 4 -3337 -3336 -3335 -3334
		mu 0 4 3912 3915 3914 3913
		f 4 -3340 -3339 3334 -3338
		mu 0 4 3916 3917 3913 3914
		f 4 -3343 -3342 3339 -3341
		mu 0 4 3918 3919 3917 3916
		f 4 -3347 -3346 -3345 -3344
		mu 0 4 3920 3923 3922 3921
		f 4 -3350 -3349 -3348 3345
		mu 0 4 3923 3925 3924 3922
		f 4 3327 -3352 3346 -3351
		mu 0 4 3907 3908 3923 3920
		f 4 3330 -3353 3349 3351
		mu 0 4 3908 3910 3925 3923
		f 4 -3357 -3356 -3355 -3354
		mu 0 4 3926 3929 3928 3927
		f 4 -3360 -3359 3355 -3358
		mu 0 4 3930 3931 3928 3929
		f 4 -3363 -3362 3347 -3361
		mu 0 4 3932 3933 3922 3924
		f 4 -3366 -3365 -3364 3361
		mu 0 4 3933 3926 3934 3922
		f 4 -3368 -3367 3364 3353
		mu 0 4 3927 3935 3934 3926
		f 3 3363 -3369 3344
		mu 0 3 3922 3934 3921
		f 4 -3371 -3290 -3370 3366
		mu 0 4 3935 3874 3875 3934
		f 4 3332 -3373 3338 -3372
		mu 0 4 3911 3909 3913 3917
		f 4 3329 -3374 3333 3372
		mu 0 4 3909 3906 3912 3913
		f 4 3301 -3376 3336 -3375
		mu 0 4 3885 3882 3915 3912
		f 4 -3379 3341 -3378 -3377
		mu 0 4 3936 3917 3919 3937
		f 4 -3381 3369 3297 -3380
		mu 0 4 3938 3934 3875 3880
		f 4 -3385 -3384 -3383 -3382
		mu 0 4 3939 3941 3940 3889
		f 4 -3388 -3387 -3386 3384
		mu 0 4 3939 3930 3932 3941
		f 3 -3390 -3389 3385
		mu 0 3 3932 3942 3941
		f 3 -3392 -3391 3373
		mu 0 3 3906 3943 3912
		f 4 -3394 -3393 3391 3326
		mu 0 4 3907 3944 3943 3906
		f 4 -3396 -3395 3393 3350
		mu 0 4 3920 3945 3944 3907
		f 4 -3398 -3397 3395 3343
		mu 0 4 3921 3946 3945 3920
		f 3 -3400 -3399 3378
		mu 0 3 3936 3947 3917
		f 3 -3401 3371 3398
		mu 0 3 3947 3911 3917
		f 4 -3403 3331 3400 -3402
		mu 0 4 3948 3910 3911 3947
		f 4 -3405 3352 3402 -3404
		mu 0 4 3949 3925 3910 3948
		f 4 -3407 3348 3404 -3406
		mu 0 4 3950 3924 3925 3949
		f 4 3389 3360 3406 -3408
		mu 0 4 3942 3932 3924 3950
		f 4 3397 3368 3380 -3409
		mu 0 4 3946 3921 3934 3938
		f 3 3390 -3411 -3410
		mu 0 3 3912 3943 3951
		f 4 3300 3374 3409 -3412
		mu 0 4 3884 3885 3912 3951
		f 4 -3413 3362 3386 3357
		mu 0 4 3929 3933 3932 3930
		f 3 3356 3365 3412
		mu 0 3 3929 3926 3933
		f 4 -3415 -3414 3359 3387
		mu 0 4 3939 3952 3931 3930
		f 4 -3306 -3416 3414 3381
		mu 0 4 3889 3886 3952 3939
		f 4 3342 -3418 -3417 3377
		mu 0 4 3919 3918 3953 3937
		f 4 3287 -3420 -3419 3296
		mu 0 4 3872 3873 3954 3881
		f 4 3306 -3423 -3422 -3421
		mu 0 4 3890 3891 3940 3955
		f 4 3304 3382 3422 -3424
		mu 0 4 3888 3889 3940 3891
		f 4 3307 3294 -3425 3423
		mu 0 4 3891 3879 3876 3888
		f 4 3424 3291 -3426 3303
		mu 0 4 3888 3876 3877 3887
		f 4 -3430 -3429 -3428 -3427
		mu 0 4 3956 3959 3958 3957
		f 4 -3433 -3432 3429 -3431
		mu 0 4 3960 3963 3962 3961
		f 4 3340 -3436 -3435 -3434
		mu 0 4 3918 3916 3965 3964
		f 4 3337 -3438 -3437 3435
		mu 0 4 3916 3914 3967 3966
		f 4 3335 3439 -3439 3437
		mu 0 4 3914 3915 3969 3968
		f 4 -3444 -3443 -3442 -3441
		mu 0 4 3970 3973 3972 3971
		f 4 -3447 -3446 3443 -3445
		mu 0 4 3974 3977 3976 3975
		f 4 -3449 3426 -3448 3442
		mu 0 4 3978 3981 3980 3979
		f 4 -3450 3430 3448 3445
		mu 0 4 3982 3985 3984 3983
		f 4 3358 3452 -3452 -3451
		mu 0 4 3928 3931 3987 3986
		f 4 -3455 3354 3450 -3454
		mu 0 4 3988 3927 3928 3989
		f 4 -3457 3367 3454 -3456
		mu 0 4 3990 3935 3927 3991
		f 4 -3460 -3459 3455 -3458
		mu 0 4 3992 3995 3994 3993
		f 4 -3462 3444 3459 -3461
		mu 0 4 3996 3999 3998 3997
		f 3 3458 3440 -3463
		mu 0 3 4000 4002 4001
		f 4 -3312 3370 3456 -3464
		mu 0 4 4003 3874 3935 4004
		f 4 -3466 3431 -3465 3436
		mu 0 4 4005 4008 4007 4006
		f 4 -3467 3428 3465 3438
		mu 0 4 4009 4012 4011 4010
		f 4 -3468 -3440 3375 3318
		mu 0 4 4013 4014 3915 3882
		f 4 -3471 -3470 3434 -3469
		mu 0 4 4015 4018 4017 4016
		f 4 -3473 3315 3463 -3472
		mu 0 4 4019 4022 4021 4020
		f 4 -3477 -3476 -3475 -3474
		mu 0 4 4023 4026 4025 4024
		f 4 -3480 -3479 3475 -3478
		mu 0 4 4027 4030 4029 4028
		f 3 -3482 -3481 3477
		mu 0 3 4031 4033 4032
		f 4 3441 -3485 -3484 -3483
		mu 0 4 4034 4037 4036 4035
		f 4 3447 -3487 -3486 3484
		mu 0 4 4038 4041 4040 4039
		f 4 3427 -3489 -3488 3486
		mu 0 4 4042 4045 4044 4043
		f 3 3466 -3490 3488
		mu 0 3 4046 4048 4047
		f 3 -3492 -3491 3468
		mu 0 3 4049 4051 4050
		f 3 3464 -3493 3491
		mu 0 3 4052 4054 4053
		f 4 3432 -3495 -3494 3492
		mu 0 4 4055 4058 4057 4056
		f 4 3449 -3497 -3496 3494
		mu 0 4 4059 4062 4061 4060
		f 4 3446 -3499 -3498 3496
		mu 0 4 4063 4066 4065 4064
		f 4 3461 3480 -3500 3498
		mu 0 4 4067 4070 4069 4068
		f 4 -3501 3471 3462 3482
		mu 0 4 4071 4074 4073 4072
		f 3 3489 -3503 -3502
		mu 0 3 4075 4077 4076
		f 4 -3504 3502 3467 3319
		mu 0 4 4078 4081 4080 4079
		f 4 3460 -3505 3451 3479
		mu 0 4 4082 4085 4084 4083
		f 3 3457 3453 3504
		mu 0 3 4086 4088 4087
		f 4 3474 -3506 3415 -3323
		mu 0 4 4089 4090 3952 3886
		f 4 3478 -3453 3413 3505
		mu 0 4 4091 4092 3931 3952
		f 4 3469 -3507 3417 3433
		mu 0 4 4093 4094 3953 3918
		f 4 3316 -3508 3419 3309
		mu 0 4 4095 4096 3954 3873
		f 4 3473 -3324 -3510 -3509
		mu 0 4 4097 4100 4099 4098
		f 4 3420 -3511 3508 3325
		mu 0 4 3890 3955 4102 4101
		f 4 3509 -3512 3312 3324
		mu 0 4 4103 4106 4105 4104
		f 4 3321 3425 3314 3511
		mu 0 4 4107 3887 3877 4108
		f 4 -3516 -3515 -3514 -3513
		mu 0 4 4109 4112 4111 4110
		f 4 3519 -3519 -3518 -3517
		mu 0 4 4113 4116 4115 4114
		f 4 -3523 -3522 3516 -3521
		mu 0 4 4117 4118 4113 4114
		f 4 3525 3524 -3520 -3524
		mu 0 4 4119 4120 4116 4113
		f 4 -3528 -3527 3523 3521
		mu 0 4 4118 4122 4121 4113
		f 4 3530 -3530 -3526 -3529
		mu 0 4 4123 4126 4125 4124
		f 4 -3533 -3532 3528 3526
		mu 0 4 4127 4130 4129 4128
		f 4 3517 -3535 -3531 -3534
		mu 0 4 4114 4115 4132 4131
		f 4 -3536 3520 3533 3531
		mu 0 4 4133 4117 4114 4134
		f 4 -3539 -3538 -3537 3522
		mu 0 4 4117 4136 4135 4118
		f 4 -3542 -3541 -3540 3537
		mu 0 4 4136 4138 4137 4135
		f 4 3544 3543 3540 -3543
		mu 0 4 4139 4140 4137 4138
		f 4 3536 -3547 -3546 3527
		mu 0 4 4141 4144 4143 4142
		f 4 3539 -3549 -3548 3546
		mu 0 4 4144 4146 4145 4143
		f 4 3550 3549 3548 -3544
		mu 0 4 4147 4148 4145 4146
		f 4 3545 -3553 -3552 3532
		mu 0 4 4149 4152 4151 4150
		f 4 3547 -3555 -3554 3552
		mu 0 4 4153 4156 4155 4154
		f 4 -3550 -3557 -3556 3554
		mu 0 4 4157 4160 4159 4158
		f 4 -3560 -3559 -3558 3556
		mu 0 4 4160 4163 4162 4161
		f 4 -3563 -3562 -3561 3558
		mu 0 4 4163 4165 4164 4162
		f 4 3565 -3565 3561 -3564
		mu 0 4 4166 4167 4164 4165
		f 3 -3567 3538 3535
		mu 0 3 4168 4170 4169
		f 3 3551 -3568 3566
		mu 0 3 4168 4171 4170
		f 4 3553 -3569 3541 3567
		mu 0 4 4171 4173 4172 4170
		f 4 3569 3542 3568 3555
		mu 0 4 4174 4175 4172 4173
		f 4 -3573 -3572 -3571 3512
		mu 0 4 4110 4177 4176 4109
		f 4 3575 3574 3571 -3574
		mu 0 4 4178 4180 4176 4179
		f 4 -3578 -3577 3572 3513
		mu 0 4 4181 4184 4183 4182
		f 4 -3579 3573 3576 3563
		mu 0 4 4185 4186 4183 4184
		f 4 -3580 -3566 3577 3514
		mu 0 4 4187 4189 4166 4188
		f 4 3570 -3581 3579 3515
		mu 0 4 4190 4193 4192 4191
		f 4 -3582 3564 3580 -3575
		mu 0 4 4194 4195 4192 4193
		f 4 3518 -3525 3529 3534
		mu 0 4 4115 4116 4197 4196
		f 4 -3585 -3576 -3584 -3583
		mu 0 4 4198 4201 4200 4199
		f 4 -3545 -3587 3582 -3586
		mu 0 4 4202 4139 4204 4203
		f 4 3562 -3588 3583 3578
		mu 0 4 4185 4206 4205 4186
		f 4 3559 -3551 3585 3587
		mu 0 4 4206 4148 4147 4205
		f 4 3584 -3589 3560 3581
		mu 0 4 4194 4208 4207 4195
		f 4 3586 -3570 3557 3588
		mu 0 4 4208 4175 4174 4207
		f 4 -3593 -3592 -3591 -3590
		mu 0 4 4209 4212 4211 4210
		f 4 -3596 -3595 3592 -3594
		mu 0 4 4213 4214 4212 4209
		f 4 -3599 -3598 3595 -3597
		mu 0 4 4215 4216 4214 4213
		f 4 3596 -3602 -3601 -3600
		mu 0 4 4215 4213 4218 4217
		f 4 3593 -3604 -3603 3601
		mu 0 4 4213 4209 4220 4219
		f 4 3589 -3606 -3605 3603
		mu 0 4 4209 4210 4222 4221
		f 4 3607 3606 3605 3590
		mu 0 4 4211 4224 4223 4210
		f 4 -3610 -3609 3604 -3607
		mu 0 4 4225 4228 4227 4226
		f 4 -3612 -3611 3602 3608
		mu 0 4 4229 4232 4231 4230
		f 4 -3614 -3613 3600 3610
		mu 0 4 4233 4236 4235 4234
		f 4 3613 -3616 3597 -3615
		mu 0 4 4237 4238 4214 4216
		f 4 3611 -3617 3594 3615
		mu 0 4 4239 4240 4212 4214
		f 4 3609 -3608 3591 3616
		mu 0 4 4241 4242 4211 4212
		f 4 -3621 -3620 -3619 -3618
		mu 0 4 4243 4246 4245 4244
		f 4 -1189 3622 3619 -3622
		mu 0 4 4247 4248 4245 4246
		f 3 -3625 -3624 3621
		mu 0 3 4246 4249 4247
		f 3 -3626 -1152 3623
		mu 0 3 4249 4250 4247
		f 4 -3629 -3628 -3627 3620
		mu 0 4 4251 4254 4253 4252
		f 4 3631 -3631 3626 -3630
		mu 0 4 4255 4256 4252 4253
		f 4 -3635 -3634 3629 -3633
		mu 0 4 4257 4258 4255 4253
		f 4 3637 3636 -3636 3634
		mu 0 4 4257 4260 4259 4258
		f 4 3640 -3640 3635 -3639
		mu 0 4 4261 4262 4258 4259
		f 4 -3643 -3642 3638 -3637
		mu 0 4 4260 4263 4261 4259
		f 4 -3646 -3632 -3645 -3644
		mu 0 4 4264 4256 4255 4265
		f 4 -3647 3624 3630 3645
		mu 0 4 4264 4266 4252 4256
		f 3 -3649 3642 -3648
		mu 0 3 4267 4263 4260
		f 3 -1173 -3650 3648
		mu 0 3 4267 4268 4263
		f 4 -3652 -3651 -3641 3641
		mu 0 4 4269 4272 4271 4270
		f 4 -1228 -3653 3651 3649
		mu 0 4 4273 4274 4272 4269
		f 4 -3656 3654 -3654 -1178
		mu 0 4 4275 4278 4277 4276
		f 4 -3658 -3657 -1180 3653
		mu 0 4 4277 4280 4279 4276
		f 4 -3660 -3659 -1183 3656
		mu 0 4 4280 4282 4281 4279
		f 4 -3661 -3623 -1186 3658
		mu 0 4 4282 4245 4248 4281
		f 4 3664 3663 -3663 -3662
		mu 0 4 4283 4286 4285 4284
		f 4 -3668 -3667 3661 -3666
		mu 0 4 4287 4288 4283 4284
		f 4 3670 3657 -3670 -3669
		mu 0 4 4289 4280 4277 4290
		f 4 -3655 -3672 -3664 3669
		mu 0 4 4277 4278 4291 4290
		f 4 -3674 3662 3671 -3673
		mu 0 4 4292 4293 4291 4278
		f 4 3655 -1222 -3675 3672
		mu 0 4 4278 4275 4294 4292
		f 4 3647 3675 3674 -1202
		mu 0 4 4267 4260 4292 4294
		f 4 3660 -3678 -3677 3618
		mu 0 4 4245 4282 4295 4244
		f 4 3659 -3671 -3679 3677
		mu 0 4 4282 4280 4289 4295
		f 4 -3681 3632 3627 -3680
		mu 0 4 4296 4257 4253 4254
		f 4 3667 3681 -3638 3680
		mu 0 4 4296 4297 4260 4257
		f 4 -3676 -3682 3665 3673
		mu 0 4 4292 4260 4297 4293
		f 4 3644 3633 3639 3682
		mu 0 4 4265 4255 4258 4262
		f 4 3678 -3685 -3684 3676
		mu 0 4 4298 4301 4300 4299
		f 4 3668 -3665 -3686 3684
		mu 0 4 4301 4286 4283 4300
		f 4 -3687 3628 3617 3683
		mu 0 4 4300 4303 4302 4299
		f 4 3666 3679 3686 3685
		mu 0 4 4283 4288 4303 4300
		f 4 3646 3643 3688 -3688
		mu 0 4 4304 4307 4306 4305
		f 4 -1177 3625 3687 3689
		mu 0 4 4308 4309 4304 4305
		f 4 -3691 -3689 -3683 3650
		mu 0 4 4272 4305 4306 4271
		f 4 -1224 -3690 3690 3652
		mu 0 4 4274 4308 4305 4272
		f 4 -3695 -3694 -3693 -3692
		mu 0 4 4310 4313 4312 4311
		f 4 -1275 3696 3693 -3696
		mu 0 4 4314 4315 4312 4313
		f 3 -3699 -3698 3695
		mu 0 3 4313 4316 4314
		f 3 -3700 -1238 3697
		mu 0 3 4316 4317 4314
		f 4 -3703 -3702 -3701 3694
		mu 0 4 4318 4321 4320 4319
		f 4 3705 -3705 3700 -3704
		mu 0 4 4322 4323 4319 4320
		f 4 -3709 -3708 3703 -3707
		mu 0 4 4324 4325 4322 4320
		f 4 3711 3710 -3710 3708
		mu 0 4 4324 4327 4326 4325
		f 4 3714 -3714 3709 -3713
		mu 0 4 4328 4329 4325 4326
		f 4 -3717 -3716 3712 -3711
		mu 0 4 4327 4330 4328 4326
		f 4 -3720 -3706 -3719 -3718
		mu 0 4 4331 4323 4322 4332
		f 4 -3721 3698 3704 3719
		mu 0 4 4331 4333 4319 4323
		f 3 -3723 3716 -3722
		mu 0 3 4334 4330 4327
		f 3 -1259 -3724 3722
		mu 0 3 4334 4335 4330
		f 4 -3726 -3725 -3715 3715
		mu 0 4 4336 4339 4338 4337
		f 4 -1314 -3727 3725 3723
		mu 0 4 4340 4341 4339 4336
		f 4 -3730 3728 -3728 -1264
		mu 0 4 4342 4345 4344 4343
		f 4 -3732 -3731 -1266 3727
		mu 0 4 4344 4347 4346 4343
		f 4 -3734 -3733 -1269 3730
		mu 0 4 4347 4349 4348 4346
		f 4 -3735 -3697 -1272 3732
		mu 0 4 4349 4312 4315 4348
		f 4 3738 3737 -3737 -3736
		mu 0 4 4350 4353 4352 4351
		f 4 -3742 -3741 3735 -3740
		mu 0 4 4354 4355 4350 4351
		f 4 3744 3731 -3744 -3743
		mu 0 4 4356 4347 4344 4357
		f 4 -3729 -3746 -3738 3743
		mu 0 4 4344 4345 4358 4357
		f 4 -3748 3736 3745 -3747
		mu 0 4 4359 4360 4358 4345
		f 4 3729 -1308 -3749 3746
		mu 0 4 4345 4342 4361 4359
		f 4 3721 3749 3748 -1288
		mu 0 4 4334 4327 4359 4361
		f 4 3734 -3752 -3751 3692
		mu 0 4 4312 4349 4362 4311
		f 4 3733 -3745 -3753 3751
		mu 0 4 4349 4347 4356 4362
		f 4 -3755 3706 3701 -3754
		mu 0 4 4363 4324 4320 4321
		f 4 3741 3755 -3712 3754
		mu 0 4 4363 4364 4327 4324
		f 4 -3750 -3756 3739 3747
		mu 0 4 4359 4327 4364 4360
		f 4 3718 3707 3713 3756
		mu 0 4 4332 4322 4325 4329
		f 4 3752 -3759 -3758 3750
		mu 0 4 4365 4368 4367 4366
		f 4 3742 -3739 -3760 3758
		mu 0 4 4368 4353 4350 4367
		f 4 -3761 3702 3691 3757
		mu 0 4 4367 4370 4369 4366
		f 4 3740 3753 3760 3759
		mu 0 4 4350 4355 4370 4367
		f 4 3720 3717 3762 -3762
		mu 0 4 4371 4374 4373 4372
		f 4 -1263 3699 3761 3763
		mu 0 4 4375 4376 4371 4372
		f 4 -3765 -3763 -3757 3724
		mu 0 4 4339 4372 4373 4338
		f 4 -1310 -3764 3764 3726
		mu 0 4 4341 4375 4372 4339
		f 4 -3769 -3768 -3767 -3766
		mu 0 4 4377 4380 4379 4378
		f 4 -1361 3770 3767 -3770
		mu 0 4 4381 4382 4379 4380
		f 3 -3773 -3772 3769
		mu 0 3 4380 4383 4381
		f 3 -3774 -1324 3771
		mu 0 3 4383 4384 4381
		f 4 -3777 -3776 -3775 3768
		mu 0 4 4385 4388 4387 4386
		f 4 3779 -3779 3774 -3778
		mu 0 4 4389 4390 4386 4387
		f 4 -3783 -3782 3777 -3781
		mu 0 4 4391 4392 4389 4387
		f 4 3785 3784 -3784 3782
		mu 0 4 4391 4394 4393 4392
		f 4 3788 -3788 3783 -3787
		mu 0 4 4395 4396 4392 4393
		f 4 -3791 -3790 3786 -3785
		mu 0 4 4394 4397 4395 4393
		f 4 -3794 -3780 -3793 -3792
		mu 0 4 4398 4390 4389 4399
		f 4 -3795 3772 3778 3793
		mu 0 4 4398 4400 4386 4390
		f 3 -3797 3790 -3796
		mu 0 3 4401 4397 4394
		f 3 -1345 -3798 3796
		mu 0 3 4401 4402 4397
		f 4 -3800 -3799 -3789 3789
		mu 0 4 4403 4406 4405 4404
		f 4 -1400 -3801 3799 3797
		mu 0 4 4407 4408 4406 4403
		f 4 -3804 3802 -3802 -1350
		mu 0 4 4409 4412 4411 4410
		f 4 -3806 -3805 -1352 3801
		mu 0 4 4411 4414 4413 4410
		f 4 -3808 -3807 -1355 3804
		mu 0 4 4414 4416 4415 4413
		f 4 -3809 -3771 -1358 3806
		mu 0 4 4416 4379 4382 4415
		f 4 3812 3811 -3811 -3810
		mu 0 4 4417 4420 4419 4418
		f 4 -3816 -3815 3809 -3814
		mu 0 4 4421 4422 4417 4418
		f 4 3818 3805 -3818 -3817
		mu 0 4 4423 4414 4411 4424
		f 4 -3803 -3820 -3812 3817
		mu 0 4 4411 4412 4425 4424
		f 4 -3822 3810 3819 -3821
		mu 0 4 4426 4427 4425 4412
		f 4 3803 -1394 -3823 3820
		mu 0 4 4412 4409 4428 4426
		f 4 3795 3823 3822 -1374
		mu 0 4 4401 4394 4426 4428
		f 4 3808 -3826 -3825 3766
		mu 0 4 4379 4416 4429 4378
		f 4 3807 -3819 -3827 3825
		mu 0 4 4416 4414 4423 4429
		f 4 -3829 3780 3775 -3828
		mu 0 4 4430 4391 4387 4388
		f 4 3815 3829 -3786 3828
		mu 0 4 4430 4431 4394 4391
		f 4 -3824 -3830 3813 3821
		mu 0 4 4426 4394 4431 4427
		f 4 3792 3781 3787 3830
		mu 0 4 4399 4389 4392 4396
		f 4 3826 -3833 -3832 3824
		mu 0 4 4432 4435 4434 4433
		f 4 3816 -3813 -3834 3832
		mu 0 4 4435 4420 4417 4434
		f 4 -3835 3776 3765 3831
		mu 0 4 4434 4437 4436 4433
		f 4 3814 3827 3834 3833
		mu 0 4 4417 4422 4437 4434
		f 4 3794 3791 3836 -3836
		mu 0 4 4438 4441 4440 4439
		f 4 -1349 3773 3835 3837
		mu 0 4 4442 4443 4438 4439
		f 4 -3839 -3837 -3831 3798
		mu 0 4 4406 4439 4440 4405
		f 4 -1396 -3838 3838 3800
		mu 0 4 4408 4442 4439 4406
		f 4 -3842 -3841 -1404 -3840
		mu 0 4 4444 4447 4446 4445
		f 4 3843 -1448 3840 -3843
		mu 0 4 4448 4449 4446 4447
		f 4 -3847 -1410 -3846 -3845
		mu 0 4 4450 4453 4452 4451
		f 4 -3850 -3849 3844 -3848
		mu 0 4 4454 4455 4450 4451
		f 4 -3853 -3852 3849 -3851
		mu 0 4 4456 4457 4455 4454
		f 4 -3856 -3855 3852 -3854
		mu 0 4 4458 4459 4457 4456
		f 4 3841 -3858 3855 -3857
		mu 0 4 4447 4444 4459 4458
		f 4 -3860 -3859 -1424 -3844
		mu 0 4 4460 4463 4462 4461
		f 4 -3862 -3861 -1427 3858
		mu 0 4 4463 4465 4464 4462
		f 4 -3864 -1431 3860 -3863
		mu 0 4 4466 4467 4464 4465
		f 4 -3866 -1434 3863 -3865
		mu 0 4 4468 4469 4467 4466
		f 4 -3867 3845 -1436 3865
		mu 0 4 4470 4451 4472 4471
		f 4 -3868 3847 3866 3864
		mu 0 4 4473 4454 4451 4470
		f 4 -3869 3850 3867 3862
		mu 0 4 4474 4456 4454 4473
		f 4 -3870 3853 3868 3861
		mu 0 4 4475 4458 4456 4474
		f 4 3842 3856 3869 3859
		mu 0 4 4476 4477 4458 4475
		f 4 -1447 3871 3851 -3871
		mu 0 4 4478 4479 4455 4457
		f 4 -3873 -1442 3870 3854
		mu 0 4 4459 4480 4478 4457
		f 4 3839 -1444 3872 3857
		mu 0 4 4444 4445 4480 4459
		f 4 3848 -3872 -1445 3846
		mu 0 4 4450 4455 4479 4453
		f 4 -3877 -3876 -3875 -3874
		mu 0 4 4481 4484 4483 4482
		f 4 -3880 3873 -3879 -3878
		mu 0 4 4485 4488 4487 4486
		f 4 3877 -3883 -3882 -3881
		mu 0 4 4489 4492 4491 4490
		f 4 3880 -3884 3876 3879
		mu 0 4 4493 4496 4495 4494
		f 4 3881 -3885 3875 3883
		mu 0 4 4497 4500 4499 4498
		f 4 -3889 -3888 -3887 -3886
		mu 0 4 4501 4504 4503 4502
		f 4 -3892 3885 -3891 -3890
		mu 0 4 4505 4508 4507 4506
		f 4 3889 -3895 -3894 -3893
		mu 0 4 4509 4512 4511 4510
		f 4 3892 -3896 3888 3891
		mu 0 4 4509 4510 4504 4501
		f 4 3893 -3897 3887 3895
		mu 0 4 4510 4511 4503 4504
		f 4 -3901 -3900 -3899 -3898
		mu 0 4 4513 4516 4515 4514
		f 4 -3904 -3903 3900 -3902
		mu 0 4 4517 4518 4516 4513
		f 4 -3907 -3906 3903 -3905
		mu 0 4 4519 4520 4518 4517
		f 4 -3910 -3909 3906 -3908
		mu 0 4 4521 4522 4520 4519
		f 4 3898 -3912 3909 -3911
		mu 0 4 4523 4524 4522 4521
		f 4 3911 -3913 3905 3908
		mu 0 4 4525 4528 4527 4526
		f 3 3899 3902 3912
		mu 0 3 4528 4529 4527
		f 4 3907 -3914 3897 3910
		mu 0 4 4521 4519 4513 4523
		f 3 3904 3901 3913
		mu 0 3 4519 4517 4513
		f 4 -3918 -3917 -3916 -3915
		mu 0 4 4530 4533 4532 4531
		f 4 -3921 3914 -3920 -3919
		mu 0 4 4534 4537 4536 4535
		f 4 3918 -3924 -3923 -3922
		mu 0 4 4538 4541 4540 4539
		f 4 3921 -3925 3917 3920
		mu 0 4 4542 4545 4544 4543
		f 4 3922 -3926 3916 3924
		mu 0 4 4546 4549 4548 4547
		f 4 3929 3928 -3928 -3927
		mu 0 4 4550 4553 4552 4551
		f 4 3933 -3933 -3932 -3931
		mu 0 4 4554 4557 4556 4555
		f 4 3936 -3930 -3936 -3935
		mu 0 4 4558 4561 4560 4559
		f 4 -3941 -3940 -3939 -3938
		mu 0 4 4562 4565 4564 4563
		f 4 -3944 -3943 3939 -3942
		mu 0 4 4566 4569 4568 4567
		f 4 -3948 -3947 -3946 -3945
		mu 0 4 4570 4573 4572 4571
		f 4 -3951 -3950 -3949 3946
		mu 0 4 4574 4577 4576 4575
		f 4 -3929 -3953 3930 -3952
		mu 0 4 4578 4581 4580 4579
		f 4 -3955 3953 3952 -3937
		mu 0 4 4582 4585 4584 4583
		f 4 3927 3951 3931 -3956
		mu 0 4 4586 4589 4588 4587
		f 4 -3958 -3934 -3954 -3957
		mu 0 4 4590 4593 4592 4591
		f 4 3942 -3960 3935 -3959
		mu 0 4 4594 4597 4596 4595
		f 4 -3961 3938 3958 3926
		mu 0 4 4598 4601 4600 4599
		f 4 3960 3955 -3963 -3962
		mu 0 4 4602 4605 4604 4603
		f 4 3957 3964 3945 -3964
		mu 0 4 4606 4609 4608 4607
		f 4 3962 3932 3963 3948
		mu 0 4 4610 4613 4612 4611
		f 4 3950 -3967 3940 -3966
		mu 0 4 4614 4617 4616 4615
		f 4 3961 3949 3965 3937
		mu 0 4 4618 4621 4620 4619
		f 4 -3968 3956 3954 3934
		mu 0 4 4622 4625 4624 4623
		f 4 -3969 -3965 3967 3959
		mu 0 4 4626 4629 4628 4627
		f 4 3943 -3970 3944 3968
		mu 0 4 4630 4633 4632 4631
		f 4 3966 3947 3969 3941
		mu 0 4 4634 4637 4636 4635
		f 4 3973 3972 -3972 -3971
		mu 0 4 4638 4641 4640 4639
		f 4 3977 -3977 -3976 -3975
		mu 0 4 4642 4645 4644 4643
		f 4 3980 -3974 -3980 -3979
		mu 0 4 4646 4641 4638 4647
		f 4 -3985 -3984 -3983 -3982
		mu 0 4 4648 4651 4650 4649
		f 4 -3988 -3987 3983 -3986
		mu 0 4 4652 4653 4650 4651
		f 4 -3992 -3991 -3990 -3989
		mu 0 4 4654 4657 4656 4655
		f 4 -3995 -3994 -3993 3990
		mu 0 4 4657 4659 4658 4656
		f 4 -3973 -3997 3974 -3996
		mu 0 4 4640 4641 4642 4643
		f 4 -3999 3997 3996 -3981
		mu 0 4 4646 4660 4642 4641
		f 4 3971 3995 3975 -4000
		mu 0 4 4661 4640 4643 4662
		f 4 -4002 -3978 -3998 -4001
		mu 0 4 4663 4645 4642 4664
		f 4 3986 -4004 3979 -4003
		mu 0 4 4665 4668 4667 4666
		f 4 -4005 3982 4002 3970
		mu 0 4 4669 4672 4671 4670
		f 4 4004 3999 -4007 -4006
		mu 0 4 4673 4676 4675 4674
		f 4 4001 4008 3989 -4008
		mu 0 4 4677 4680 4679 4678
		f 4 4006 3976 4007 3992
		mu 0 4 4681 4684 4683 4682
		f 4 3994 -4011 3984 -4010
		mu 0 4 4659 4657 4651 4648
		f 4 4005 3993 4009 3981
		mu 0 4 4649 4658 4659 4648
		f 4 -4012 4000 3998 3978
		mu 0 4 4685 4687 4686 4646
		f 4 -4013 -4009 4011 4003
		mu 0 4 4688 4691 4690 4689
		f 4 3987 -4014 3988 4012
		mu 0 4 4653 4652 4654 4655
		f 4 4010 3991 4013 3985
		mu 0 4 4651 4657 4654 4652
		f 4 4017 4016 -4016 -4015
		mu 0 4 4692 4695 4694 4693
		f 4 4021 -4021 -4020 -4019
		mu 0 4 4696 4699 4698 4697
		f 4 4024 -4018 -4024 -4023
		mu 0 4 4700 4703 4702 4701
		f 4 4027 -4022 -4027 -4026
		mu 0 4 4704 4707 4706 4705
		f 4 4023 -4031 -4030 -4029
		mu 0 4 4708 4711 4710 4709
		f 4 4033 -4033 -4028 -4032
		mu 0 4 4712 4715 4714 4713
		f 4 4037 -4037 -4036 -4035
		mu 0 4 4716 4719 4718 4717
		f 4 4040 4039 -4039 4034
		mu 0 4 4720 4723 4722 4721
		f 4 -4043 -4042 -4038 4038
		mu 0 4 4724 4727 4726 4725
		f 4 4045 4044 4041 -4044
		mu 0 4 4728 4731 4730 4729
		f 4 -4047 4029 4036 -4045
		mu 0 4 4732 4735 4734 4733
		f 4 -4049 4047 4042 -4040
		mu 0 4 4736 4739 4738 4737
		f 4 4043 -4048 -4034 -4050
		mu 0 4 4740 4743 4742 4741
		f 4 -4017 -4052 4018 -4051
		mu 0 4 4744 4747 4746 4745
		f 4 -4053 4026 4051 -4025
		mu 0 4 4748 4705 4750 4749
		f 4 4015 4050 4019 -4054
		mu 0 4 4751 4754 4753 4752
		f 4 -4055 4035 4030 4014
		mu 0 4 4755 4757 4710 4756
		f 4 4054 4053 -4056 -4041
		mu 0 4 4758 4761 4760 4759
		f 4 4055 4020 4032 4048
		mu 0 4 4762 4764 4714 4763
		f 4 -4057 4025 4052 4022
		mu 0 4 4765 4767 4705 4766
		f 4 -4058 4031 4056 4028
		mu 0 4 4768 4771 4770 4769
		f 4 4046 -4046 4049 4057
		mu 0 4 4772 4775 4774 4773
		f 4 -4062 -4061 -4060 -4059
		mu 0 4 4776 4779 4778 4777
		f 4 -4065 -4064 -4063 4058
		mu 0 4 4777 4781 4780 4776
		f 4 4067 4066 4063 -4066
		mu 0 4 4782 4783 4780 4781
		f 4 -4072 -4071 -4070 -4069
		mu 0 4 4784 4782 4786 4785
		f 4 4065 -4074 -4073 4070
		mu 0 4 4782 4781 4787 4786
		f 4 4064 4059 -4075 4073
		mu 0 4 4781 4777 4778 4787
		f 4 -4077 -4076 4074 4060
		mu 0 4 4788 4789 4787 4778
		f 4 4078 4072 4075 -4078
		mu 0 4 4790 4786 4787 4789
		f 4 4062 -4080 4076 4061
		mu 0 4 4776 4780 4789 4779
		f 4 -4081 4077 4079 -4067
		mu 0 4 4783 4791 4789 4780;
	setAttr ".fc[2000:2397]"
		f 4 -4084 -4083 4080 -4082
		mu 0 4 4792 4793 4791 4783
		f 4 4069 -4079 4082 -4085
		mu 0 4 4785 4786 4790 4794
		f 4 4081 -4068 4071 -4086
		mu 0 4 4792 4783 4782 4784
		f 4 4084 4083 4085 4068
		mu 0 4 4785 4793 4792 4784
		f 4 -4090 -4089 -4088 -4087
		mu 0 4 4795 4798 4797 4796
		f 4 4087 -4093 -4092 -4091
		mu 0 4 4799 4802 4801 4800
		f 4 4091 -4096 -4095 -4094
		mu 0 4 4803 4806 4805 4804
		f 4 4094 -4098 4089 -4097
		mu 0 4 4807 4810 4809 4808
		f 4 -4102 -4101 -4100 -4099
		mu 0 4 4811 4814 4813 4812
		f 4 -4106 -4105 -4104 -4103
		mu 0 4 4815 4818 4817 4816
		f 4 4109 4108 -4108 -4107
		mu 0 4 4819 4822 4821 4820
		f 4 -4114 -4113 -4112 -4111
		mu 0 4 4823 4826 4825 4824
		f 4 -4118 -4117 -4116 -4115
		mu 0 4 4827 4830 4829 4828
		f 4 4121 -4121 -4120 -4119
		mu 0 4 4831 4834 4833 4832
		f 4 -4125 -4124 4118 -4123
		mu 0 4 4835 4836 4831 4832
		f 4 4127 4126 -4122 -4126
		mu 0 4 4837 4838 4834 4831
		f 4 -4130 -4129 4125 4123
		mu 0 4 4836 4840 4839 4831
		f 4 -4133 -4132 -4131 4129
		mu 0 4 4836 4843 4842 4841
		f 4 -4136 -4135 -4134 4131
		mu 0 4 4844 4846 4845 4842
		f 4 -4139 -4138 -4137 4134
		mu 0 4 4847 4849 4848 4845
		f 4 -4142 4140 -4140 4137
		mu 0 4 4850 4852 4851 4848
		f 4 -4145 -4144 -4128 -4143
		mu 0 4 4853 4856 4855 4854
		f 4 -4147 -4146 4142 4128
		mu 0 4 4857 4860 4859 4858
		f 4 -4149 -4148 4132 4124
		mu 0 4 4835 4862 4861 4836
		f 4 -4151 -4150 4135 4147
		mu 0 4 4862 4865 4864 4863
		f 4 -4153 -4152 4138 4149
		mu 0 4 4865 4868 4867 4866
		f 3 -4155 4151 -4154
		mu 0 3 4869 4870 4868
		f 3 -4158 -4157 -4156
		mu 0 3 4871 4873 4872
		f 4 -4161 -4160 4157 -4159
		mu 0 4 4874 4851 4875 4871
		f 4 -4163 4139 4160 -4162
		mu 0 4 4876 4848 4851 4874
		f 3 -4165 -4164 4162
		mu 0 3 4877 4878 4848
		f 4 -4167 -4166 4136 4163
		mu 0 4 4879 4880 4845 4848
		f 4 -4169 -4168 4133 4165
		mu 0 4 4881 4882 4842 4845
		f 4 -4170 4146 4130 4167
		mu 0 4 4883 4885 4884 4842
		f 4 -4174 -4173 -4172 -4171
		mu 0 4 4886 4889 4888 4887
		f 4 -4177 -4176 -4175 4172
		mu 0 4 4889 4891 4890 4888
		f 4 -4180 -4179 -4178 4175
		mu 0 4 4891 4893 4892 4890
		f 4 -4183 -4182 -4181 4178
		mu 0 4 4893 4895 4894 4892
		f 4 -4186 -4185 -4184 4181
		mu 0 4 4895 4897 4896 4894
		f 4 -4188 -4187 4100 4184
		mu 0 4 4897 4899 4898 4896
		f 4 4191 4190 -4190 -4189
		mu 0 4 4824 4852 4901 4900
		f 4 -4194 4110 4188 -4193
		mu 0 4 4815 4823 4824 4902
		f 3 4102 -4195 4193
		mu 0 3 4815 4816 4823
		f 4 -4198 -4197 4115 -4196
		mu 0 4 4903 4906 4905 4904
		f 4 -4109 4156 4114 4196
		mu 0 4 4907 4910 4909 4908
		f 3 -4201 -4200 -4199
		mu 0 3 4911 4913 4912
		f 4 -4203 4182 4200 -4202
		mu 0 4 4914 4915 4913 4911
		f 4 -4205 4185 4202 -4204
		mu 0 4 4916 4917 4915 4914
		f 4 4179 -4207 -4206 4199
		mu 0 4 4913 4919 4918 4912
		f 4 4176 -4209 -4208 4206
		mu 0 4 4919 4921 4920 4918
		f 3 -4211 -4210 4208
		mu 0 3 4921 4818 4920
		f 4 -4212 4104 4210 4173
		mu 0 4 4922 4817 4818 4921
		f 4 4211 4170 -4214 -4213
		mu 0 4 4817 4922 4924 4923
		f 3 -4217 -4216 -4215
		mu 0 3 4925 4927 4926
		f 4 4213 4171 4216 4106
		mu 0 4 4928 4931 4930 4929
		f 4 4174 -4219 -4218 4215
		mu 0 4 4932 4934 4933 4926
		f 4 4177 -4221 -4220 4218
		mu 0 4 4935 4938 4937 4936
		f 3 -4223 -4222 4220
		mu 0 3 4938 4939 4937
		f 4 -4225 -4224 4222 4180
		mu 0 4 4940 4941 4939 4938
		f 4 4101 -4226 4224 4183
		mu 0 4 4814 4811 4941 4940
		f 4 4099 4186 -4228 -4227
		mu 0 4 4812 4813 4943 4942
		f 4 4227 4187 4204 -4229
		mu 0 4 4944 4945 4917 4916
		f 4 4103 4212 4107 -4230
		mu 0 4 4816 4817 4947 4946
		f 4 4219 -4232 4161 -4231
		mu 0 4 4948 4937 4949 4874
		f 4 -4233 4217 4230 4158
		mu 0 4 4871 4926 4950 4874
		f 4 -4110 4214 4232 4155
		mu 0 4 4951 4952 4926 4871
		f 4 -4234 4164 4231 4221
		mu 0 4 4939 4954 4953 4937
		f 4 -4235 4166 4233 4223
		mu 0 4 4941 4956 4955 4939
		f 4 -4236 4168 4234 4225
		mu 0 4 4811 4958 4957 4941
		f 4 -4237 4169 4235 4098
		mu 0 4 4812 4960 4959 4811
		f 4 -4239 -4238 4236 4226
		mu 0 4 4961 4835 4962 4812
		f 4 -4240 4145 4237 4122
		mu 0 4 4832 4964 4963 4835
		f 4 4205 -4243 -4242 -4241
		mu 0 4 4912 4918 4965 4869
		f 4 -4244 4198 4240 4153
		mu 0 4 4868 4911 4912 4869
		f 4 -4245 4201 4243 4152
		mu 0 4 4865 4914 4911 4868
		f 4 -4246 4203 4244 4150
		mu 0 4 4862 4916 4914 4865
		f 4 4238 4228 4245 4148
		mu 0 4 4835 4966 4916 4862
		f 4 4117 -4248 4111 -4247
		mu 0 4 4967 4968 4824 4825
		f 4 4159 -4141 -4192 4247
		mu 0 4 4969 4851 4852 4824
		f 4 -4250 -4249 4113 4194
		mu 0 4 4816 4970 4826 4823
		f 4 4197 -4251 4249 4229
		mu 0 4 4971 4903 4972 4816
		f 4 -4254 -4253 -4252 4112
		mu 0 4 4826 4974 4973 4825
		f 4 -4256 -4255 4253 4248
		mu 0 4 4975 4976 4974 4826
		f 4 4251 -4258 -4257 4246
		mu 0 4 4825 4973 4978 4977
		f 4 4252 -4260 -4259 4257
		mu 0 4 4973 4974 4980 4979
		f 4 4261 4260 4259 4254
		mu 0 4 4976 4982 4981 4974
		f 4 -4264 -4261 -4263 4195
		mu 0 4 4983 4985 4984 4903
		f 4 4256 4258 4263 4116
		mu 0 4 4986 4989 4988 4987
		f 4 4262 -4262 4255 4250
		mu 0 4 4903 4991 4976 4990
		f 4 4189 4242 4207 -4265
		mu 0 4 4992 4993 4918 4920
		f 4 4105 4192 4264 4209
		mu 0 4 4818 4815 4994 4920
		f 4 4119 -4266 4144 4239
		mu 0 4 4832 4833 4996 4995
		f 4 4120 -4127 4143 4265
		mu 0 4 4833 4834 4998 4997
		f 4 4241 -4191 4141 4154
		mu 0 4 4869 4999 4852 4870
		f 4 4269 4268 -4268 -4267
		mu 0 4 5000 5003 5002 5001
		f 4 -4274 -4273 -4272 -4271
		mu 0 4 5004 5007 5006 5005
		f 4 -4277 -4270 -4276 -4275
		mu 0 4 5008 5003 5000 5009
		f 4 -4281 -4280 -4279 -4278
		mu 0 4 5010 5013 5012 5011
		f 4 4284 -4284 -4283 -4282
		mu 0 4 5014 5017 5016 5015
		f 4 -4288 4272 -4287 -4286
		mu 0 4 5018 5006 5007 5019
		f 4 4290 4289 -4289 4267
		mu 0 4 5002 5021 5020 5001
		f 4 -4294 4271 -4293 -4292
		mu 0 4 5022 5005 5006 5023
		f 4 -4297 -4296 -4290 -4295
		mu 0 4 5024 5027 5026 5025
		f 4 4277 -4300 -4299 -4298
		mu 0 4 5010 5011 5029 5028
		f 4 4302 4301 4281 -4301
		mu 0 4 5030 5031 5014 5015
		f 4 -4305 -4304 4292 4287
		mu 0 4 5018 5033 5032 5006
		f 4 -4309 -4308 -4307 -4306
		mu 0 4 5034 5037 5036 5035
		f 4 -4312 -4311 -4310 4307
		mu 0 4 5037 5039 5038 5036
		f 4 -4316 -4315 -4314 -4313
		mu 0 4 5040 5043 5042 5041
		f 4 -4319 -4318 4313 -4317
		mu 0 4 5044 5045 5041 5042
		f 4 -4322 -4321 4318 -4320
		mu 0 4 5046 5047 5045 5044
		f 4 -4326 -4325 -4324 -4323
		mu 0 4 5048 5051 5050 5049
		f 4 -4329 -4328 -4327 4324
		mu 0 4 5051 5053 5052 5050
		f 4 4306 -4331 4325 -4330
		mu 0 4 5035 5036 5051 5048
		f 4 4309 -4332 4328 4330
		mu 0 4 5036 5038 5053 5051
		f 4 -4336 -4335 -4334 -4333
		mu 0 4 5054 5057 5056 5055
		f 4 -4339 -4338 4334 -4337
		mu 0 4 5058 5059 5056 5057
		f 4 -4342 -4341 4326 -4340
		mu 0 4 5060 5061 5050 5052
		f 4 -4345 -4344 -4343 4340
		mu 0 4 5061 5054 5062 5050
		f 4 -4347 -4346 4343 4332
		mu 0 4 5055 5063 5062 5054
		f 3 4342 -4348 4323
		mu 0 3 5050 5062 5049
		f 4 -4350 -4269 -4349 4345
		mu 0 4 5063 5002 5003 5062
		f 4 4311 -4352 4317 -4351
		mu 0 4 5039 5037 5041 5045
		f 4 4308 -4353 4312 4351
		mu 0 4 5037 5034 5040 5041
		f 4 4280 -4355 4315 -4354
		mu 0 4 5013 5010 5043 5040
		f 4 -4358 4320 -4357 -4356
		mu 0 4 5064 5045 5047 5065
		f 4 -4360 4348 4276 -4359
		mu 0 4 5066 5062 5003 5008
		f 4 -4364 -4363 -4362 -4361
		mu 0 4 5067 5069 5068 5017
		f 4 -4367 -4366 -4365 4363
		mu 0 4 5067 5058 5060 5069
		f 3 -4369 -4368 4364
		mu 0 3 5060 5070 5069
		f 3 -4371 -4370 4352
		mu 0 3 5034 5071 5040
		f 4 -4373 -4372 4370 4305
		mu 0 4 5035 5072 5071 5034
		f 4 -4375 -4374 4372 4329
		mu 0 4 5048 5073 5072 5035
		f 4 -4377 -4376 4374 4322
		mu 0 4 5049 5074 5073 5048
		f 3 -4379 -4378 4357
		mu 0 3 5064 5075 5045
		f 3 -4380 4350 4377
		mu 0 3 5075 5039 5045
		f 4 -4382 4310 4379 -4381
		mu 0 4 5076 5038 5039 5075
		f 4 -4384 4331 4381 -4383
		mu 0 4 5077 5053 5038 5076
		f 4 -4386 4327 4383 -4385
		mu 0 4 5078 5052 5053 5077
		f 4 4368 4339 4385 -4387
		mu 0 4 5070 5060 5052 5078
		f 4 4376 4347 4359 -4388
		mu 0 4 5074 5049 5062 5066
		f 3 4369 -4390 -4389
		mu 0 3 5040 5071 5079
		f 4 4279 4353 4388 -4391
		mu 0 4 5012 5013 5040 5079
		f 4 -4392 4341 4365 4336
		mu 0 4 5057 5061 5060 5058
		f 3 4335 4344 4391
		mu 0 3 5057 5054 5061
		f 4 -4394 -4393 4338 4366
		mu 0 4 5067 5080 5059 5058
		f 4 -4285 -4395 4393 4360
		mu 0 4 5017 5014 5080 5067
		f 4 4321 -4397 -4396 4356
		mu 0 4 5047 5046 5081 5065
		f 4 4266 -4399 -4398 4275
		mu 0 4 5000 5001 5082 5009
		f 4 4285 -4402 -4401 -4400
		mu 0 4 5018 5019 5068 5083
		f 4 4283 4361 4401 -4403
		mu 0 4 5016 5017 5068 5019
		f 4 4286 4273 -4404 4402
		mu 0 4 5019 5007 5004 5016
		f 4 4403 4270 -4405 4282
		mu 0 4 5016 5004 5005 5015
		f 4 -4409 -4408 -4407 -4406
		mu 0 4 5084 5087 5086 5085
		f 4 -4412 -4411 4408 -4410
		mu 0 4 5088 5091 5090 5089
		f 4 4319 -4415 -4414 -4413
		mu 0 4 5046 5044 5093 5092
		f 4 4316 -4417 -4416 4414
		mu 0 4 5044 5042 5095 5094
		f 4 4314 4418 -4418 4416
		mu 0 4 5042 5043 5097 5096
		f 4 -4423 -4422 -4421 -4420
		mu 0 4 5098 5101 5100 5099
		f 4 -4426 -4425 4422 -4424
		mu 0 4 5102 5105 5104 5103
		f 4 -4428 4405 -4427 4421
		mu 0 4 5106 5109 5108 5107
		f 4 -4429 4409 4427 4424
		mu 0 4 5110 5113 5112 5111
		f 4 4337 4431 -4431 -4430
		mu 0 4 5056 5059 5115 5114
		f 4 -4434 4333 4429 -4433
		mu 0 4 5116 5055 5056 5117
		f 4 -4436 4346 4433 -4435
		mu 0 4 5118 5063 5055 5119
		f 4 -4439 -4438 4434 -4437
		mu 0 4 5120 5123 5122 5121
		f 4 -4441 4423 4438 -4440
		mu 0 4 5124 5127 5126 5125
		f 3 4437 4419 -4442
		mu 0 3 5128 5130 5129
		f 4 -4291 4349 4435 -4443
		mu 0 4 5131 5002 5063 5132
		f 4 -4445 4410 -4444 4415
		mu 0 4 5133 5136 5135 5134
		f 4 -4446 4407 4444 4417
		mu 0 4 5137 5140 5139 5138
		f 4 -4447 -4419 4354 4297
		mu 0 4 5141 5142 5043 5010
		f 4 -4450 -4449 4413 -4448
		mu 0 4 5143 5146 5145 5144
		f 4 -4452 4294 4442 -4451
		mu 0 4 5147 5150 5149 5148
		f 4 -4456 -4455 -4454 -4453
		mu 0 4 5151 5154 5153 5152
		f 4 -4459 -4458 4454 -4457
		mu 0 4 5155 5158 5157 5156
		f 3 -4461 -4460 4456
		mu 0 3 5159 5161 5160
		f 4 4420 -4464 -4463 -4462
		mu 0 4 5162 5165 5164 5163
		f 4 4426 -4466 -4465 4463
		mu 0 4 5166 5169 5168 5167
		f 4 4406 -4468 -4467 4465
		mu 0 4 5170 5173 5172 5171
		f 3 4445 -4469 4467
		mu 0 3 5174 5176 5175
		f 3 -4471 -4470 4447
		mu 0 3 5177 5179 5178
		f 3 4443 -4472 4470
		mu 0 3 5180 5182 5181
		f 4 4411 -4474 -4473 4471
		mu 0 4 5183 5186 5185 5184
		f 4 4428 -4476 -4475 4473
		mu 0 4 5187 5190 5189 5188
		f 4 4425 -4478 -4477 4475
		mu 0 4 5191 5194 5193 5192
		f 4 4440 4459 -4479 4477
		mu 0 4 5195 5198 5197 5196
		f 4 -4480 4450 4441 4461
		mu 0 4 5199 5202 5201 5200
		f 3 4468 -4482 -4481
		mu 0 3 5203 5205 5204
		f 4 -4483 4481 4446 4298
		mu 0 4 5206 5209 5208 5207
		f 4 4439 -4484 4430 4458
		mu 0 4 5210 5213 5212 5211
		f 3 4436 4432 4483
		mu 0 3 5214 5216 5215
		f 4 4453 -4485 4394 -4302
		mu 0 4 5217 5218 5080 5014
		f 4 4457 -4432 4392 4484
		mu 0 4 5219 5220 5059 5080
		f 4 4448 -4486 4396 4412
		mu 0 4 5221 5222 5081 5046
		f 4 4295 -4487 4398 4288
		mu 0 4 5223 5224 5082 5001
		f 4 4452 -4303 -4489 -4488
		mu 0 4 5225 5228 5227 5226
		f 4 4399 -4490 4487 4304
		mu 0 4 5018 5083 5230 5229
		f 4 4488 -4491 4291 4303
		mu 0 4 5231 5234 5233 5232
		f 4 4300 4404 4293 4490
		mu 0 4 5235 5015 5005 5236
		f 4 -4495 -4494 -4493 -4492
		mu 0 4 5237 5240 5239 5238
		f 4 4498 -4498 -4497 -4496
		mu 0 4 5241 5244 5243 5242
		f 4 -4502 -4501 4495 -4500
		mu 0 4 5245 5246 5241 5242
		f 4 4504 4503 -4499 -4503
		mu 0 4 5247 5248 5244 5241
		f 4 -4507 -4506 4502 4500
		mu 0 4 5246 5250 5249 5241
		f 4 4509 -4509 -4505 -4508
		mu 0 4 5251 5254 5253 5252
		f 4 -4512 -4511 4507 4505
		mu 0 4 5255 5258 5257 5256
		f 4 4496 -4514 -4510 -4513
		mu 0 4 5242 5243 5260 5259
		f 4 -4515 4499 4512 4510
		mu 0 4 5261 5245 5242 5262
		f 4 -4518 -4517 -4516 4501
		mu 0 4 5245 5264 5263 5246
		f 4 -4521 -4520 -4519 4516
		mu 0 4 5264 5266 5265 5263
		f 4 4523 4522 4519 -4522
		mu 0 4 5267 5268 5265 5266
		f 4 4515 -4526 -4525 4506
		mu 0 4 5269 5272 5271 5270
		f 4 4518 -4528 -4527 4525
		mu 0 4 5272 5274 5273 5271
		f 4 4529 4528 4527 -4523
		mu 0 4 5275 5276 5273 5274
		f 4 4524 -4532 -4531 4511
		mu 0 4 5277 5280 5279 5278
		f 4 4526 -4534 -4533 4531
		mu 0 4 5281 5284 5283 5282
		f 4 -4529 -4536 -4535 4533
		mu 0 4 5285 5288 5287 5286
		f 4 -4539 -4538 -4537 4535
		mu 0 4 5288 5291 5290 5289
		f 4 -4542 -4541 -4540 4537
		mu 0 4 5291 5293 5292 5290
		f 4 4544 -4544 4540 -4543
		mu 0 4 5294 5295 5292 5293
		f 3 -4546 4517 4514
		mu 0 3 5296 5298 5297
		f 3 4530 -4547 4545
		mu 0 3 5296 5299 5298
		f 4 4532 -4548 4520 4546
		mu 0 4 5299 5301 5300 5298
		f 4 4548 4521 4547 4534
		mu 0 4 5302 5303 5300 5301
		f 4 -4552 -4551 -4550 4491
		mu 0 4 5238 5305 5304 5237
		f 4 4554 4553 4550 -4553
		mu 0 4 5306 5308 5304 5307
		f 4 -4557 -4556 4551 4492
		mu 0 4 5309 5312 5311 5310
		f 4 -4558 4552 4555 4542
		mu 0 4 5313 5314 5311 5312
		f 4 -4559 -4545 4556 4493
		mu 0 4 5315 5317 5294 5316
		f 4 4549 -4560 4558 4494
		mu 0 4 5318 5321 5320 5319
		f 4 -4561 4543 4559 -4554
		mu 0 4 5322 5323 5320 5321
		f 4 4497 -4504 4508 4513
		mu 0 4 5243 5244 5325 5324
		f 4 -4564 -4555 -4563 -4562
		mu 0 4 5326 5329 5328 5327
		f 4 -4524 -4566 4561 -4565
		mu 0 4 5330 5267 5332 5331
		f 4 4541 -4567 4562 4557
		mu 0 4 5313 5334 5333 5314
		f 4 4538 -4530 4564 4566
		mu 0 4 5334 5276 5275 5333
		f 4 4563 -4568 4539 4560
		mu 0 4 5322 5336 5335 5323
		f 4 4565 -4549 4536 4567
		mu 0 4 5336 5303 5302 5335
		f 4 -4572 -4571 -4570 -4569
		mu 0 4 5337 5340 5339 5338
		f 4 -4575 -4574 4571 -4573
		mu 0 4 5341 5342 5340 5337
		f 4 -4578 -4577 4574 -4576
		mu 0 4 5343 5344 5342 5341
		f 4 4575 -4581 -4580 -4579
		mu 0 4 5343 5341 5346 5345
		f 4 4572 -4583 -4582 4580
		mu 0 4 5341 5337 5348 5347
		f 4 4568 -4585 -4584 4582
		mu 0 4 5337 5338 5350 5349
		f 4 4586 4585 4584 4569
		mu 0 4 5339 5352 5351 5338
		f 4 -4589 -4588 4583 -4586
		mu 0 4 5353 5356 5355 5354
		f 4 -4591 -4590 4581 4587
		mu 0 4 5357 5360 5359 5358
		f 4 -4593 -4592 4579 4589
		mu 0 4 5361 5364 5363 5362
		f 4 4592 -4595 4576 -4594
		mu 0 4 5365 5366 5342 5344
		f 4 4590 -4596 4573 4594
		mu 0 4 5367 5368 5340 5342
		f 4 4588 -4587 4570 4595
		mu 0 4 5369 5370 5339 5340
		f 4 -4600 -4599 -4598 -4597
		mu 0 4 5371 5374 5373 5372
		f 4 4603 -4603 -4602 -4601
		mu 0 4 5375 5378 5377 5376
		f 4 -4607 -4606 4600 -4605
		mu 0 4 5379 5380 5375 5376
		f 4 4609 4608 -4604 -4608
		mu 0 4 5381 5382 5378 5375
		f 4 -4612 -4611 4607 4605
		mu 0 4 5380 5384 5383 5375
		f 4 4614 -4614 -4610 -4613
		mu 0 4 5385 5388 5387 5386
		f 4 -4617 -4616 4612 4610
		mu 0 4 5389 5392 5391 5390
		f 4 4601 -4619 -4615 -4618
		mu 0 4 5376 5377 5394 5393
		f 4 -4620 4604 4617 4615
		mu 0 4 5395 5379 5376 5396
		f 4 -4623 -4622 -4621 4606
		mu 0 4 5379 5398 5397 5380
		f 4 -4626 -4625 -4624 4621
		mu 0 4 5398 5400 5399 5397
		f 4 4628 4627 4624 -4627
		mu 0 4 5401 5402 5399 5400
		f 4 4620 -4631 -4630 4611
		mu 0 4 5403 5406 5405 5404
		f 4 4623 -4633 -4632 4630
		mu 0 4 5406 5408 5407 5405
		f 4 4634 4633 4632 -4628
		mu 0 4 5409 5410 5407 5408
		f 4 4629 -4637 -4636 4616
		mu 0 4 5411 5414 5413 5412
		f 4 4631 -4639 -4638 4636
		mu 0 4 5415 5418 5417 5416
		f 4 -4634 -4641 -4640 4638
		mu 0 4 5419 5422 5421 5420
		f 4 -4644 -4643 -4642 4640
		mu 0 4 5422 5425 5424 5423
		f 4 -4647 -4646 -4645 4642
		mu 0 4 5425 5427 5426 5424
		f 4 4649 -4649 4645 -4648
		mu 0 4 5428 5429 5426 5427
		f 3 -4651 4622 4619
		mu 0 3 5430 5432 5431
		f 3 4635 -4652 4650
		mu 0 3 5430 5433 5432
		f 4 4637 -4653 4625 4651
		mu 0 4 5433 5435 5434 5432
		f 4 4653 4626 4652 4639
		mu 0 4 5436 5437 5434 5435
		f 4 -4657 -4656 -4655 4596
		mu 0 4 5372 5439 5438 5371
		f 4 4659 4658 4655 -4658
		mu 0 4 5440 5442 5438 5441
		f 4 -4662 -4661 4656 4597
		mu 0 4 5443 5446 5445 5444
		f 4 -4663 4657 4660 4647
		mu 0 4 5447 5448 5445 5446
		f 4 -4664 -4650 4661 4598
		mu 0 4 5449 5451 5428 5450
		f 4 4654 -4665 4663 4599
		mu 0 4 5452 5455 5454 5453
		f 4 -4666 4648 4664 -4659
		mu 0 4 5456 5457 5454 5455
		f 4 4602 -4609 4613 4618
		mu 0 4 5377 5378 5459 5458
		f 4 -4669 -4660 -4668 -4667
		mu 0 4 5460 5463 5462 5461
		f 4 -4629 -4671 4666 -4670
		mu 0 4 5464 5401 5466 5465
		f 4 4646 -4672 4667 4662
		mu 0 4 5447 5468 5467 5448
		f 4 4643 -4635 4669 4671
		mu 0 4 5468 5410 5409 5467
		f 4 4668 -4673 4644 4665
		mu 0 4 5456 5470 5469 5457
		f 4 4670 -4654 4641 4672
		mu 0 4 5470 5437 5436 5469
		f 4 -4677 -4676 -4675 -4674
		mu 0 4 5471 5474 5473 5472
		f 4 -4680 -4679 4676 -4678
		mu 0 4 5475 5476 5474 5471
		f 4 -4683 -4682 4679 -4681
		mu 0 4 5477 5478 5476 5475
		f 4 4680 -4686 -4685 -4684
		mu 0 4 5477 5475 5480 5479
		f 4 4677 -4688 -4687 4685
		mu 0 4 5475 5471 5482 5481
		f 4 4673 -4690 -4689 4687
		mu 0 4 5471 5472 5484 5483
		f 4 4691 4690 4689 4674
		mu 0 4 5473 5486 5485 5472
		f 4 -4694 -4693 4688 -4691
		mu 0 4 5487 5490 5489 5488
		f 4 -4696 -4695 4686 4692
		mu 0 4 5491 5494 5493 5492
		f 4 -4698 -4697 4684 4694
		mu 0 4 5495 5498 5497 5496
		f 4 4697 -4700 4681 -4699
		mu 0 4 5499 5500 5476 5478
		f 4 4695 -4701 4678 4699
		mu 0 4 5501 5502 5474 5476
		f 4 4693 -4692 4675 4700
		mu 0 4 5503 5504 5473 5474
		f 4 4704 4703 -4703 -4702
		mu 0 4 5505 5508 5507 5506
		f 4 4708 -4708 -4707 -4706
		mu 0 4 5509 5512 5511 5510
		f 4 4711 -4705 -4711 -4710
		mu 0 4 5513 5516 5515 5514
		f 4 4714 -4709 -4714 -4713
		mu 0 4 5517 5520 5519 5518
		f 4 4710 -4718 -4717 -4716
		mu 0 4 5521 5524 5523 5522
		f 4 4720 -4720 -4715 -4719
		mu 0 4 5525 5528 5527 5526
		f 4 4724 -4724 -4723 -4722
		mu 0 4 5529 5532 5531 5530
		f 4 4727 4726 -4726 4721
		mu 0 4 5533 5536 5535 5534
		f 4 -4730 -4729 -4725 4725
		mu 0 4 5537 5540 5539 5538
		f 4 4732 4731 4728 -4731
		mu 0 4 5541 5544 5543 5542
		f 4 -4734 4716 4723 -4732
		mu 0 4 5545 5548 5547 5546
		f 4 -4736 4734 4729 -4727
		mu 0 4 5549 5552 5551 5550
		f 4 4730 -4735 -4721 -4737
		mu 0 4 5553 5556 5555 5554
		f 4 -4704 -4739 4705 -4738
		mu 0 4 5557 5560 5559 5558
		f 4 -4740 4713 4738 -4712
		mu 0 4 5561 5518 5563 5562
		f 4 4702 4737 4706 -4741
		mu 0 4 5564 5567 5566 5565
		f 4 -4742 4722 4717 4701
		mu 0 4 5568 5570 5523 5569
		f 4 4741 4740 -4743 -4728
		mu 0 4 5571 5574 5573 5572
		f 4 4742 4707 4719 4735
		mu 0 4 5575 5577 5527 5576
		f 4 -4744 4712 4739 4709
		mu 0 4 5578 5580 5518 5579
		f 4 -4745 4718 4743 4715
		mu 0 4 5581 5584 5583 5582
		f 4 4733 -4733 4736 4744
		mu 0 4 5585 5588 5587 5586
		f 4 -4749 -4748 -4747 -4746
		mu 0 4 5589 5592 5591 5590
		f 4 4746 -4752 -4751 -4750
		mu 0 4 5593 5596 5595 5594
		f 4 4750 -4755 -4754 -4753
		mu 0 4 5597 5600 5599 5598
		f 4 4753 -4757 4748 -4756
		mu 0 4 5601 5604 5603 5602
		f 4 -4761 -4760 -4759 -4758
		mu 0 4 5605 5608 5607 5606
		f 4 -4764 4757 -4763 -4762
		mu 0 4 5609 5612 5611 5610
		f 4 4761 -4767 -4766 -4765
		mu 0 4 5613 5616 5615 5614
		f 4 4764 -4768 4760 4763
		mu 0 4 5617 5620 5619 5618
		f 4 4765 -4769 4759 4767
		mu 0 4 5621 5624 5623 5622
		f 4 -4773 -4772 -4771 -4770
		mu 0 4 5625 5628 5627 5626
		f 4 -4776 -4775 4772 -4774
		mu 0 4 5629 5630 5628 5625
		f 4 -4779 -4778 4775 -4777
		mu 0 4 5631 5632 5630 5629
		f 4 -4782 -4781 4778 -4780
		mu 0 4 5633 5634 5632 5631
		f 4 4770 -4784 4781 -4783
		mu 0 4 5635 5636 5634 5633
		f 4 4783 -4785 4777 4780
		mu 0 4 5637 5640 5639 5638
		f 3 4771 4774 4784
		mu 0 3 5640 5641 5639
		f 4 4779 -4786 4769 4782
		mu 0 4 5633 5631 5625 5635
		f 3 4776 4773 4785
		mu 0 3 5631 5629 5625
		f 4 -4790 -4789 -4788 -4787
		mu 0 4 5642 5645 5644 5643
		f 4 -4793 4786 -4792 -4791
		mu 0 4 5646 5649 5648 5647
		f 4 4790 -4796 -4795 -4794
		mu 0 4 5650 5653 5652 5651
		f 4 4793 -4797 4789 4792
		mu 0 4 5650 5651 5645 5642
		f 4 4794 -4798 4788 4796
		mu 0 4 5651 5652 5644 5645
		f 4 4801 4800 -4800 -4799
		mu 0 4 5654 5657 5656 5655
		f 4 4805 -4805 -4804 -4803
		mu 0 4 5658 5661 5660 5659
		f 4 4808 -4802 -4808 -4807
		mu 0 4 5662 5665 5664 5663
		f 4 -4813 -4812 -4811 -4810
		mu 0 4 5666 5669 5668 5667
		f 4 -4816 -4815 4811 -4814
		mu 0 4 5670 5673 5672 5671
		f 4 -4820 -4819 -4818 -4817
		mu 0 4 5674 5677 5676 5675
		f 4 -4823 -4822 -4821 4818
		mu 0 4 5678 5681 5680 5679
		f 4 -4801 -4825 4802 -4824
		mu 0 4 5682 5685 5684 5683
		f 4 -4827 4825 4824 -4809
		mu 0 4 5686 5689 5688 5687
		f 4 4799 4823 4803 -4828
		mu 0 4 5690 5693 5692 5691
		f 4 -4830 -4806 -4826 -4829
		mu 0 4 5694 5697 5696 5695
		f 4 4814 -4832 4807 -4831
		mu 0 4 5698 5701 5700 5699
		f 4 -4833 4810 4830 4798
		mu 0 4 5702 5705 5704 5703
		f 4 4832 4827 -4835 -4834
		mu 0 4 5706 5709 5708 5707
		f 4 4829 4836 4817 -4836
		mu 0 4 5710 5713 5712 5711
		f 4 4834 4804 4835 4820
		mu 0 4 5714 5717 5716 5715
		f 4 4822 -4839 4812 -4838
		mu 0 4 5718 5721 5720 5719
		f 4 4833 4821 4837 4809
		mu 0 4 5722 5725 5724 5723
		f 4 -4840 4828 4826 4806
		mu 0 4 5726 5729 5728 5727
		f 4 -4841 -4837 4839 4831
		mu 0 4 5730 5733 5732 5731
		f 4 4815 -4842 4816 4840
		mu 0 4 5734 5737 5736 5735
		f 4 4838 4819 4841 4813
		mu 0 4 5738 5741 5740 5739
		f 4 4845 4844 -4844 -4843
		mu 0 4 5742 5745 5744 5743
		f 4 4849 -4849 -4848 -4847
		mu 0 4 5746 5749 5748 5747
		f 4 4852 -4846 -4852 -4851
		mu 0 4 5750 5745 5742 5751
		f 4 -4857 -4856 -4855 -4854
		mu 0 4 5752 5755 5754 5753
		f 4 -4860 -4859 4855 -4858
		mu 0 4 5756 5757 5754 5755
		f 4 -4864 -4863 -4862 -4861
		mu 0 4 5758 5761 5760 5759
		f 4 -4867 -4866 -4865 4862
		mu 0 4 5761 5763 5762 5760
		f 4 -4845 -4869 4846 -4868
		mu 0 4 5744 5745 5746 5747
		f 4 -4871 4869 4868 -4853
		mu 0 4 5750 5764 5746 5745
		f 4 4843 4867 4847 -4872
		mu 0 4 5765 5744 5747 5766
		f 4 -4874 -4850 -4870 -4873
		mu 0 4 5767 5749 5746 5768
		f 4 4858 -4876 4851 -4875
		mu 0 4 5769 5772 5771 5770
		f 4 -4877 4854 4874 4842
		mu 0 4 5773 5776 5775 5774
		f 4 4876 4871 -4879 -4878
		mu 0 4 5777 5780 5779 5778
		f 4 4873 4880 4861 -4880
		mu 0 4 5781 5784 5783 5782
		f 4 4878 4848 4879 4864
		mu 0 4 5785 5788 5787 5786
		f 4 4866 -4883 4856 -4882
		mu 0 4 5763 5761 5755 5752
		f 4 4877 4865 4881 4853
		mu 0 4 5753 5762 5763 5752
		f 4 -4884 4872 4870 4850
		mu 0 4 5789 5791 5790 5750
		f 4 -4885 -4881 4883 4875
		mu 0 4 5792 5795 5794 5793
		f 4 4859 -4886 4860 4884
		mu 0 4 5757 5756 5758 5759
		f 4 4882 4863 4885 4857
		mu 0 4 5755 5761 5758 5756
		f 4 -4890 -4889 -4888 -4887
		mu 0 4 5796 5799 5798 5797
		f 4 -4893 4886 -4892 -4891
		mu 0 4 5800 5803 5802 5801
		f 4 4890 -4896 -4895 -4894
		mu 0 4 5804 5807 5806 5805
		f 4 4893 -4897 4889 4892
		mu 0 4 5808 5811 5810 5809
		f 4 4894 -4898 4888 4896
		mu 0 4 5812 5815 5814 5813;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode shadingEngine -n "SpiderBot_SG";
	rename -uid "8CE9345D-4EC6-1FCF-5AFA-35BC27170199";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "04BFF9CD-454B-1674-8D0D-6397963E9971";
createNode phong -n "SpiderBot_Shader";
	rename -uid "3FD4AA3E-4A9D-0668-2618-0C81053C40E8";
	setAttr ".sc" -type "float3" 0.1 0.1 0.1 ;
	setAttr ".cp" 98.07843017578125;
createNode file -n "SpiderBot1F";
	rename -uid "B7008978-4E4A-A285-7BA3-CF928614BE65";
	setAttr ".ftn" -type "string" "D:/Documents/UVU/Junior2018Work/Rigging/SpiderBot/Spider_Guard_D.tga";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "SpiderBot_P2D";
	rename -uid "D7D465D9-4029-34BC-7B01-0EA7FB0A1C50";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "211198AA-4ACA-D129-00F9-69B05E079513";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A8BF7245-4488-BBE7-F739-F1941AF3A69B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A2BB1D12-40DA-C1D4-C132-D1B19E13A24D";
createNode displayLayerManager -n "layerManager";
	rename -uid "B05344A8-4C1E-7644-82A4-068A490EF8C6";
createNode displayLayer -n "defaultLayer";
	rename -uid "8644FC77-4A1D-01EF-AB58-E8A6D70F73F8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7F40C65C-4BC7-61C4-7975-F58370BE85BD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "42370894-4F9C-FFE2-A3BD-BFB53C6526AC";
	setAttr ".g" yes;
createNode groupId -n "groupId2";
	rename -uid "98DA16C8-4192-4651-3AD7-079D19006844";
	setAttr ".ihi" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "03F071A6-48FD-C75A-F991-79AB6F86755F";
	setAttr ".version" -type "string" "1.4.2.3";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "D635A64D-4520-E636-5A2D-BAA70EFAAEAF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "44AEF79E-4BE9-59BC-D5CC-58AEEFF8537F";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "80EB6B0B-4740-14BC-F913-3B9A9CB16F1B";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D8E217AD-4250-F8BD-69B8-CDB8383A9552";
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
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 977\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 977\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 977\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BB2D4EE0-4C98-3925-E4D9-36A23360D194";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "23399996-42C3-B595-CFB6-1C959A60BC49";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -856.66444826589736 -761.80206671428891 ;
	setAttr ".tgi[0].vh" -type "double2" 1045.6290541254018 611.80207267475305 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -545.71429443359375;
	setAttr ".tgi[0].ni[0].y" 171.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -236.10092163085938;
	setAttr ".tgi[0].ni[1].y" 194.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 375.71429443359375;
	setAttr ".tgi[0].ni[2].y" 171.42857360839844;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 68.571426391601563;
	setAttr ".tgi[0].ni[3].y" 194.28572082519531;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "8B8BC5F5-4671-4B79-E5D6-4BBBC17DF28C";
createNode groupId -n "groupId3";
	rename -uid "05DCA106-42F2-F3BA-A0EC-F194E9E8427E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "75F92F96-4F00-606D-0958-F4B07A7B65D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:2397]";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "9495E4E4-48CE-9FF0-1EEA-329619007B19";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "A1AABAD7-4F74-03EB-2741-A3A5F6703FDD";
	setAttr ".txf" -type "matrix" 5.5511151231257827e-16 2.5 0 0 -2.5 5.5511151231257827e-16 0 0
		 0 0 2.5 0 1.183862085542152 2.7208541896101773e-15 4.2197148553135833e-15 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "FCD665A1-4BF1-BB3F-ACA4-929FE964EB9F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -115.47618588757912 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 119.04761431709188 ;
	setAttr -s 97 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -107.14286041259766;
	setAttr ".tgi[0].ni[0].y" -95.714286804199219;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 642.85711669921875;
	setAttr ".tgi[0].ni[1].y" -207.14285278320313;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1382.857177734375;
	setAttr ".tgi[0].ni[2].y" 680;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1382.857177734375;
	setAttr ".tgi[0].ni[3].y" -144.28572082519531;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1382.857177734375;
	setAttr ".tgi[0].ni[4].y" 838.5714111328125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 642.85711669921875;
	setAttr ".tgi[0].ni[5].y" -524.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 950;
	setAttr ".tgi[0].ni[6].y" 41.428569793701172;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 950;
	setAttr ".tgi[0].ni[7].y" 415.71429443359375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -107.14286041259766;
	setAttr ".tgi[0].ni[8].y" -95.714286804199219;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -107.14286041259766;
	setAttr ".tgi[0].ni[9].y" -95.714286804199219;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -107.14286041259766;
	setAttr ".tgi[0].ni[10].y" 34.285713195800781;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1690;
	setAttr ".tgi[0].ni[11].y" 722.85711669921875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -107.14286041259766;
	setAttr ".tgi[0].ni[12].y" 164.28572082519531;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -107.14286041259766;
	setAttr ".tgi[0].ni[13].y" -95.714286804199219;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -107.14286041259766;
	setAttr ".tgi[0].ni[14].y" -30;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 950;
	setAttr ".tgi[0].ni[15].y" 200;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -107.14286041259766;
	setAttr ".tgi[0].ni[16].y" -95.714286804199219;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1382.857177734375;
	setAttr ".tgi[0].ni[17].y" 58.571430206298828;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 950;
	setAttr ".tgi[0].ni[18].y" 687.14288330078125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -107.14286041259766;
	setAttr ".tgi[0].ni[19].y" -30;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -107.14286041259766;
	setAttr ".tgi[0].ni[20].y" 100;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -107.14286041259766;
	setAttr ".tgi[0].ni[21].y" 34.285713195800781;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -107.14286041259766;
	setAttr ".tgi[0].ni[22].y" 34.285713195800781;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1382.857177734375;
	setAttr ".tgi[0].ni[23].y" 160;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1382.857177734375;
	setAttr ".tgi[0].ni[24].y" 521.4285888671875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1690;
	setAttr ".tgi[0].ni[25].y" 345.71429443359375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -107.14286041259766;
	setAttr ".tgi[0].ni[26].y" 34.285713195800781;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -107.14286041259766;
	setAttr ".tgi[0].ni[27].y" 164.28572082519531;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1382.857177734375;
	setAttr ".tgi[0].ni[28].y" 261.42855834960938;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 642.85711669921875;
	setAttr ".tgi[0].ni[29].y" 484.28570556640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1690;
	setAttr ".tgi[0].ni[30].y" 447.14285278320313;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 950;
	setAttr ".tgi[0].ni[31].y" -117.14286041259766;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1382.857177734375;
	setAttr ".tgi[0].ni[32].y" -347.14285278320313;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -107.14286041259766;
	setAttr ".tgi[0].ni[33].y" -95.714286804199219;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 1382.857177734375;
	setAttr ".tgi[0].ni[34].y" 420;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -107.14286041259766;
	setAttr ".tgi[0].ni[35].y" 164.28572082519531;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -541.4285888671875;
	setAttr ".tgi[0].ni[36].y" 34.285713195800781;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -107.14286041259766;
	setAttr ".tgi[0].ni[37].y" -95.714286804199219;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1382.857177734375;
	setAttr ".tgi[0].ni[38].y" -42.857143402099609;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -107.14286041259766;
	setAttr ".tgi[0].ni[39].y" 164.28572082519531;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 1382.857177734375;
	setAttr ".tgi[0].ni[40].y" -245.71427917480469;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -107.14286041259766;
	setAttr ".tgi[0].ni[41].y" -95.714286804199219;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 335.71429443359375;
	setAttr ".tgi[0].ni[42].y" -160;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 642.85711669921875;
	setAttr ".tgi[0].ni[43].y" -365.71429443359375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 28.571428298950195;
	setAttr ".tgi[0].ni[44].y" 285.71429443359375;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 335.71429443359375;
	setAttr ".tgi[0].ni[45].y" -378.57144165039063;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -107.14286041259766;
	setAttr ".tgi[0].ni[46].y" 34.285713195800781;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 335.71429443359375;
	setAttr ".tgi[0].ni[47].y" 702.85711669921875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 335.71429443359375;
	setAttr ".tgi[0].ni[48].y" 214.28572082519531;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 28.571428298950195;
	setAttr ".tgi[0].ni[49].y" 64.285713195800781;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 28.571428298950195;
	setAttr ".tgi[0].ni[50].y" 491.42855834960938;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 28.571428298950195;
	setAttr ".tgi[0].ni[51].y" 387.14285278320313;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 335.71429443359375;
	setAttr ".tgi[0].ni[52].y" 372.85714721679688;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -107.14286041259766;
	setAttr ".tgi[0].ni[53].y" -95.714286804199219;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 642.85711669921875;
	setAttr ".tgi[0].ni[54].y" 700;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" -107.14286041259766;
	setAttr ".tgi[0].ni[55].y" 34.285713195800781;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 335.71429443359375;
	setAttr ".tgi[0].ni[56].y" 55.714286804199219;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" -100;
	setAttr ".tgi[0].ni[57].y" 25.714284896850586;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" -107.14286041259766;
	setAttr ".tgi[0].ni[58].y" 164.28572082519531;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 28.571428298950195;
	setAttr ".tgi[0].ni[59].y" 184.28572082519531;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 642.85711669921875;
	setAttr ".tgi[0].ni[60].y" -48.571430206298828;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 642.85711669921875;
	setAttr ".tgi[0].ni[61].y" 268.57144165039063;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1382.857177734375;
	setAttr ".tgi[0].ni[62].y" -550;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -107.14286041259766;
	setAttr ".tgi[0].ni[63].y" 164.28572082519531;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 642.85711669921875;
	setAttr ".tgi[0].ni[64].y" 110;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" -107.14286041259766;
	setAttr ".tgi[0].ni[65].y" 164.28572082519531;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 28.571428298950195;
	setAttr ".tgi[0].ni[66].y" -45.714286804199219;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 642.85711669921875;
	setAttr ".tgi[0].ni[67].y" -682.85711669921875;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 950;
	setAttr ".tgi[0].ni[68].y" -281.42855834960938;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 950;
	setAttr ".tgi[0].ni[69].y" -541.4285888671875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 950;
	setAttr ".tgi[0].ni[70].y" -700;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 404.28570556640625;
	setAttr ".tgi[0].ni[71].y" -2.8571429252624512;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" -414.28570556640625;
	setAttr ".tgi[0].ni[72].y" 34.285713195800781;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1382.857177734375;
	setAttr ".tgi[0].ni[73].y" -752.85711669921875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 404.28570556640625;
	setAttr ".tgi[0].ni[74].y" 92.857139587402344;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 1382.857177734375;
	setAttr ".tgi[0].ni[75].y" -448.57144165039063;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 200;
	setAttr ".tgi[0].ni[76].y" 34.285713195800781;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1382.857177734375;
	setAttr ".tgi[0].ni[77].y" -651.4285888671875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 950;
	setAttr ".tgi[0].ni[78].y" -440;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -107.14286041259766;
	setAttr ".tgi[0].ni[79].y" 34.285713195800781;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" -107.14286041259766;
	setAttr ".tgi[0].ni[80].y" 34.285713195800781;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -107.14286041259766;
	setAttr ".tgi[0].ni[81].y" 34.285713195800781;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" -2032.857177734375;
	setAttr ".tgi[0].ni[82].y" 228.57142639160156;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -107.14286041259766;
	setAttr ".tgi[0].ni[83].y" 34.285713195800781;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -107.14286041259766;
	setAttr ".tgi[0].ni[84].y" 34.285713195800781;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 1690;
	setAttr ".tgi[0].ni[85].y" -465.71429443359375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 1690;
	setAttr ".tgi[0].ni[86].y" -668.5714111328125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 1690;
	setAttr ".tgi[0].ni[87].y" 142.85714721679688;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1690;
	setAttr ".tgi[0].ni[88].y" 41.428569793701172;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1690;
	setAttr ".tgi[0].ni[89].y" 605.71429443359375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 1690;
	setAttr ".tgi[0].ni[90].y" 244.28572082519531;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1690;
	setAttr ".tgi[0].ni[91].y" -60;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 1690;
	setAttr ".tgi[0].ni[92].y" -161.42857360839844;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1690;
	setAttr ".tgi[0].ni[93].y" -262.85714721679688;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 1690;
	setAttr ".tgi[0].ni[94].y" -364.28570556640625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1690;
	setAttr ".tgi[0].ni[95].y" -567.14288330078125;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1690;
	setAttr ".tgi[0].ni[96].y" -770;
	setAttr ".tgi[0].ni[96].nvs" 18304;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "transformGeometry1.og" "L_FrontLeg_CtrlShape.cr";
connectAttr "R_BackLeg_01.msg" "R_BackLeg_IKHandle.hsj";
connectAttr "effector6.hp" "R_BackLeg_IKHandle.hee";
connectAttr "ikRPsolver.msg" "R_BackLeg_IKHandle.hsv";
connectAttr "R_BackLeg_IKHandle_poleVectorConstraint1.ctx" "R_BackLeg_IKHandle.pvx"
		;
connectAttr "R_BackLeg_IKHandle_poleVectorConstraint1.cty" "R_BackLeg_IKHandle.pvy"
		;
connectAttr "R_BackLeg_IKHandle_poleVectorConstraint1.ctz" "R_BackLeg_IKHandle.pvz"
		;
connectAttr "R_BackLeg_IKHandle_parentConstraint1.ctx" "R_BackLeg_IKHandle.tx";
connectAttr "R_BackLeg_IKHandle_parentConstraint1.cty" "R_BackLeg_IKHandle.ty";
connectAttr "R_BackLeg_IKHandle_parentConstraint1.ctz" "R_BackLeg_IKHandle.tz";
connectAttr "R_BackLeg_IKHandle_parentConstraint1.crx" "R_BackLeg_IKHandle.rx";
connectAttr "R_BackLeg_IKHandle_parentConstraint1.cry" "R_BackLeg_IKHandle.ry";
connectAttr "R_BackLeg_IKHandle_parentConstraint1.crz" "R_BackLeg_IKHandle.rz";
connectAttr "R_BackLeg_IKHandle_scaleConstraint1.csx" "R_BackLeg_IKHandle.sx";
connectAttr "R_BackLeg_IKHandle_scaleConstraint1.csy" "R_BackLeg_IKHandle.sy";
connectAttr "R_BackLeg_IKHandle_scaleConstraint1.csz" "R_BackLeg_IKHandle.sz";
connectAttr "R_BackLeg_IKHandle.pim" "R_BackLeg_IKHandle_poleVectorConstraint1.cpim"
		;
connectAttr "R_BackLeg_01.pm" "R_BackLeg_IKHandle_poleVectorConstraint1.ps";
connectAttr "R_BackLeg_01.t" "R_BackLeg_IKHandle_poleVectorConstraint1.crp";
connectAttr "R_BackLeg_PoleVector.t" "R_BackLeg_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_BackLeg_PoleVector.rp" "R_BackLeg_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_BackLeg_PoleVector.rpt" "R_BackLeg_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_BackLeg_PoleVector.pm" "R_BackLeg_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_BackLeg_IKHandle_poleVectorConstraint1.w0" "R_BackLeg_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_BackLeg_IKHandle.ro" "R_BackLeg_IKHandle_parentConstraint1.cro";
connectAttr "R_BackLeg_IKHandle.pim" "R_BackLeg_IKHandle_parentConstraint1.cpim"
		;
connectAttr "R_BackLeg_IKHandle.rp" "R_BackLeg_IKHandle_parentConstraint1.crp";
connectAttr "R_BackLeg_IKHandle.rpt" "R_BackLeg_IKHandle_parentConstraint1.crt";
connectAttr "R_BackLeg_Ctrl.t" "R_BackLeg_IKHandle_parentConstraint1.tg[0].tt";
connectAttr "R_BackLeg_Ctrl.rp" "R_BackLeg_IKHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "R_BackLeg_Ctrl.rpt" "R_BackLeg_IKHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "R_BackLeg_Ctrl.r" "R_BackLeg_IKHandle_parentConstraint1.tg[0].tr";
connectAttr "R_BackLeg_Ctrl.ro" "R_BackLeg_IKHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "R_BackLeg_Ctrl.s" "R_BackLeg_IKHandle_parentConstraint1.tg[0].ts";
connectAttr "R_BackLeg_Ctrl.pm" "R_BackLeg_IKHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_BackLeg_IKHandle_parentConstraint1.w0" "R_BackLeg_IKHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "R_BackLeg_IKHandle.pim" "R_BackLeg_IKHandle_scaleConstraint1.cpim";
connectAttr "R_BackLeg_Ctrl.s" "R_BackLeg_IKHandle_scaleConstraint1.tg[0].ts";
connectAttr "R_BackLeg_Ctrl.pm" "R_BackLeg_IKHandle_scaleConstraint1.tg[0].tpm";
connectAttr "R_BackLeg_IKHandle_scaleConstraint1.w0" "R_BackLeg_IKHandle_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_MiddleLeg_01.msg" "R_MiddleLeg_IKHandle.hsj";
connectAttr "effector5.hp" "R_MiddleLeg_IKHandle.hee";
connectAttr "ikRPsolver.msg" "R_MiddleLeg_IKHandle.hsv";
connectAttr "R_MiddleLeg_IKHandle_poleVectorConstraint1.ctx" "R_MiddleLeg_IKHandle.pvx"
		;
connectAttr "R_MiddleLeg_IKHandle_poleVectorConstraint1.cty" "R_MiddleLeg_IKHandle.pvy"
		;
connectAttr "R_MiddleLeg_IKHandle_poleVectorConstraint1.ctz" "R_MiddleLeg_IKHandle.pvz"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.ctx" "R_MiddleLeg_IKHandle.tx"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.cty" "R_MiddleLeg_IKHandle.ty"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.ctz" "R_MiddleLeg_IKHandle.tz"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.crx" "R_MiddleLeg_IKHandle.rx"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.cry" "R_MiddleLeg_IKHandle.ry"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.crz" "R_MiddleLeg_IKHandle.rz"
		;
connectAttr "R_MiddleLeg_IKHandle_scaleConstraint1.csx" "R_MiddleLeg_IKHandle.sx"
		;
connectAttr "R_MiddleLeg_IKHandle_scaleConstraint1.csy" "R_MiddleLeg_IKHandle.sy"
		;
connectAttr "R_MiddleLeg_IKHandle_scaleConstraint1.csz" "R_MiddleLeg_IKHandle.sz"
		;
connectAttr "R_MiddleLeg_IKHandle.pim" "R_MiddleLeg_IKHandle_poleVectorConstraint1.cpim"
		;
connectAttr "R_MiddleLeg_01.pm" "R_MiddleLeg_IKHandle_poleVectorConstraint1.ps";
connectAttr "R_MiddleLeg_01.t" "R_MiddleLeg_IKHandle_poleVectorConstraint1.crp";
connectAttr "R_MiddleLeg_PoleVector.t" "R_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_MiddleLeg_PoleVector.rp" "R_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_MiddleLeg_PoleVector.rpt" "R_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_MiddleLeg_PoleVector.pm" "R_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_MiddleLeg_IKHandle_poleVectorConstraint1.w0" "R_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_MiddleLeg_IKHandle.ro" "R_MiddleLeg_IKHandle_parentConstraint1.cro"
		;
connectAttr "R_MiddleLeg_IKHandle.pim" "R_MiddleLeg_IKHandle_parentConstraint1.cpim"
		;
connectAttr "R_MiddleLeg_IKHandle.rp" "R_MiddleLeg_IKHandle_parentConstraint1.crp"
		;
connectAttr "R_MiddleLeg_IKHandle.rpt" "R_MiddleLeg_IKHandle_parentConstraint1.crt"
		;
connectAttr "R_MiddleLeg_Ctrl.t" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "R_MiddleLeg_Ctrl.rp" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "R_MiddleLeg_Ctrl.rpt" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "R_MiddleLeg_Ctrl.r" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "R_MiddleLeg_Ctrl.ro" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "R_MiddleLeg_Ctrl.s" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "R_MiddleLeg_Ctrl.pm" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.w0" "R_MiddleLeg_IKHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "R_MiddleLeg_IKHandle.pim" "R_MiddleLeg_IKHandle_scaleConstraint1.cpim"
		;
connectAttr "R_MiddleLeg_Ctrl.s" "R_MiddleLeg_IKHandle_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_MiddleLeg_Ctrl.pm" "R_MiddleLeg_IKHandle_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_MiddleLeg_IKHandle_scaleConstraint1.w0" "R_MiddleLeg_IKHandle_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FrontLeg_01.msg" "R_FrontLeg_IKHandle.hsj";
connectAttr "effector4.hp" "R_FrontLeg_IKHandle.hee";
connectAttr "ikRPsolver.msg" "R_FrontLeg_IKHandle.hsv";
connectAttr "R_FrontLeg_IKHandle_poleVectorConstraint1.ctx" "R_FrontLeg_IKHandle.pvx"
		;
connectAttr "R_FrontLeg_IKHandle_poleVectorConstraint1.cty" "R_FrontLeg_IKHandle.pvy"
		;
connectAttr "R_FrontLeg_IKHandle_poleVectorConstraint1.ctz" "R_FrontLeg_IKHandle.pvz"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.ctx" "R_FrontLeg_IKHandle.tx"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.cty" "R_FrontLeg_IKHandle.ty"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.ctz" "R_FrontLeg_IKHandle.tz"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.crx" "R_FrontLeg_IKHandle.rx"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.cry" "R_FrontLeg_IKHandle.ry"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.crz" "R_FrontLeg_IKHandle.rz"
		;
connectAttr "R_FrontLeg_IKHandle_scaleConstraint1.csx" "R_FrontLeg_IKHandle.sx";
connectAttr "R_FrontLeg_IKHandle_scaleConstraint1.csy" "R_FrontLeg_IKHandle.sy";
connectAttr "R_FrontLeg_IKHandle_scaleConstraint1.csz" "R_FrontLeg_IKHandle.sz";
connectAttr "R_FrontLeg_IKHandle.pim" "R_FrontLeg_IKHandle_poleVectorConstraint1.cpim"
		;
connectAttr "R_FrontLeg_01.pm" "R_FrontLeg_IKHandle_poleVectorConstraint1.ps";
connectAttr "R_FrontLeg_01.t" "R_FrontLeg_IKHandle_poleVectorConstraint1.crp";
connectAttr "R_FrontLeg_PoleVector.t" "R_FrontLeg_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_FrontLeg_PoleVector.rp" "R_FrontLeg_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_FrontLeg_PoleVector.rpt" "R_FrontLeg_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_FrontLeg_PoleVector.pm" "R_FrontLeg_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_FrontLeg_IKHandle_poleVectorConstraint1.w0" "R_FrontLeg_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_FrontLeg_IKHandle.ro" "R_FrontLeg_IKHandle_parentConstraint1.cro"
		;
connectAttr "R_FrontLeg_IKHandle.pim" "R_FrontLeg_IKHandle_parentConstraint1.cpim"
		;
connectAttr "R_FrontLeg_IKHandle.rp" "R_FrontLeg_IKHandle_parentConstraint1.crp"
		;
connectAttr "R_FrontLeg_IKHandle.rpt" "R_FrontLeg_IKHandle_parentConstraint1.crt"
		;
connectAttr "R_FrontLeg_Ctrl.t" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FrontLeg_Ctrl.rp" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FrontLeg_Ctrl.rpt" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FrontLeg_Ctrl.r" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FrontLeg_Ctrl.ro" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FrontLeg_Ctrl.s" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FrontLeg_Ctrl.pm" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.w0" "R_FrontLeg_IKHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FrontLeg_IKHandle.pim" "R_FrontLeg_IKHandle_scaleConstraint1.cpim"
		;
connectAttr "R_FrontLeg_Ctrl.s" "R_FrontLeg_IKHandle_scaleConstraint1.tg[0].ts";
connectAttr "R_FrontLeg_Ctrl.pm" "R_FrontLeg_IKHandle_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FrontLeg_IKHandle_scaleConstraint1.w0" "R_FrontLeg_IKHandle_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_BackLeg_01.msg" "L_BackLeg_IKHandle.hsj";
connectAttr "effector3.hp" "L_BackLeg_IKHandle.hee";
connectAttr "ikRPsolver.msg" "L_BackLeg_IKHandle.hsv";
connectAttr "L_BackLeg_IKHandle_poleVectorConstraint1.ctx" "L_BackLeg_IKHandle.pvx"
		;
connectAttr "L_BackLeg_IKHandle_poleVectorConstraint1.cty" "L_BackLeg_IKHandle.pvy"
		;
connectAttr "L_BackLeg_IKHandle_poleVectorConstraint1.ctz" "L_BackLeg_IKHandle.pvz"
		;
connectAttr "L_BackLeg_IKHandle_parentConstraint1.ctx" "L_BackLeg_IKHandle.tx";
connectAttr "L_BackLeg_IKHandle_parentConstraint1.cty" "L_BackLeg_IKHandle.ty";
connectAttr "L_BackLeg_IKHandle_parentConstraint1.ctz" "L_BackLeg_IKHandle.tz";
connectAttr "L_BackLeg_IKHandle_parentConstraint1.crx" "L_BackLeg_IKHandle.rx";
connectAttr "L_BackLeg_IKHandle_parentConstraint1.cry" "L_BackLeg_IKHandle.ry";
connectAttr "L_BackLeg_IKHandle_parentConstraint1.crz" "L_BackLeg_IKHandle.rz";
connectAttr "L_BackLeg_IKHandle_scaleConstraint1.csx" "L_BackLeg_IKHandle.sx";
connectAttr "L_BackLeg_IKHandle_scaleConstraint1.csy" "L_BackLeg_IKHandle.sy";
connectAttr "L_BackLeg_IKHandle_scaleConstraint1.csz" "L_BackLeg_IKHandle.sz";
connectAttr "L_BackLeg_IKHandle.pim" "L_BackLeg_IKHandle_poleVectorConstraint1.cpim"
		;
connectAttr "L_BackLeg_01.pm" "L_BackLeg_IKHandle_poleVectorConstraint1.ps";
connectAttr "L_BackLeg_01.t" "L_BackLeg_IKHandle_poleVectorConstraint1.crp";
connectAttr "L_BackLeg_PoleVector.t" "L_BackLeg_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "L_BackLeg_PoleVector.rp" "L_BackLeg_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_BackLeg_PoleVector.rpt" "L_BackLeg_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_BackLeg_PoleVector.pm" "L_BackLeg_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_BackLeg_IKHandle_poleVectorConstraint1.w0" "L_BackLeg_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_BackLeg_IKHandle.ro" "L_BackLeg_IKHandle_parentConstraint1.cro";
connectAttr "L_BackLeg_IKHandle.pim" "L_BackLeg_IKHandle_parentConstraint1.cpim"
		;
connectAttr "L_BackLeg_IKHandle.rp" "L_BackLeg_IKHandle_parentConstraint1.crp";
connectAttr "L_BackLeg_IKHandle.rpt" "L_BackLeg_IKHandle_parentConstraint1.crt";
connectAttr "L_BackLeg_Ctrl.t" "L_BackLeg_IKHandle_parentConstraint1.tg[0].tt";
connectAttr "L_BackLeg_Ctrl.rp" "L_BackLeg_IKHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "L_BackLeg_Ctrl.rpt" "L_BackLeg_IKHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "L_BackLeg_Ctrl.r" "L_BackLeg_IKHandle_parentConstraint1.tg[0].tr";
connectAttr "L_BackLeg_Ctrl.ro" "L_BackLeg_IKHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "L_BackLeg_Ctrl.s" "L_BackLeg_IKHandle_parentConstraint1.tg[0].ts";
connectAttr "L_BackLeg_Ctrl.pm" "L_BackLeg_IKHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_BackLeg_IKHandle_parentConstraint1.w0" "L_BackLeg_IKHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "L_BackLeg_IKHandle.pim" "L_BackLeg_IKHandle_scaleConstraint1.cpim";
connectAttr "L_BackLeg_Ctrl.s" "L_BackLeg_IKHandle_scaleConstraint1.tg[0].ts";
connectAttr "L_BackLeg_Ctrl.pm" "L_BackLeg_IKHandle_scaleConstraint1.tg[0].tpm";
connectAttr "L_BackLeg_IKHandle_scaleConstraint1.w0" "L_BackLeg_IKHandle_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_MiddleLeg_01.msg" "L_MiddleLeg_IKHandle.hsj";
connectAttr "effector2.hp" "L_MiddleLeg_IKHandle.hee";
connectAttr "ikRPsolver.msg" "L_MiddleLeg_IKHandle.hsv";
connectAttr "L_MiddleLeg_IKHandle_poleVectorConstraint1.ctx" "L_MiddleLeg_IKHandle.pvx"
		;
connectAttr "L_MiddleLeg_IKHandle_poleVectorConstraint1.cty" "L_MiddleLeg_IKHandle.pvy"
		;
connectAttr "L_MiddleLeg_IKHandle_poleVectorConstraint1.ctz" "L_MiddleLeg_IKHandle.pvz"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.ctx" "L_MiddleLeg_IKHandle.tx"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.cty" "L_MiddleLeg_IKHandle.ty"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.ctz" "L_MiddleLeg_IKHandle.tz"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.crx" "L_MiddleLeg_IKHandle.rx"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.cry" "L_MiddleLeg_IKHandle.ry"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.crz" "L_MiddleLeg_IKHandle.rz"
		;
connectAttr "L_MiddleLeg_IKHandle_scaleConstraint1.csx" "L_MiddleLeg_IKHandle.sx"
		;
connectAttr "L_MiddleLeg_IKHandle_scaleConstraint1.csy" "L_MiddleLeg_IKHandle.sy"
		;
connectAttr "L_MiddleLeg_IKHandle_scaleConstraint1.csz" "L_MiddleLeg_IKHandle.sz"
		;
connectAttr "L_MiddleLeg_IKHandle.pim" "L_MiddleLeg_IKHandle_poleVectorConstraint1.cpim"
		;
connectAttr "L_MiddleLeg_01.pm" "L_MiddleLeg_IKHandle_poleVectorConstraint1.ps";
connectAttr "L_MiddleLeg_01.t" "L_MiddleLeg_IKHandle_poleVectorConstraint1.crp";
connectAttr "L_MiddleLeg_PoleVector.t" "L_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "L_MiddleLeg_PoleVector.rp" "L_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_MiddleLeg_PoleVector.rpt" "L_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_MiddleLeg_PoleVector.pm" "L_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_MiddleLeg_IKHandle_poleVectorConstraint1.w0" "L_MiddleLeg_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_MiddleLeg_IKHandle.ro" "L_MiddleLeg_IKHandle_parentConstraint1.cro"
		;
connectAttr "L_MiddleLeg_IKHandle.pim" "L_MiddleLeg_IKHandle_parentConstraint1.cpim"
		;
connectAttr "L_MiddleLeg_IKHandle.rp" "L_MiddleLeg_IKHandle_parentConstraint1.crp"
		;
connectAttr "L_MiddleLeg_IKHandle.rpt" "L_MiddleLeg_IKHandle_parentConstraint1.crt"
		;
connectAttr "L_MiddleLeg_Ctrl.t" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "L_MiddleLeg_Ctrl.rp" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "L_MiddleLeg_Ctrl.rpt" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "L_MiddleLeg_Ctrl.r" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "L_MiddleLeg_Ctrl.ro" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "L_MiddleLeg_Ctrl.s" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "L_MiddleLeg_Ctrl.pm" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.w0" "L_MiddleLeg_IKHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "L_MiddleLeg_IKHandle.pim" "L_MiddleLeg_IKHandle_scaleConstraint1.cpim"
		;
connectAttr "L_MiddleLeg_Ctrl.s" "L_MiddleLeg_IKHandle_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_MiddleLeg_Ctrl.pm" "L_MiddleLeg_IKHandle_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_MiddleLeg_IKHandle_scaleConstraint1.w0" "L_MiddleLeg_IKHandle_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FrontLeg_01.msg" "L_FrontLeg_IKHandle.hsj";
connectAttr "effector1.hp" "L_FrontLeg_IKHandle.hee";
connectAttr "ikRPsolver.msg" "L_FrontLeg_IKHandle.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "L_FrontLeg_IKHandle.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "L_FrontLeg_IKHandle.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "L_FrontLeg_IKHandle.pvz";
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.ctx" "L_FrontLeg_IKHandle.tx"
		;
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.cty" "L_FrontLeg_IKHandle.ty"
		;
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.ctz" "L_FrontLeg_IKHandle.tz"
		;
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.crx" "L_FrontLeg_IKHandle.rx"
		;
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.cry" "L_FrontLeg_IKHandle.ry"
		;
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.crz" "L_FrontLeg_IKHandle.rz"
		;
connectAttr "L_FrontLeg_IKHandle_scaleConstraint1.csx" "L_FrontLeg_IKHandle.sx";
connectAttr "L_FrontLeg_IKHandle_scaleConstraint1.csy" "L_FrontLeg_IKHandle.sy";
connectAttr "L_FrontLeg_IKHandle_scaleConstraint1.csz" "L_FrontLeg_IKHandle.sz";
connectAttr "L_FrontLeg_IKHandle.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "L_FrontLeg_01.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "L_FrontLeg_01.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "L_FrontLeg_PoleVector.t" "ikHandle1_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "L_FrontLeg_PoleVector.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_FrontLeg_PoleVector.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_FrontLeg_PoleVector.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_FrontLeg_IKHandle.ro" "L_FrontLeg_IKHandle_parentConstraint1.cro"
		;
connectAttr "L_FrontLeg_IKHandle.pim" "L_FrontLeg_IKHandle_parentConstraint1.cpim"
		;
connectAttr "L_FrontLeg_IKHandle.rp" "L_FrontLeg_IKHandle_parentConstraint1.crp"
		;
connectAttr "L_FrontLeg_IKHandle.rpt" "L_FrontLeg_IKHandle_parentConstraint1.crt"
		;
connectAttr "L_FrontLeg_Ctrl.t" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FrontLeg_Ctrl.rp" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FrontLeg_Ctrl.rpt" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FrontLeg_Ctrl.r" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FrontLeg_Ctrl.ro" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FrontLeg_Ctrl.s" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FrontLeg_Ctrl.pm" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.w0" "L_FrontLeg_IKHandle_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FrontLeg_IKHandle.pim" "L_FrontLeg_IKHandle_scaleConstraint1.cpim"
		;
connectAttr "L_FrontLeg_Ctrl.s" "L_FrontLeg_IKHandle_scaleConstraint1.tg[0].ts";
connectAttr "L_FrontLeg_Ctrl.pm" "L_FrontLeg_IKHandle_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FrontLeg_IKHandle_scaleConstraint1.w0" "L_FrontLeg_IKHandle_scaleConstraint1.tg[0].tw"
		;
connectAttr "COG.s" "R_FrontLeg_01.is";
connectAttr "R_FrontLeg_01.s" "R_FrontLeg_02.is";
connectAttr "R_FrontLeg_02.s" "R_FrontLeg_03.is";
connectAttr "R_FrontLeg_03.tx" "effector4.tx";
connectAttr "R_FrontLeg_03.ty" "effector4.ty";
connectAttr "R_FrontLeg_03.tz" "effector4.tz";
connectAttr "COG.s" "R_MiddleLeg_01.is";
connectAttr "R_MiddleLeg_01.s" "R_MiddleLeg_02.is";
connectAttr "R_MiddleLeg_02.s" "R_MiddleLeg_03.is";
connectAttr "R_MiddleLeg_03.tx" "effector5.tx";
connectAttr "R_MiddleLeg_03.ty" "effector5.ty";
connectAttr "R_MiddleLeg_03.tz" "effector5.tz";
connectAttr "COG.s" "R_BackLeg_01.is";
connectAttr "R_BackLeg_01.s" "R_BackLeg_02.is";
connectAttr "R_BackLeg_02.s" "R_BackLeg_03.is";
connectAttr "R_BackLeg_03.tx" "effector6.tx";
connectAttr "R_BackLeg_03.ty" "effector6.ty";
connectAttr "R_BackLeg_03.tz" "effector6.tz";
connectAttr "COG.s" "L_BackLeg_01.is";
connectAttr "L_BackLeg_01.s" "L_BackLeg_02.is";
connectAttr "L_BackLeg_02.s" "L_BackLeg_03.is";
connectAttr "L_BackLeg_03.tx" "effector3.tx";
connectAttr "L_BackLeg_03.ty" "effector3.ty";
connectAttr "L_BackLeg_03.tz" "effector3.tz";
connectAttr "COG.s" "L_MiddleLeg_01.is";
connectAttr "L_MiddleLeg_01.s" "L_MiddleLeg_02.is";
connectAttr "L_MiddleLeg_02.s" "L_MiddleLeg_03.is";
connectAttr "L_MiddleLeg_03.tx" "effector2.tx";
connectAttr "L_MiddleLeg_03.ty" "effector2.ty";
connectAttr "L_MiddleLeg_03.tz" "effector2.tz";
connectAttr "COG.s" "L_FrontLeg_01.is";
connectAttr "L_FrontLeg_01.s" "L_FrontLeg_02.is";
connectAttr "L_FrontLeg_02.s" "L_FrontLeg_03.is";
connectAttr "L_FrontLeg_03.tx" "effector1.tx";
connectAttr "L_FrontLeg_03.ty" "effector1.ty";
connectAttr "L_FrontLeg_03.tz" "effector1.tz";
connectAttr "groupId3.id" "SpiderBot_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "SpiderBot_GeoShape.iog.og[0].gco";
connectAttr "groupId2.id" "SpiderBot_GeoShape.iog.og[1].gid";
connectAttr "groupParts1.og" "SpiderBot_GeoShape.i";
connectAttr "SpiderBot_Shader.oc" "SpiderBot_SG.ss";
connectAttr "groupId3.msg" "SpiderBot_SG.gn" -na;
connectAttr "SpiderBot_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "SpiderBot_SG.msg" "materialInfo1.sg";
connectAttr "SpiderBot_Shader.msg" "materialInfo1.m";
connectAttr "SpiderBot1F.msg" "materialInfo1.t" -na;
connectAttr "SpiderBot1F.oc" "SpiderBot_Shader.c";
connectAttr "SpiderBot_P2D.c" "SpiderBot1F.c";
connectAttr "SpiderBot_P2D.tf" "SpiderBot1F.tf";
connectAttr "SpiderBot_P2D.rf" "SpiderBot1F.rf";
connectAttr "SpiderBot_P2D.s" "SpiderBot1F.s";
connectAttr "SpiderBot_P2D.wu" "SpiderBot1F.wu";
connectAttr "SpiderBot_P2D.wv" "SpiderBot1F.wv";
connectAttr "SpiderBot_P2D.re" "SpiderBot1F.re";
connectAttr "SpiderBot_P2D.of" "SpiderBot1F.of";
connectAttr "SpiderBot_P2D.r" "SpiderBot1F.ro";
connectAttr "SpiderBot_P2D.o" "SpiderBot1F.uv";
connectAttr "SpiderBot_P2D.ofs" "SpiderBot1F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "SpiderBot1F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SpiderBot1F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SpiderBot1F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SpiderBot1F.ws";
relationship "link" ":lightLinker1" "SpiderBot_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SpiderBot_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "SpiderBot_P2D.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "SpiderBot1F.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "SpiderBot_SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "SpiderBot_Shader.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "SpiderBot_GeoShapeOrig.w" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "L_MiddleLeg_PoleVector_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "L_MiddleLeg_PoleVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "R_MiddleLeg_IKHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "R_BackLeg_IKHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "R_MiddleLeg_PoleVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "L_FrontLeg_PoleVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "effector3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "R_FrontLeg_IKHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "L_BackLeg_PoleVector_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "R_BackLeg_PoleVector_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "L_FrontLeg_PoleVector_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "R_MiddleLeg_IKHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "L_FrontLeg_PoleVectorShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "R_BackLeg_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "R_BackLeg_PoleVectorShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "effector4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "R_FrontLeg_PoleVectorShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "L_BackLeg_IKHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "effector5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "L_BackLeg_PoleVectorShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "R_MiddleLeg_PoleVectorShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "R_MiddleLeg_PoleVector_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "R_FrontLeg_PoleVector_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "R_FrontLeg_IKHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "R_BackLeg_PoleVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "L_BackLeg_IKHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "R_BackLeg_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "L_MiddleLeg_PoleVectorShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "L_BackLeg_PoleVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "R_FrontLeg_PoleVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "R_BackLeg_IKHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "effector6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "R_BackLeg_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "R_MiddleLeg_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "R_MiddleLeg_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "R_MiddleLeg_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "IKHandle_Master_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "R_FrontLeg_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "R_FrontLeg_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "R_FrontLeg_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "L_BackLeg_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "SpiderBot_Geo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "L_MiddleLeg_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "L_MiddleLeg_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "L_BackLeg_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "L_FrontLeg_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "Geometry.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "R_MiddleLeg_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "L_BackLeg_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "L_MiddleLeg_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "R_MiddleLeg_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "R_FrontLeg_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "R_FrontLeg_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "L_MiddleLeg_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "R_MiddleLeg_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "L_BackLeg_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "R_BackLeg_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "SpiderBot_GeoShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "SpiderBot_GeoShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "R_BackLeg_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "R_BackLeg_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "R_FrontLeg_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "L_MiddleLeg_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "L_MiddleLeg_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "L_BackLeg_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn";
connectAttr "L_BackLeg_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "L_FrontLeg_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn";
connectAttr "L_FrontLeg_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "L_MiddleLeg_IKHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "ikHandle1_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "effector1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn";
connectAttr "PoleVector_Master_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "makeNurbCircle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "L_FrontLeg_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "L_FrontLeg_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "L_MiddleLeg_IKHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "L_FrontLeg_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "L_FrontLeg_IKHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "effector2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "Skeleton.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn";
connectAttr "Deformers.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn";
connectAttr "Controls.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "COG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "SpiderBot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn";
connectAttr "transformGeometry1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "L_MiddleLeg_IKHandle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "L_FrontLeg_IKHandle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "L_BackLeg_IKHandle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "R_FrontLeg_IKHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "R_MiddleLeg_IKHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "R_MiddleLeg_IKHandle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "R_FrontLeg_IKHandle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "R_BackLeg_IKHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "L_BackLeg_IKHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "R_BackLeg_IKHandle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "L_MiddleLeg_IKHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "L_FrontLeg_IKHandle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "SpiderBot_SG.pa" ":renderPartition.st" -na;
connectAttr "SpiderBot_Shader.msg" ":defaultShaderList1.s" -na;
connectAttr "SpiderBot_P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SpiderBot1F.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of SpiderBot.ma

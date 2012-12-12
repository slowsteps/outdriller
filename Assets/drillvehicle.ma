//Maya ASCII 2013 scene
//Name: drillvehicle.ma
//Last modified: Wed, Dec 12, 2012 01:40:08 AM
//Codeset: UTF-8
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201207040330-835994";
fileInfo "osv" "Mac OS X 10.8.2";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" -31.507647687275572 17.023669500742724 -35.50087662397052 ;
	setAttr ".r" -type "double3" 163.19999999999797 -43.999999999999602 179.9999999999996 ;
	setAttr ".rp" -type "double3" -5.3290705182007514e-15 0 0 ;
	setAttr ".rpt" -type "double3" -3.2836711635857938e-16 2.1379934529572984e-15 9.3590266650232982e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 131.52085906799903;
	setAttr ".coi" 51.402537158878559;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.7319549121121223 2.3485725997508187 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" -1.5344028980440354 3.8360827188903466 -9.398048290037778 ;
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".rpt" -type "double3" 9.8790512618381793e-16 -8.7175223911416157e-16 9.3798268606076846e-17 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 9.3980482900377762;
	setAttr ".ow" 24.899468192142667;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -3.6259657577941273 1.1535144439830165 0 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 7.0170618827195321 2.849224528035549 -12.03143981877192 ;
	setAttr ".r" -type "double3" 157.19110229624636 345.04630615837573 -180 ;
	setAttr ".rpt" -type "double3" 1.4012236805268603e-14 0 -1.4469349662169163e-14 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 11.793623653907321;
	setAttr ".ow" 1.9542745557519632;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 1.4977296699654441 0.12262795738229736 -0.092704728606294751 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".dr" yes;
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 9.2302164043990977 8.8395402492642585 3.2404854093018494 ;
	setAttr ".r" -type "double3" -35.264389682754704 45 -2.2489917831974728e-14 ;
	setAttr ".rp" -type "double3" 0 8.8817841970012523e-16 -1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -2.261798944301186e-15 -6.6651183329330941e-16 9.4871129973939127e-16 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 12.884631192491273;
	setAttr ".ow" 30.795834205070395;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 1.7912711170052109 1.4005949618703708 -4.1984598780920326 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "drill";
	setAttr ".t" -type "double3" 0.99918644364832876 0.32311412765029468 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.55555355544232277 0.55555355544232277 0.55555355544232277 ;
createNode mesh -n "drillShape" -p "drill";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41161166131496429 0.28661166131496429 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "axel";
	setAttr ".t" -type "double3" 2.2412457228743965 0.33497853672815581 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.67280921328767584 0.67280921328767584 0.67280921328767584 ;
createNode mesh -n "axelShape" -p "axel";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "curve1";
createNode nurbsCurve -n "curveShape1" -p "curve1";
	setAttr -k off ".v";
createNode transform -n "curve3";
createNode nurbsCurve -n "curveShape3" -p "curve3";
	setAttr -k off ".v";
createNode transform -n "curve4";
createNode nurbsCurve -n "curveShape4" -p "curve4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-5.6476741703886688 -1.3864860534667964 -1.8744199514695762e-16
		-5.6476741703886688 -1.3864860534667964 -1.8744199514695762e-16
		;
createNode transform -n "group";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr ".rp" -type "double3" 1.5 1 0 ;
	setAttr ".sp" -type "double3" 1.5 1 0 ;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 4.6937264019267371 0 0 ;
	setAttr ".rp" -type "double3" -2.384185791015625e-07 -2.384185791015625e-07 0 ;
	setAttr ".sp" -type "double3" -2.384185791015625e-07 -2.384185791015625e-07 0 ;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" 5.2045899994120308 0.13578004245154252 0 ;
	setAttr ".r" -type "double3" 0 22.5 90 ;
	setAttr ".s" -type "double3" 0.76330649479496082 0.48392063705149024 0.76330649479496082 ;
createNode transform -n "tank" -p "pCylinder2";
	setAttr ".t" -type "double3" 0.23279075390419007 3.6252255444152718e-15 0.096425087462172973 ;
createNode mesh -n "tankShape" -p "tank";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.4145808517932892 0.5 ;
	setAttr -s 7 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uvSet1";
	setAttr ".uvst[2].uvsn" -type "string" "uvSet11";
	setAttr ".uvst[3].uvsn" -type "string" "uvSet12";
	setAttr ".uvst[4].uvsn" -type "string" "uvSet13";
	setAttr ".uvst[5].uvsn" -type "string" "uvSet14";
	setAttr ".uvst[6].uvsn" -type "string" "uvSet15";
	setAttr ".cuvs" -type "string" "uvSet15";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "pCylinder2";
createNode mesh -n "pCylinderShape2" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group2";
	setAttr ".t" -type "double3" -4.950063785652727 0 0 ;
	setAttr ".rp" -type "double3" 5.0817008836706385 -0.65853554574113771 -1.8247378641918359 ;
	setAttr ".sp" -type "double3" 5.0817008836706385 -0.65853554574113771 -1.8247378641918359 ;
createNode transform -n "group3";
	setAttr ".t" -type "double3" 0 0 0.67343216215547286 ;
	setAttr ".rp" -type "double3" 7.3431342732590084 0.0011284091510712635 -1.5350588092976141 ;
	setAttr ".sp" -type "double3" 7.3431342732590084 0.0011284091510712635 -1.5350588092976141 ;
createNode transform -n "group4";
	setAttr ".t" -type "double3" 0 0 0.56389533341435849 ;
	setAttr ".rp" -type "double3" 7.3431342732590084 0.0011284091510712635 -1.5350588092976141 ;
	setAttr ".sp" -type "double3" 7.3431342732590084 0.0011284091510712635 -1.5350588092976141 ;
createNode transform -n "wheel";
	setAttr ".t" -type "double3" 7.5802164282409468 0.32569962792713103 -1.3435713771474256 ;
	setAttr ".r" -type "double3" -2.8249000307521029e-30 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode mesh -n "leftwheelShape" -p "wheel";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "wheel_velg" -p "wheel";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -0.12385894934429942 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
createNode mesh -n "wheel_velgShape" -p "|wheel|wheel_velg";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6" -p "wheel";
	setAttr ".t" -type "double3" -7.5802164282409459 -0.32569962792713097 4.0109815293255364 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 7.5802160110084316 0.31942723346670826 -1.3435713845980064 ;
	setAttr ".sp" -type "double3" 7.5802160110084333 0.31942723346670832 -1.3435713845980062 ;
	setAttr ".spt" -type "double3" -1.7763568394002501e-15 -5.5511151231257815e-17 -2.2204460492503136e-16 ;
createNode transform -n "leftwheel" -p "wheel";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.7755575615628914e-14 2.6674101521781104 ;
createNode transform -n "gunaxel";
	setAttr ".t" -type "double3" 3.8339469752759259 2.3133989660554648 -0.69535547367832506 ;
	setAttr ".r" -type "double3" -89.999999999999957 -1.5372641606343734e-06 -1.537264160634374e-06 ;
createNode mesh -n "gunaxelShape" -p "gunaxel";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	setAttr ".rp" -type "double3" 3.8372248433083813 2.2996435217199158 -0.59557605711460138 ;
	setAttr ".sp" -type "double3" 3.8372248433083813 2.2996435217199158 -0.59557605711460138 ;
createNode transform -n "gunaxelshaft" -p "group5";
	setAttr ".t" -type "double3" 3.8339469752759259 2.3133989660554648 -0.59557605720254769 ;
	setAttr ".r" -type "double3" -90.000000634193185 -1.4003498913588929e-06 9.452777837680447 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
createNode mesh -n "gunaxelshaftShape" -p "gunaxelshaft";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "turret" -p "gunaxelshaft";
	setAttr ".t" -type "double3" 0.26022797526578945 -0.59557605022054783 0.011250592926136616 ;
	setAttr ".r" -type "double3" 89.999999999999957 -1.5372641606343731e-06 1.5372641606343744e-06 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "turretShape" -p "turret";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99996650218963612 0.99885029949410975 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[2]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[3]" -type "float3" 0 -0.2157197 0 ;
	setAttr ".pt[4]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.21571973 0 ;
	setAttr ".pt[6]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".pt[7]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".pt[9]" -type "float3" 0 3.7252903e-09 0 ;
createNode transform -n "pCylinder4" -p "turret";
	setAttr ".t" -type "double3" 0.48281167761503951 0.38662257394821298 0.13295217659558592 ;
	setAttr ".r" -type "double3" -1.6991052905789797e-06 0 -15.413322356451909 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder5" -p "pCylinder4";
	setAttr ".t" -type "double3" 0.012635336685716148 0.80057171921026171 -0.0055856514354934994 ;
	setAttr ".r" -type "double3" -5.6872749593201579e-22 0 3.1805546814635168e-15 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "antenna" -p "pCylinder5";
	setAttr ".t" -type "double3" 0.00248340686173254 0.79236539892297753 0.016255271954146472 ;
	setAttr ".r" -type "double3" 7.2190361927446182e-05 9.5391370510609581e-06 1.2041393591659439e-11 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode mesh -n "antennaShape" -p "antenna";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "barrel2" -p "turret";
	setAttr ".t" -type "double3" -1.3622200227519534 -0.010989547285710888 -1.1161279446054846e-16 ;
	setAttr ".r" -type "double3" 7.6144480437309182e-23 -3.0786348308500714e-15 89.999999999999986 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode mesh -n "barrel2Shape" -p "barrel2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "gunbase";
	setAttr ".t" -type "double3" 3.7857926861186657 1.7865114788438741 0 ;
createNode mesh -n "gunbaseShape" -p "gunbase";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	setAttr ".t" -type "double3" 0 0 -0.19498949618804584 ;
	setAttr ".rp" -type "double3" 5.4711616300033103 -0.73413225885682154 -1.3385121679687575 ;
	setAttr ".sp" -type "double3" 5.4711616300033103 -0.73413225885682154 -1.3385121679687575 ;
createNode transform -n "group8";
	setAttr ".rp" -type "double3" 4.2145874996066652 -0.73155365986618393 -1.3385121679687575 ;
	setAttr ".sp" -type "double3" 4.2145874996066652 -0.73155365986618393 -1.3385121679687575 ;
createNode transform -n "pasted__group2" -p "group8";
	setAttr ".t" -type "double3" -4.950063785652727 0 0 ;
	setAttr ".rp" -type "double3" 5.0817008836706385 -0.65853554574113771 -1.8247378641918359 ;
	setAttr ".sp" -type "double3" 5.0817008836706385 -0.65853554574113771 -1.8247378641918359 ;
createNode transform -n "pCylinder6";
	setAttr ".t" -type "double3" 5.5119074768233647 -0.7203913602851495 -1.1706416093388059 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	setAttr -k off ".v";
	setAttr -s 3 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pPipe2" -p "pCylinder6";
	setAttr ".t" -type "double3" 0.00043939948653459737 0.10166915547733657 -0.00013219925217700101 ;
	setAttr ".r" -type "double3" 2.8249000307521022e-30 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode mesh -n "pasted__pPipeShape2" -p "|pCylinder6|pasted__pPipe2";
	setAttr -k off ".v";
	setAttr -s 3 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[45:59]" -type "float3"  0.058135912 0.092470996 -2.0175217e-09 
		0.053059194 0.092470996 -0.023884045 0.038706873 0.092470996 -0.043638308 0.017560573 
		0.092470996 -0.055847131 -0.0067232889 0.092470996 -0.058399469 -0.029945832 0.092470996 
		-0.050853997 -0.048091657 0.092470996 -0.034515411 -0.058023199 0.092470996 -0.012208809 
		-0.058023192 0.092470996 0.012208815 -0.048091643 0.092470996 0.034515429 -0.029945819 
		0.092470996 0.050854005 -0.0067232749 0.092470996 0.058399469 0.017560583 0.092470996 
		0.055847108 0.038706873 0.092470996 0.0436383 0.053059179 0.092470996 0.023884021;
createNode transform -n "pasted__pPipe3" -p "pCylinder6";
	setAttr ".t" -type "double3" 0.00043939948653459737 0.10166915547733657 -0.00013219925217700101 ;
	setAttr ".r" -type "double3" 2.8249000307521022e-30 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode mesh -n "pasted__pPipeShape3" -p "|pCylinder6|pasted__pPipe3";
	setAttr -k off ".v";
	setAttr -s 3 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0 1 0.06666667 1
		 0.13333334 1 0.20000002 1 0.26666668 1 0.33333334 1 0.40000001 1 0.46666667 1 0.53333336
		 1 0.60000002 1 0.66666669 1 0.73333335 1 0.80000001 1 0.86666667 1 0.93333334 1 1
		 1 0 0.75 0.06666667 0.75 0.13333334 0.75 0.20000002 0.75 0.26666668 0.75 0.33333334
		 0.75 0.40000001 0.75 0.46666667 0.75 0.53333336 0.75 0.60000002 0.75 0.66666669 0.75
		 0.73333335 0.75 0.80000001 0.75 0.86666667 0.75 0.93333334 0.75 1 0.75 0 0.5 0.06666667
		 0.5 0.13333334 0.5 0.20000002 0.5 0.26666668 0.5 0.33333334 0.5 0.40000001 0.5 0.46666667
		 0.5 0.53333336 0.5 0.60000002 0.5 0.66666669 0.5 0.73333335 0.5 0.80000001 0.5 0.86666667
		 0.5 0.93333334 0.5 1 0.5 0 0.25 0.06666667 0.25 0.13333334 0.25 0.20000002 0.25 0.26666668
		 0.25 0.33333334 0.25 0.40000001 0.25 0.46666667 0.25 0.53333336 0.25 0.60000002 0.25
		 0.66666669 0.25 0.73333335 0.25 0.80000001 0.25 0.86666667 0.25 0.93333334 0.25 1
		 0.25 0 0 0.06666667 0 0.13333334 0 0.20000002 0 0.26666668 0 0.33333334 0 0.40000001
		 0 0.46666667 0 0.53333336 0 0.60000002 0 0.66666669 0 0.73333335 0 0.80000001 0 0.86666667
		 0 0.93333334 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[45:59]" -type "float3"  0.058135912 0.092470996 -2.0175217e-09 
		0.053059194 0.092470996 -0.023884045 0.038706873 0.092470996 -0.043638308 0.017560573 
		0.092470996 -0.055847131 -0.0067232889 0.092470996 -0.058399469 -0.029945832 0.092470996 
		-0.050853997 -0.048091657 0.092470996 -0.034515411 -0.058023199 0.092470996 -0.012208809 
		-0.058023192 0.092470996 0.012208815 -0.048091643 0.092470996 0.034515429 -0.029945819 
		0.092470996 0.050854005 -0.0067232749 0.092470996 0.058399469 0.017560583 0.092470996 
		0.055847108 0.038706873 0.092470996 0.0436383 0.053059179 0.092470996 0.023884021;
	setAttr -s 60 ".vt[0:59]"  0.38 -0.125 -2.7755576e-17 0.34714726 -0.125 -0.15455993
		 0.2542696 -0.125 -0.28239501 0.11742643 -0.125 -0.36140144 -0.039720818 -0.125 -0.37791824
		 -0.18999997 -0.125 -0.32908958 -0.30742639 -0.125 -0.22335833 -0.371696 -0.125 -0.079006404
		 -0.37169597 -0.125 0.079006441 -0.30742633 -0.125 0.22335833 -0.18999988 -0.125 0.32908952
		 -0.039720759 -0.125 0.37791812 0.11742643 -0.125 0.36140126 0.25426954 -0.125 0.28239483
		 0.34714711 -0.125 0.15455976 0.38 0.125 2.7755576e-17 0.34714726 0.125 -0.15455993
		 0.2542696 0.125 -0.28239501 0.11742643 0.125 -0.36140144 -0.039720818 0.125 -0.37791824
		 -0.18999997 0.125 -0.32908958 -0.30742639 0.125 -0.22335833 -0.371696 0.125 -0.079006404
		 -0.37169597 0.125 0.079006441 -0.30742633 0.125 0.22335833 -0.18999988 0.125 0.32908952
		 -0.039720759 0.125 0.37791812 0.11742643 0.125 0.36140126 0.25426954 0.125 0.28239483
		 0.34714711 0.125 0.15455976 0.44999999 0.125 2.7755576e-17 0.41109544 0.125 -0.18303148
		 0.30110875 0.125 -0.33441514 0.13905762 0.125 -0.42797539 -0.047037825 0.125 -0.4475348
		 -0.22499999 0.125 -0.38971135 -0.3640576 0.125 -0.26450327 -0.44016632 0.125 -0.093560189
		 -0.44016629 0.125 0.093560293 -0.36405751 0.125 0.26450333 -0.22499987 0.125 0.38971135
		 -0.047037721 0.125 0.44753471 0.13905768 0.125 0.42797524 0.30110872 0.125 0.33441496
		 0.41109529 0.125 0.18303129 0.44999999 -0.125 -2.7755576e-17 0.41109544 -0.125 -0.18303148
		 0.30110875 -0.125 -0.33441514 0.13905762 -0.125 -0.42797539 -0.047037825 -0.125 -0.4475348
		 -0.22499999 -0.125 -0.38971135 -0.3640576 -0.125 -0.26450327 -0.44016632 -0.125 -0.093560189
		 -0.44016629 -0.125 0.093560293 -0.36405751 -0.125 0.26450333 -0.22499987 -0.125 0.38971135
		 -0.047037721 -0.125 0.44753471 0.13905768 -0.125 0.42797524 0.30110872 -0.125 0.33441496
		 0.41109529 -0.125 0.18303129;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 0 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 15 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 30 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 45 0 0 15 1 1 16 1
		 2 17 1 3 18 1 4 19 1 5 20 1 6 21 1 7 22 1 8 23 1 9 24 1 10 25 1 11 26 1 12 27 1 13 28 1
		 14 29 1 15 30 1 16 31 1 17 32 1 18 33 1 19 34 1 20 35 1 21 36 1 22 37 1 23 38 1 24 39 1
		 25 40 1 26 41 1 27 42 1 28 43 1 29 44 1 30 45 1 31 46 1 32 47 1 33 48 1 34 49 1 35 50 1
		 36 51 1 37 52 1 38 53 1 39 54 1 40 55 1 41 56 1 42 57 1 43 58 1 44 59 1 45 0 1 46 1 1
		 47 2 1 48 3 1 49 4 1 50 5 1 51 6 1 52 7 1 53 8 1 54 9 1 55 10 1 56 11 1 57 12 1 58 13 1
		 59 14 1;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 -1 60 15 -62
		mu 0 4 1 0 16 17
		f 4 -2 61 16 -63
		mu 0 4 2 1 17 18
		f 4 -3 62 17 -64
		mu 0 4 3 2 18 19
		f 4 -4 63 18 -65
		mu 0 4 4 3 19 20
		f 4 -5 64 19 -66
		mu 0 4 5 4 20 21
		f 4 -6 65 20 -67
		mu 0 4 6 5 21 22
		f 4 -7 66 21 -68
		mu 0 4 7 6 22 23
		f 4 -8 67 22 -69
		mu 0 4 8 7 23 24
		f 4 -9 68 23 -70
		mu 0 4 9 8 24 25
		f 4 -10 69 24 -71
		mu 0 4 10 9 25 26
		f 4 -11 70 25 -72
		mu 0 4 11 10 26 27
		f 4 -12 71 26 -73
		mu 0 4 12 11 27 28
		f 4 -13 72 27 -74
		mu 0 4 13 12 28 29
		f 4 -14 73 28 -75
		mu 0 4 14 13 29 30
		f 4 -15 74 29 -61
		mu 0 4 15 14 30 31
		f 4 -16 75 30 -77
		mu 0 4 17 16 32 33
		f 4 -17 76 31 -78
		mu 0 4 18 17 33 34
		f 4 -18 77 32 -79
		mu 0 4 19 18 34 35
		f 4 -19 78 33 -80
		mu 0 4 20 19 35 36
		f 4 -20 79 34 -81
		mu 0 4 21 20 36 37
		f 4 -21 80 35 -82
		mu 0 4 22 21 37 38
		f 4 -22 81 36 -83
		mu 0 4 23 22 38 39
		f 4 -23 82 37 -84
		mu 0 4 24 23 39 40
		f 4 -24 83 38 -85
		mu 0 4 25 24 40 41
		f 4 -25 84 39 -86
		mu 0 4 26 25 41 42
		f 4 -26 85 40 -87
		mu 0 4 27 26 42 43
		f 4 -27 86 41 -88
		mu 0 4 28 27 43 44
		f 4 -28 87 42 -89
		mu 0 4 29 28 44 45
		f 4 -29 88 43 -90
		mu 0 4 30 29 45 46
		f 4 -30 89 44 -76
		mu 0 4 31 30 46 47
		f 4 -31 90 45 -92
		mu 0 4 33 32 48 49
		f 4 -32 91 46 -93
		mu 0 4 34 33 49 50
		f 4 -33 92 47 -94
		mu 0 4 35 34 50 51
		f 4 -34 93 48 -95
		mu 0 4 36 35 51 52
		f 4 -35 94 49 -96
		mu 0 4 37 36 52 53
		f 4 -36 95 50 -97
		mu 0 4 38 37 53 54
		f 4 -37 96 51 -98
		mu 0 4 39 38 54 55
		f 4 -38 97 52 -99
		mu 0 4 40 39 55 56
		f 4 -39 98 53 -100
		mu 0 4 41 40 56 57
		f 4 -40 99 54 -101
		mu 0 4 42 41 57 58
		f 4 -41 100 55 -102
		mu 0 4 43 42 58 59
		f 4 -42 101 56 -103
		mu 0 4 44 43 59 60
		f 4 -43 102 57 -104
		mu 0 4 45 44 60 61
		f 4 -44 103 58 -105
		mu 0 4 46 45 61 62
		f 4 -45 104 59 -91
		mu 0 4 47 46 62 63
		f 4 -46 105 0 -107
		mu 0 4 49 48 64 65
		f 4 -47 106 1 -108
		mu 0 4 50 49 65 66
		f 4 -48 107 2 -109
		mu 0 4 51 50 66 67
		f 4 -49 108 3 -110
		mu 0 4 52 51 67 68
		f 4 -50 109 4 -111
		mu 0 4 53 52 68 69
		f 4 -51 110 5 -112
		mu 0 4 54 53 69 70
		f 4 -52 111 6 -113
		mu 0 4 55 54 70 71
		f 4 -53 112 7 -114
		mu 0 4 56 55 71 72
		f 4 -54 113 8 -115
		mu 0 4 57 56 72 73
		f 4 -55 114 9 -116
		mu 0 4 58 57 73 74
		f 4 -56 115 10 -117
		mu 0 4 59 58 74 75
		f 4 -57 116 11 -118
		mu 0 4 60 59 75 76
		f 4 -58 117 12 -119
		mu 0 4 61 60 76 77
		f 4 -59 118 13 -120
		mu 0 4 62 61 77 78
		f 4 -60 119 14 -106
		mu 0 4 63 62 78 79;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group9";
	setAttr ".t" -type "double3" -1.726513122636236 0 0 ;
	setAttr ".rp" -type "double3" 5.457 -0.72039133048282711 -1.2339761863324161 ;
	setAttr ".sp" -type "double3" 5.457 -0.72039133048282711 -1.2339761863324161 ;
createNode transform -n "pCylinder7" -p "group9";
	setAttr ".t" -type "double3" 6.1000682938101791 -0.7203913602851495 -1.1706416093388059 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode transform -n "pCylinder8" -p "group9";
	setAttr ".t" -type "double3" 4.9959982924980286 -0.7203913602851495 -1.1706416093388059 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "transform2";
	setAttr ".t" -type "double3" 7.5802164282409459 0.32569962792710327 1.3238387750306844 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "transform3";
	setAttr ".t" -type "double3" 7.5802164282409459 0.32569962792710327 1.3238387750306844 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "wheelring" -p "transform3";
	setAttr ".t" -type "double3" 0 -0.0062728116929083857 -0.068284822796317438 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
createNode mesh -n "wheelringShape" -p "|transform3|wheelring";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform4";
	setAttr ".t" -type "double3" 7.5802164282409468 0.32569962792713103 -1.3435713771474256 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
parent -s -nc -r -add "|wheel|leftwheelShape" "leftwheel" ;
parent -s -nc -r -add "|wheel|wheel_velg" "leftwheel" ;
parent -s -nc -r -add "|pCylinder6|pCylinderShape6" "pCylinder7" ;
parent -s -nc -r -add "|pCylinder6|pCylinderShape6" "pCylinder8" ;
parent -s -nc -r -add "|pCylinder6|pasted__pPipe2" "pCylinder7" ;
parent -s -nc -r -add "|pCylinder6|pasted__pPipe2" "pCylinder8" ;
parent -s -nc -r -add "|pCylinder6|pasted__pPipe3" "pCylinder7" ;
parent -s -nc -r -add "|pCylinder6|pasted__pPipe3" "pCylinder8" ;
parent -s -nc -r -add "|transform3|wheelring" "transform4" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"drill\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"drill\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 99 -ps 2 100 1 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 48 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCone -n "polyCone1";
	setAttr ".r" 2.3749869062225226;
	setAttr ".h" 3.747353040490732;
	setAttr ".sa" 8;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 0.58462925679929278;
	setAttr ".h" 2.338652589850521;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
	setAttr ".rcp" yes;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode blinn -n "blinn5";
	setAttr ".c" -type "float3" 0.79584777 0.8943277 0.90196079 ;
createNode shadingEngine -n "blinn5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.033498307405751326 -0.9994387742132832 0 0 0.9994387742132832 0.033498307405751326 0 0
		 0 0 1 0 3.7389418575119033 1.1403460212357248 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8663169 1.0775809 0 ;
	setAttr ".rs" 851819849;
	setAttr ".ls" -type "double3" 0.91666666497167637 0.91666666497167637 1.4193181769097132 ;
	setAttr ".off" 0.40000000596046448;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.7867588417958462 -1.2960729545228635 -2.3749866485595703 ;
	setAttr ".cbx" -type "double3" 1.945874915458472 3.4512347733804902 2.3749866485595703 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.033498307405751326 -0.9994387742132832 0 0 0.9994387742132832 0.033498307405751326 0 0
		 0 0 1 0 3.7389418575119033 1.1403460212357248 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8663169 1.0775809 0 ;
	setAttr ".rs" 852302208;
	setAttr ".ls" -type "double3" 1 1 2.366704314591435 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.807892006326743 -0.66555441326034415 -1.7441141605377195 ;
	setAttr ".cbx" -type "double3" 1.9247416317851895 2.8207162281246614 1.7441141605377195 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[4]" "f[6]" "f[8]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-16 -1 0 0 -1 -2.2204460492503131e-16 1.2246467991473532e-16 0
		 -1.2246467991473532e-16 -2.4651903288156619e-32 -1 0 -7.1782542141813943 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.3498025 0.98850048 2.220446e-16 ;
	setAttr ".rs" 344583206;
	setAttr ".off" 0.20000000298023224;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.0519311102766693 -1.3864860534667964 -2.3749866485595703 ;
	setAttr ".cbx" -type "double3" -5.6476741703886688 3.3634870052337651 2.3749866485595703 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[0]" -type "float3" 0.011499568 0.34309626 5.9604645e-08 ;
	setAttr ".tk[1]" -type "float3" 0.011499598 0.34309626 0 ;
	setAttr ".tk[2]" -type "float3" 0.011499627 0.34309626 5.9604645e-08 ;
	setAttr ".tk[3]" -type "float3" 0.011499598 0.34309626 0 ;
	setAttr ".tk[4]" -type "float3" 0.011499538 0.34309632 -7.4505806e-08 ;
	setAttr ".tk[5]" -type "float3" 0.011499538 0.34309632 1.1920929e-07 ;
	setAttr ".tk[6]" -type "float3" 0.011499568 0.34309626 -2.9802322e-08 ;
	setAttr ".tk[7]" -type "float3" 0.011499598 0.34309626 0 ;
	setAttr ".tk[8]" -type "float3" -5.9604645e-08 1.1920929e-07 -1.1920929e-07 ;
	setAttr ".tk[17]" -type "float3" -0.016604783 -0.49541208 0 ;
	setAttr ".tk[18]" -type "float3" -0.016604783 -0.49541256 0 ;
	setAttr ".tk[19]" -type "float3" -0.016604783 -0.49541256 0 ;
	setAttr ".tk[20]" -type "float3" -0.016604783 -0.49541232 0 ;
	setAttr ".tk[21]" -type "float3" -0.016604783 -0.49541232 0 ;
	setAttr ".tk[22]" -type "float3" -0.016604783 -0.49541232 0 ;
	setAttr ".tk[23]" -type "float3" -0.016604783 -0.49541232 0 ;
	setAttr ".tk[24]" -type "float3" -0.016604783 -0.49541232 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[4]" "f[6]" "f[8]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-16 -1 0 0 -1 -2.2204460492503131e-16 1.2246467991473532e-16 0
		 -1.2246467991473532e-16 -2.4651903288156619e-32 -1 0 -7.1782542141813943 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.0498872 0.98891461 -0.00011527538 ;
	setAttr ".rs" 1237450223;
	setAttr ".lt" -type "double3" -7.9103390504542404e-16 -1.3877787807814457e-16 -0.21498361352845 ;
	setAttr ".ls" -type "double3" 1 1 1.3412205371542163 ;
	setAttr ".off" 0.20000000298023224;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.2842322262663544 -1.1903529167175289 -2.1793818473815918 ;
	setAttr ".cbx" -type "double3" -5.8155418309111298 3.1681821346282963 2.1791512966156006 ;
createNode polyCylinder -n "polyCylinder4";
	setAttr ".r" 1.5;
	setAttr ".h" 9.7916304489534909;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 1;
createNode blinn -n "blinn8";
	setAttr ".c" -type "float3" 0.56099999 0.56099999 0.56099999 ;
createNode shadingEngine -n "blinn8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode blinn -n "blinn9";
	setAttr ".sc" -type "float3" 0.96835279 0.96835279 0.96835279 ;
	setAttr ".ec" 0.29997000098228455;
createNode shadingEngine -n "blinn9SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo11";
createNode blinn -n "drillblue";
	setAttr ".c" -type "float3" 0.56099999 0.56099999 0.56099999 ;
createNode shadingEngine -n "blinn11SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
createNode polyPipe -n "polyPipe3";
	setAttr ".r" 1.5;
	setAttr ".h" 0.2;
	setAttr ".t" 0.3;
createNode blinn -n "blinn12";
	setAttr ".c" -type "float3" 0.22784771 0.22784771 0.22784771 ;
createNode shadingEngine -n "blinn12SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 1 0.4892959 0 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/peter/Documents/outdriller/Assets/bulletblack.psd";
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 0 0.70520324757399744 -0.29210474937470121 0 -0.48392063705149024 0 1.3431495833645957e-17 0
		 6.3558033402546597e-17 0.29210474937470121 0.70520324757399733 0 5.2045899994120308 0.13578004245154252 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.2045898 0.13578004 0 ;
	setAttr ".rs" 982652266;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 2.220446e-16 -1.30861 2.220446e-16 ;
	setAttr ".tk[1]" -type "float3" 2.9353749e-16 -1.30861 2.220446e-16 ;
	setAttr ".tk[2]" -type "float3" 2.220446e-16 -1.30861 2.220446e-16 ;
	setAttr ".tk[3]" -type "float3" 2.220446e-16 -1.30861 1.4651134e-16 ;
	setAttr ".tk[4]" -type "float3" 2.220446e-16 -1.30861 2.220446e-16 ;
	setAttr ".tk[5]" -type "float3" 2.9353749e-16 -1.30861 2.220446e-16 ;
	setAttr ".tk[6]" -type "float3" 2.220446e-16 -1.30861 2.220446e-16 ;
	setAttr ".tk[7]" -type "float3" 2.220446e-16 -1.30861 1.4651134e-16 ;
	setAttr ".tk[16]" -type "float3" 2.9353749e-16 -1.30861 1.4651134e-16 ;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 0 0.70520324757399744 -0.29210474937470121 0 -0.48392063705149024 0 1.3431495833645957e-17 0
		 6.3558033402546597e-17 0.29210474937470121 0.70520324757399733 0 5.2045899994120308 0.13578004245154252 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.5212216377258301 0.13578006625175476 0 ;
	setAttr ".ps" -type "double2" 180 2.1156097054481502 ;
	setAttr ".uvs" -type "string" "uvSet1";
	setAttr ".r" 5.3716363906860352;
createNode polyCylProj -n "polyCylProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 0 0.70520324757399744 -0.29210474937470121 0 -0.48392063705149024 0 1.3431495833645957e-17 0
		 6.3558033402546597e-17 0.29210474937470121 0.70520324757399733 0 5.2045899994120308 0.13578004245154252 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.5212216377258301 0.13578006625175476 0 ;
	setAttr ".ps" -type "double2" 180 2.1156097054481502 ;
	setAttr ".uvs" -type "string" "uvSet11";
	setAttr ".r" 5.3716363906860352;
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/peter/Documents/outdriller/Assets/bulletblack.psd";
createNode place2dTexture -n "place2dTexture1";
createNode lambert -n "lambert4";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
createNode lambert -n "smallwheels";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
createNode lambert -n "lambert6";
	setAttr ".c" -type "float3" 0.20645456 0.20645456 0.20645456 ;
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 80 ".nuv[0:79]"  0 0 0 0 0 1 1 0 0 
		9 1 1 0 8 0 1 1 1 0 0 1 2 1 0 1 10 1 1 
		1 9 0 1 2 2 0 0 2 3 1 0 2 11 1 1 2 10
		 0 1 3 3 0 0 3 4 1 0 3 12 1 1 3 11 0 1 4 
		4 0 0 4 5 1 0 4 13 1 1 4 12 0 1 5 5 0 0 
		5 6 1 0 5 14 1 1 5 13 0 1 6 6 0 0 6 7
		 1 0 6 15 1 1 6 14 0 1 7 7 0 0 7 0 1 0 7 
		8 1 1 7 15 0 1 8 1 0 0 8 0 1 0 8 16 1 1 
		9 2 0 0 9 1 1 0 9 16 1 1 10 3 0 0 10 2
		 1 0 10 16 1 1 11 4 0 0 11 3 1 0 11 16 1 1 12 
		5 0 0 12 4 1 0 12 16 1 1 13 6 0 0 13 5 1 0 
		13 16 1 1 14 7 0 0 14 6 1 0 14 16 1 1 15 0
		 0 0 15 7 1 0 15 16 1 1 16 8 0 0 16 9 1 0 16 
		17 1 1 17 9 0 0 17 10 1 0 17 17 1 1 18 10 0 0 
		18 11 1 0 18 17 1 1 19 11 0 0 19 12 1 0 19 17
		 1 1 20 12 0 0 20 13 1 0 20 17 1 1 21 13 0 0 21 
		14 1 0 21 17 1 1 22 14 0 0 22 15 1 0 22 17 1 1 
		23 15 0 0 23 8 1 0 23 17 1 1;
	setAttr ".uvs" -type "string" "uvSet12";
createNode polyCylinder -n "polyCylinder5";
	setAttr ".ax" -type "double3" -3.2162452993532732e-16 0 -1 ;
	setAttr ".r" 0.42692203342831758;
	setAttr ".h" 0.47877015716376814;
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[3]" "f[5]";
	setAttr ".ix" -type "matrix" 1.0000000000000002 0 0 0 0 1 0 0 0 0 0.99999999999999967 0
		 10.00587433789658 -2.0218633715804155 -0.23938507858188407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 10.005875 -2.0218635 -0.23938508 ;
	setAttr ".rs" 1800210314;
	setAttr ".off" 0.10000000149011612;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.5789523146002225 -2.3915887479479845 -0.47877016189964067 ;
	setAttr ".cbx" -type "double3" 10.432796361192937 -1.6521380250151687 4.7358724997170754e-09 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[3]" "f[5]";
	setAttr ".ix" -type "matrix" 1.0000000000000002 0 0 0 0 1 0 0 0 0 0.99999999999999967 0
		 10.00587433789658 -2.0218633715804155 -0.23938507858188407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 10.005875 -1.9785621 -0.23938508 ;
	setAttr ".rs" 761921662;
	setAttr ".lt" -type "double3" 9.4368957093138306e-16 -1.0524936749186946e-16 0.94383892402209579 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.6289526841490201 -2.3049861495192583 -0.37877016786010514 ;
	setAttr ".cbx" -type "double3" 10.382795991644135 -1.6521380250151687 -0.099999989303662995 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[12:17]";
	setAttr ".ix" -type "matrix" 1.0000000000000002 0 0 0 0 1 0 0 0 0 0.99999999999999967 0
		 11 0.0062728116929083866 0.021962133480087243 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11 0.0062727523 -0.21742295 ;
	setAttr ".rs" 1721141684;
	setAttr ".off" 0.20000000298023224;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.573078155517578 -0.36345265408162775 -0.21742294983766933 ;
	setAttr ".cbx" -type "double3" 11.426921844482422 0.37599815825815497 -0.21742294983766933 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[26:37]" -type "float3"  -0.18654981 -0.10770419 0
		 -0.18654981 -0.10770419 0 -0.18654981 -0.10770419 0 -0.18654981 -0.10770419 0 0 0.17585084
		 0 0 0.17585084 0 0 0.17585084 0 0 0.17585084 0 0.17462188 -0.10081752 0 0.17462188
		 -0.10081752 0 0.17462188 -0.10081752 0 0.17462188 -0.10081752 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[12:17]";
	setAttr ".ix" -type "matrix" 1.0000000000000002 0 0 0 0 1 0 0 0 0 0.99999999999999967 0
		 11 0.0062728116929083866 0.021962133480087243 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11 0.0062728045 -0.21742295 ;
	setAttr ".rs" 97162427;
	setAttr ".lt" -type "double3" 0 5.4131074033823835e-18 -0.15752211351573298 ;
	setAttr ".ls" -type "double3" 1 1 0.85477943996357952 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.804018020629885 -0.16345256169442834 -0.21742294983766933 ;
	setAttr ".cbx" -type "double3" 11.195981979370115 0.17599817017908392 -0.21742294983766933 ;
createNode lambert -n "turretmetal";
createNode shadingEngine -n "lambert7SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "/Users/peter/Documents/outdriller/Assets/metalplate.tga";
createNode place2dTexture -n "place2dTexture2";
createNode polyCube -n "polyCube1";
	setAttr ".w" 1.5649095054310391;
	setAttr ".h" 0.76372831964760779;
	setAttr ".d" 1.2381845160063918;
	setAttr ".cuv" 2;
createNode polySplit -n "polySplit1";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.49999994039535522 
		0 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -3.3495886e-05 -0.0011497289 ;
	setAttr ".uvtk[5]" -type "float2" -0.025156638 4.8919741e-05 ;
	setAttr ".uvtk[7]" -type "float2" -0.025156651 -4.8908554e-05 ;
	setAttr ".uvtk[9]" -type "float2" -3.3495719e-05 0.0011496544 ;
	setAttr ".uvtk[18]" -type "float2" 4.8919122e-05 -0.28269684 ;
	setAttr ".uvtk[19]" -type "float2" -4.8926388e-05 -0.28269684 ;
createNode polyCylinder -n "polyCylinder9";
	setAttr ".r" 0.2;
	setAttr ".h" 0.33107994759476633;
	setAttr ".sa" 15;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder9";
	setAttr ".r" 0.3;
	setAttr ".h" 0.33107994759476633;
	setAttr ".sa" 15;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube2";
	setAttr ".w" 0.81994286079536494;
	setAttr ".h" 0.82096771942021041;
	setAttr ".d" 0.5;
	setAttr ".cuv" 2;
createNode polyCylinder -n "polyCylinder10";
	setAttr ".r" 0.21041979611428835;
	setAttr ".h" 0.2;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder11";
	setAttr ".r" 0.05;
	setAttr ".h" 1.4412256509151073;
	setAttr ".sa" 4;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode lambert -n "gunantenna";
	setAttr ".c" -type "float3" 0.17647059 0.14280105 0.13148789 ;
createNode shadingEngine -n "lambert8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
createNode lambert -n "gun_axel";
	setAttr ".c" -type "float3" 0.14399999 0.14399999 0.14399999 ;
createNode shadingEngine -n "lambert9SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
createNode lambert -n "gun_shaft";
	setAttr ".c" -type "float3" 0.29858428 0.46700001 0.063979015 ;
createNode shadingEngine -n "lambert10SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
createNode polyCylProj -n "polyCylProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 0 0.70520324757399744 -0.29210474937470121 0 -0.48392063705149024 0 1.3431495833645955e-17 0
		 6.3558033402546597e-17 0.29210474937470121 0.70520324757399733 0 5.204589999412029 0.18767006937442041 6.9388939039072284e-18 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.5212216377258301 0.18767008185386658 0 ;
	setAttr ".ps" -type "double2" 180 2.2231830807021886 ;
	setAttr ".uvs" -type "string" "uvSet13";
	setAttr ".r" 5.3716363906860352;
	setAttr ".ra" 5593.6218659559954;
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 0 0.70520324757399744 -0.29210474937470121 0 -0.48392063705149024 0 1.3431495833645955e-17 0
		 6.3558033402546597e-17 0.29210474937470121 0.70520324757399733 0 5.204589999412029 0.18767006937442041 6.9388939039072284e-18 1;
	setAttr ".uvs" -type "string" "uvSet14";
	setAttr ".s" -type "double3" 5.3716364775540288 5.3716364775540288 5.3716364775540288 ;
	setAttr ".p" 8;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 0 0.70520324757399744 -0.29210474937470121 0 -0.48392063705149024 0 1.3431495833645955e-17 0
		 6.3558033402546597e-17 0.29210474937470121 0.70520324757399733 0 5.204589999412029 0.18767006937442041 6.9388939039072284e-18 1;
	setAttr ".uvs" -type "string" "uvSet15";
	setAttr ".p" 8;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyBevel -n "polyBevel1";
	setAttr ".ics" -type "componentList" 1 "e[8:15]";
	setAttr ".ix" -type "matrix" 0 0.70520324757399744 -0.29210474937470121 0 -0.48392063705149024 0 1.3431495833645955e-17 0
		 6.3558033402546597e-17 0.29210474937470121 0.70520324757399733 0 5.2045899994120308 0.13578004245154252 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".ua" 1;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyPipe -n "pasted__polyPipe2";
	setAttr ".r" 0.45;
	setAttr ".h" 0.5;
	setAttr ".t" 0.07;
	setAttr ".sa" 15;
createNode materialInfo -n "pasted__materialInfo18";
createNode shadingEngine -n "pasted__lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__smallwheels";
createNode polyCylinder -n "polyCylinder12";
	setAttr ".r" 0.55;
	setAttr ".h" 0.2;
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode lambert -n "lambert11";
	setAttr ".c" -type "float3" 0.204 0.19160609 0.18074399 ;
createNode shadingEngine -n "lambert11SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
createNode lambert -n "lambert12";
	setAttr ".c" -type "float3" 0.76128787 0.76128787 0.76128787 ;
createNode shadingEngine -n "lambert12SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
createNode polyCylinder -n "polyCylinder13";
	setAttr ".r" 0.12;
	setAttr ".h" 0.2;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 1;
createNode lambert -n "antennalight";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert13SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -114.28571428571429 -288.09523809523813 ;
	setAttr ".vh" -type "double2" 441.66666666666674 30.952380952380956 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".anf" yes;
createNode polyTorus -n "polyTorus1";
	setAttr ".r" 1.5;
	setAttr ".sr" 0.15;
	setAttr ".sa" 30;
	setAttr ".sh" 6;
createNode polyPipe -n "polyPipe4";
	setAttr ".r" 0.27;
	setAttr ".h" 2.61743257529531;
	setAttr ".t" 0.099999999999999978;
	setAttr ".sa" 16;
	setAttr ".rcp" yes;
createNode animCurveTA -n "gunaxelshaft_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -89.999999999999957 10 -90.000000395595805;
createNode animCurveTA -n "gunaxelshaft_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.5372641606343734e-06 10 -1.485491481147459e-06
		 20 -1.485491481147459e-06;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "gunaxelshaft_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.537264160634374e-06 10 14.912152260436676
		 20 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
select -ne :time1;
	setAttr ".o" 20;
	setAttr ".unw" 20;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 5 ".hyp";
	setAttr ".hyp[2].isc" yes;
	setAttr ".hyp[3].isc" yes;
connectAttr "polyExtrudeFace8.out" "drillShape.i";
connectAttr "polyCylinder1.out" "axelShape.i";
connectAttr "polyBevel1.out" "tankShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "tankShape.uvst[3].uvtw";
connectAttr "groupParts1.og" "pCylinderShape2.i";
connectAttr "groupId1.id" "pCylinderShape2.iog.og[0].gid";
connectAttr "blinn9SG.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace12.out" "|wheel|leftwheelShape.i";
connectAttr "polyPipe3.out" "|wheel|wheel_velg|wheel_velgShape.i";
connectAttr "polyCylinder9.out" "gunaxelShape.i";
connectAttr "gunaxelshaft_rotateX.o" "gunaxelshaft.rx";
connectAttr "gunaxelshaft_rotateY.o" "gunaxelshaft.ry";
connectAttr "gunaxelshaft_rotateZ.o" "gunaxelshaft.rz";
connectAttr "pasted__polyCylinder9.out" "gunaxelshaftShape.i";
connectAttr "polyTweakUV5.out" "turretShape.i";
connectAttr "polyTweakUV5.uvtk[0]" "turretShape.uvst[0].uvtw";
connectAttr "polyCylinder10.out" "pCylinderShape4.i";
connectAttr "polyCylinder11.out" "pCylinderShape5.i";
connectAttr "polyCylinder13.out" "antennaShape.i";
connectAttr "polyPipe4.out" "barrel2Shape.i";
connectAttr "polyCube2.out" "gunbaseShape.i";
connectAttr "polyCylinder12.out" "|pCylinder6|pCylinderShape6.i";
connectAttr "pasted__polyPipe2.out" "|pCylinder6|pasted__pPipe2|pasted__pPipeShape2.i"
		;
connectAttr "polyTorus1.out" "|transform3|wheelring|wheelringShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "blinn5.oc" "blinn5SG.ss";
connectAttr "axelShape.iog" "blinn5SG.dsm" -na;
connectAttr "blinn5SG.msg" "materialInfo7.sg";
connectAttr "blinn5.msg" "materialInfo7.m";
connectAttr "polyCone1.out" "polyExtrudeFace2.ip";
connectAttr "drillShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "drillShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace7.ip";
connectAttr "drillShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "drillShape.wm" "polyExtrudeFace8.mp";
connectAttr "blinn8.oc" "blinn8SG.ss";
connectAttr "blinn8SG.msg" "materialInfo10.sg";
connectAttr "blinn8.msg" "materialInfo10.m";
connectAttr "file1.oc" "blinn9.c";
connectAttr "blinn9.oc" "blinn9SG.ss";
connectAttr "pCylinderShape2.iog.og[0]" "blinn9SG.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" "blinn9SG.dsm" -na;
connectAttr "groupId1.msg" "blinn9SG.gn" -na;
connectAttr "groupId2.msg" "blinn9SG.gn" -na;
connectAttr "blinn9SG.msg" "materialInfo11.sg";
connectAttr "blinn9.msg" "materialInfo11.m";
connectAttr "file1.msg" "materialInfo11.t" -na;
connectAttr "drillblue.oc" "blinn11SG.ss";
connectAttr "drillShape.iog" "blinn11SG.dsm" -na;
connectAttr "blinn11SG.msg" "materialInfo13.sg";
connectAttr "drillblue.msg" "materialInfo13.m";
connectAttr "blinn12.oc" "blinn12SG.ss";
connectAttr "blinn12SG.msg" "materialInfo14.sg";
connectAttr "blinn12.msg" "materialInfo14.m";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo15.sg";
connectAttr "lambert2.msg" "materialInfo15.m";
connectAttr "polyTweak2.out" "polyChipOff1.ip";
connectAttr "pCylinderShape2.wm" "polyChipOff1.mp";
connectAttr "polyCylinder4.out" "polyTweak2.ip";
connectAttr "pCylinderShape2.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "polyCylProj1.ip";
connectAttr "tankShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyCylProj2.ip";
connectAttr "tankShape.wm" "polyCylProj2.mp";
connectAttr "file2.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo16.sg";
connectAttr "lambert3.msg" "materialInfo16.m";
connectAttr "file2.msg" "materialInfo16.t" -na;
connectAttr "place2dTexture1.c" "file2.c";
connectAttr "place2dTexture1.tf" "file2.tf";
connectAttr "place2dTexture1.rf" "file2.rf";
connectAttr "place2dTexture1.mu" "file2.mu";
connectAttr "place2dTexture1.mv" "file2.mv";
connectAttr "place2dTexture1.s" "file2.s";
connectAttr "place2dTexture1.wu" "file2.wu";
connectAttr "place2dTexture1.wv" "file2.wv";
connectAttr "place2dTexture1.re" "file2.re";
connectAttr "place2dTexture1.of" "file2.of";
connectAttr "place2dTexture1.r" "file2.ro";
connectAttr "place2dTexture1.n" "file2.n";
connectAttr "place2dTexture1.vt1" "file2.vt1";
connectAttr "place2dTexture1.vt2" "file2.vt2";
connectAttr "place2dTexture1.vt3" "file2.vt3";
connectAttr "place2dTexture1.vc1" "file2.vc1";
connectAttr "place2dTexture1.o" "file2.uv";
connectAttr "place2dTexture1.ofs" "file2.fs";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo17.sg";
connectAttr "lambert4.msg" "materialInfo17.m";
connectAttr "smallwheels.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo18.sg";
connectAttr "smallwheels.msg" "materialInfo18.m";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "|wheel|wheel_velg|wheel_velgShape.iog" "lambert6SG.dsm" -na;
connectAttr "|wheel|leftwheel|wheel_velg|wheel_velgShape.iog" "lambert6SG.dsm" -na
		;
connectAttr "lambert6SG.msg" "materialInfo19.sg";
connectAttr "lambert6.msg" "materialInfo19.m";
connectAttr "polyCylProj2.out" "polyTweakUV1.ip";
connectAttr "polyCylinder5.out" "polyExtrudeFace9.ip";
connectAttr "|wheel|leftwheelShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "|wheel|leftwheelShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace11.ip";
connectAttr "|wheel|leftwheelShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "|wheel|leftwheelShape.wm" "polyExtrudeFace12.mp";
connectAttr "file3.oc" "turretmetal.c";
connectAttr "turretmetal.oc" "lambert7SG.ss";
connectAttr "turretShape.iog" "lambert7SG.dsm" -na;
connectAttr "gunbaseShape.iog" "lambert7SG.dsm" -na;
connectAttr "pCylinderShape4.iog" "lambert7SG.dsm" -na;
connectAttr "gunaxelshaftShape.iog" "lambert7SG.dsm" -na;
connectAttr "tankShape.iog" "lambert7SG.dsm" -na;
connectAttr "barrel2Shape.iog" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo20.sg";
connectAttr "turretmetal.msg" "materialInfo20.m";
connectAttr "file3.msg" "materialInfo20.t" -na;
connectAttr "place2dTexture2.c" "file3.c";
connectAttr "place2dTexture2.tf" "file3.tf";
connectAttr "place2dTexture2.rf" "file3.rf";
connectAttr "place2dTexture2.mu" "file3.mu";
connectAttr "place2dTexture2.mv" "file3.mv";
connectAttr "place2dTexture2.s" "file3.s";
connectAttr "place2dTexture2.wu" "file3.wu";
connectAttr "place2dTexture2.wv" "file3.wv";
connectAttr "place2dTexture2.re" "file3.re";
connectAttr "place2dTexture2.of" "file3.of";
connectAttr "place2dTexture2.r" "file3.ro";
connectAttr "place2dTexture2.n" "file3.n";
connectAttr "place2dTexture2.vt1" "file3.vt1";
connectAttr "place2dTexture2.vt2" "file3.vt2";
connectAttr "place2dTexture2.vt3" "file3.vt3";
connectAttr "place2dTexture2.vc1" "file3.vc1";
connectAttr "place2dTexture2.o" "file3.uv";
connectAttr "place2dTexture2.ofs" "file3.fs";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweakUV5.ip";
connectAttr "gunantenna.oc" "lambert8SG.ss";
connectAttr "pCylinderShape5.iog" "lambert8SG.dsm" -na;
connectAttr "lambert8SG.msg" "materialInfo21.sg";
connectAttr "gunantenna.msg" "materialInfo21.m";
connectAttr "gun_axel.oc" "lambert9SG.ss";
connectAttr "lambert9SG.msg" "materialInfo22.sg";
connectAttr "gun_axel.msg" "materialInfo22.m";
connectAttr "gun_shaft.oc" "lambert10SG.ss";
connectAttr "gunaxelShape.iog" "lambert10SG.dsm" -na;
connectAttr "lambert10SG.msg" "materialInfo23.sg";
connectAttr "gun_shaft.msg" "materialInfo23.m";
connectAttr "polyTweakUV1.out" "polyCylProj3.ip";
connectAttr "tankShape.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyAutoProj1.ip";
connectAttr "tankShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyAutoProj2.ip";
connectAttr "tankShape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyBevel1.ip";
connectAttr "tankShape.wm" "polyBevel1.mp";
connectAttr "pasted__lambert5SG.msg" "pasted__materialInfo18.sg";
connectAttr "pasted__smallwheels.msg" "pasted__materialInfo18.m";
connectAttr "pasted__smallwheels.oc" "pasted__lambert5SG.ss";
connectAttr "lambert11.oc" "lambert11SG.ss";
connectAttr "|pCylinder6|pCylinderShape6.iog" "lambert11SG.dsm" -na;
connectAttr "|group9|pCylinder7|pCylinderShape6.iog" "lambert11SG.dsm" -na;
connectAttr "|group9|pCylinder8|pCylinderShape6.iog" "lambert11SG.dsm" -na;
connectAttr "lambert11SG.msg" "materialInfo24.sg";
connectAttr "lambert11.msg" "materialInfo24.m";
connectAttr "lambert12.oc" "lambert12SG.ss";
connectAttr "|pCylinder6|pasted__pPipe2|pasted__pPipeShape2.iog" "lambert12SG.dsm"
		 -na;
connectAttr "|pCylinder6|pasted__pPipe3|pasted__pPipeShape3.iog" "lambert12SG.dsm"
		 -na;
connectAttr "|group9|pCylinder7|pasted__pPipe2|pasted__pPipeShape2.iog" "lambert12SG.dsm"
		 -na;
connectAttr "|group9|pCylinder7|pasted__pPipe3|pasted__pPipeShape3.iog" "lambert12SG.dsm"
		 -na;
connectAttr "|group9|pCylinder8|pasted__pPipe2|pasted__pPipeShape2.iog" "lambert12SG.dsm"
		 -na;
connectAttr "|group9|pCylinder8|pasted__pPipe3|pasted__pPipeShape3.iog" "lambert12SG.dsm"
		 -na;
connectAttr "lambert12SG.msg" "materialInfo25.sg";
connectAttr "lambert12.msg" "materialInfo25.m";
connectAttr "antennalight.oc" "lambert13SG.ss";
connectAttr "antennaShape.iog" "lambert13SG.dsm" -na;
connectAttr "lambert13SG.msg" "materialInfo26.sg";
connectAttr "antennalight.msg" "materialInfo26.m";
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "blinn5SG.pa" ":renderPartition.st" -na;
connectAttr "blinn8SG.pa" ":renderPartition.st" -na;
connectAttr "blinn9SG.pa" ":renderPartition.st" -na;
connectAttr "blinn11SG.pa" ":renderPartition.st" -na;
connectAttr "blinn12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "|wheel|leftwheelShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|transform4|wheelring|wheelringShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|wheel|leftwheel|leftwheelShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|transform3|wheelring|wheelringShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "blinn5.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn8.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn9.msg" ":defaultShaderList1.s" -na;
connectAttr "drillblue.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn12.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "smallwheels.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "turretmetal.msg" ":defaultShaderList1.s" -na;
connectAttr "gunantenna.msg" ":defaultShaderList1.s" -na;
connectAttr "gun_axel.msg" ":defaultShaderList1.s" -na;
connectAttr "gun_shaft.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__smallwheels.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "antennalight.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
connectAttr "|transform3|wheelring.msg" ":hyperGraphLayout.hyp[2].dn";
connectAttr "|wheel|wheel_velg.msg" ":hyperGraphLayout.hyp[3].dn";
// End of drillvehicle.ma

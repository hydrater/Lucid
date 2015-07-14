//Maya ASCII 2015 scene
//Name: molotovi.ma
//Last modified: Fri, Jun 19, 2015 10:30:09 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.40955990992158309 2.2000545882693223 16.622280553330526 ;
	setAttr ".r" -type "double3" 3.861647270448886 -1.7999999999984651 -3.7290525796811399e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 16.74954806231672;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.90179602972826944 3.9403091120182951 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.8473537443305532;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 8.1658558206883072 -0.4326505276050438 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.5568085090434112;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0 4.08256776476233 0 ;
createNode transform -n "transform1" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41874995827674866 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 111 ".pt";
	setAttr ".pt[20]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[21]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[22]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[23]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[24]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[25]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[26]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[27]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[28]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[29]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[30]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[31]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[32]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[33]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[34]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[35]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[36]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[37]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[38]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[39]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[40]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[41]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[42]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[43]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[44]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[45]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[46]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[47]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[48]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[49]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[50]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[51]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[52]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[53]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[54]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[55]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[56]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[57]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[58]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[59]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[60]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[61]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[62]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[63]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[64]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[65]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[66]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[67]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[68]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[69]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[70]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[71]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[72]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[73]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[74]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[75]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[76]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[77]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[78]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[79]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[80]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[81]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[82]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[83]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[84]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[85]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[86]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[87]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[88]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[89]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[90]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[91]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[92]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[93]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[94]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[95]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[96]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[97]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[98]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[99]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[100]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[101]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[102]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[103]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[104]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[105]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[106]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[107]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[108]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[109]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[110]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[111]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[112]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[113]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[114]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[115]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[116]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[117]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[118]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[119]" -type "float3" 0 2.8610229e-006 0 ;
	setAttr ".pt[120]" -type "float3" 0 2.8610229e-006 0 ;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" -0.003125544626583654 8.115392332666044 0.004388469322138544 ;
createNode transform -n "transform2" -p "pSphere1";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.25000002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2";
	setAttr ".s" -type "double3" 0.2998195542928721 0.2998195542928721 0.2998195542928721 ;
createNode mesh -n "pSphere2Shape" -p "pSphere2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 0.9492346956143588 4.1569726475781472 -0.026045107907997078 ;
	setAttr ".s" -type "double3" 2.0601157092983149 1 1 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 99 ".pt";
	setAttr ".pt[0]" -type "float3" -0.0013951306 -0.033048522 0 ;
	setAttr ".pt[1]" -type "float3" -0.00081556407 -0.02465179 0 ;
	setAttr ".pt[2]" -type "float3" -0.0002545405 -0.0076939138 0 ;
	setAttr ".pt[21]" -type "float3" -0.0017737311 -0.033569738 0 ;
	setAttr ".pt[22]" -type "float3" -0.00093200622 -0.024964813 0 ;
	setAttr ".pt[23]" -type "float3" -0.00028496137 -0.0086134346 0 ;
	setAttr ".pt[42]" -type "float3" -0.0022778425 -0.034263741 0 ;
	setAttr ".pt[43]" -type "float3" -0.0011818387 -0.025259338 0 ;
	setAttr ".pt[44]" -type "float3" -0.0002967703 -0.0089703789 0 ;
	setAttr ".pt[63]" -type "float3" -0.002883862 -0.035098042 0 ;
	setAttr ".pt[64]" -type "float3" -0.0015560676 -0.02572115 0 ;
	setAttr ".pt[65]" -type "float3" -0.00029342569 -0.0088692838 0 ;
	setAttr ".pt[66]" -type "float3" -1.8355586e-006 -5.5482837e-005 0 ;
	setAttr ".pt[84]" -type "float3" -0.0035635082 -0.036033705 0 ;
	setAttr ".pt[85]" -type "float3" -0.0020292138 -0.026322609 0 ;
	setAttr ".pt[86]" -type "float3" -0.00028807053 -0.0087074144 0 ;
	setAttr ".pt[87]" -type "float3" -1.8355586e-006 -5.5482837e-005 0 ;
	setAttr ".pt[105]" -type "float3" -0.0042849816 -0.037026949 0 ;
	setAttr ".pt[106]" -type "float3" -0.0025696866 -0.02699689 0 ;
	setAttr ".pt[107]" -type "float3" -0.00036023447 -0.0086229704 0 ;
	setAttr ".pt[108]" -type "float3" -1.39593e-006 -4.2194326e-005 0 ;
	setAttr ".pt[126]" -type "float3" -0.0049993196 -0.038010366 0 ;
	setAttr ".pt[127]" -type "float3" -0.0031292061 -0.027680846 0 ;
	setAttr ".pt[128]" -type "float3" -0.00052566442 -0.0086609321 0 ;
	setAttr ".pt[129]" -type "float3" -1.39593e-006 -4.2194326e-005 0 ;
	setAttr ".pt[147]" -type "float3" -0.0055800783 -0.038809892 0 ;
	setAttr ".pt[148]" -type "float3" -0.0035619903 -0.028014727 0 ;
	setAttr ".pt[149]" -type "float3" -0.00068639161 -0.0083479593 0 ;
	setAttr ".pt[168]" -type "float3" -0.00614639 -0.039589524 0 ;
	setAttr ".pt[169]" -type "float3" -0.0042161951 -0.028733857 0 ;
	setAttr ".pt[170]" -type "float3" -0.00098956958 -0.0085977921 0 ;
	setAttr ".pt[189]" -type "float3" -0.0067584543 -0.040432144 0 ;
	setAttr ".pt[190]" -type "float3" -0.0047019222 -0.029250698 0 ;
	setAttr ".pt[191]" -type "float3" -0.0012461217 -0.0088309171 0 ;
	setAttr ".pt[192]" -type "float3" -1.39593e-006 -4.2194326e-005 0 ;
	setAttr ".pt[210]" -type "float3" -0.0073723011 -0.041277219 0 ;
	setAttr ".pt[211]" -type "float3" -0.0052146455 -0.029245133 0 ;
	setAttr ".pt[212]" -type "float3" -0.0014214386 -0.0084580779 0 ;
	setAttr ".pt[213]" -type "float3" -1.39593e-006 -4.2194326e-005 0 ;
	setAttr ".pt[231]" -type "float3" -0.007810358 -0.041880287 0 ;
	setAttr ".pt[232]" -type "float3" -0.0053140637 -0.027660692 0 ;
	setAttr ".pt[233]" -type "float3" -0.0015025815 -0.007247007 0 ;
	setAttr ".pt[252]" -type "float3" -0.0079093911 -0.042016625 0 ;
	setAttr ".pt[253]" -type "float3" -0.0054869172 -0.028525651 0 ;
	setAttr ".pt[254]" -type "float3" -0.0014487235 -0.0068828831 0 ;
	setAttr ".pt[273]" -type "float3" -0.0079093911 -0.042016625 0 ;
	setAttr ".pt[274]" -type "float3" -0.0054878825 -0.028554829 0 ;
	setAttr ".pt[275]" -type "float3" -0.0014322296 -0.0069965981 0 ;
	setAttr ".pt[294]" -type "float3" -0.0077675339 -0.041821335 0 ;
	setAttr ".pt[295]" -type "float3" -0.0055232029 -0.029622439 0 ;
	setAttr ".pt[296]" -type "float3" -0.0013867746 -0.0076016821 0 ;
	setAttr ".pt[315]" -type "float3" -0.0073891059 -0.041300356 0 ;
	setAttr ".pt[316]" -type "float3" -0.0051400922 -0.029953901 0 ;
	setAttr ".pt[317]" -type "float3" -0.0012732726 -0.0084793083 0 ;
	setAttr ".pt[336]" -type "float3" -0.0073094084 -0.041190635 0 ;
	setAttr ".pt[337]" -type "float3" -0.0049713068 -0.030087678 0 ;
	setAttr ".pt[338]" -type "float3" -0.0012214122 -0.0091505405 0 ;
	setAttr ".pt[357]" -type "float3" -0.0068493765 -0.040557317 0 ;
	setAttr ".pt[358]" -type "float3" -0.0045688637 -0.029613134 0 ;
	setAttr ".pt[359]" -type "float3" -0.0009703479 -0.0089855557 0 ;
	setAttr ".pt[378]" -type "float3" -0.0062757907 -0.039767671 0 ;
	setAttr ".pt[379]" -type "float3" -0.0040501063 -0.028948637 0 ;
	setAttr ".pt[380]" -type "float3" -0.00069787091 -0.0086949421 0 ;
	setAttr ".pt[399]" -type "float3" -0.0056176838 -0.038861662 0 ;
	setAttr ".pt[400]" -type "float3" -0.0034786069 -0.028221207 0 ;
	setAttr ".pt[401]" -type "float3" -0.00045452471 -0.0079692295 0 ;
	setAttr ".pt[420]" -type "float3" -0.0049057873 -0.037881602 0 ;
	setAttr ".pt[421]" -type "float3" -0.0028767521 -0.027110754 0 ;
	setAttr ".pt[422]" -type "float3" -0.00026438755 -0.0068651796 0 ;
	setAttr ".pt[441]" -type "float3" -0.001250316 -0.032849159 0 ;
	setAttr ".pt[442]" -type "float3" -0.0015376941 -0.033244789 0 ;
	setAttr ".pt[443]" -type "float3" -0.0019464167 -0.033807471 0 ;
	setAttr ".pt[444]" -type "float3" -0.0024550329 -0.034507677 0 ;
	setAttr ".pt[445]" -type "float3" -0.0030369768 -0.035308834 0 ;
	setAttr ".pt[446]" -type "float3" -0.0036630346 -0.036170721 0 ;
	setAttr ".pt[447]" -type "float3" -0.0043884926 -0.037169449 0 ;
	setAttr ".pt[448]" -type "float3" -0.0053229197 -0.038455863 0 ;
	setAttr ".pt[449]" -type "float3" -0.00614639 -0.039589524 0 ;
	setAttr ".pt[450]" -type "float3" -0.0067584543 -0.040432144 0 ;
	setAttr ".pt[451]" -type "float3" -0.0073723011 -0.041277219 0 ;
	setAttr ".pt[452]" -type "float3" -0.007810358 -0.041880287 0 ;
	setAttr ".pt[453]" -type "float3" -0.0079093911 -0.042016625 0 ;
	setAttr ".pt[454]" -type "float3" -0.0079093911 -0.042016625 0 ;
	setAttr ".pt[455]" -type "float3" -0.0077675339 -0.041821335 0 ;
	setAttr ".pt[456]" -type "float3" -0.0071831937 -0.041016877 0 ;
	setAttr ".pt[457]" -type "float3" -0.0063500567 -0.039869912 0 ;
	setAttr ".pt[458]" -type "float3" -0.0059144716 -0.039270248 0 ;
	setAttr ".pt[459]" -type "float3" -0.0053962432 -0.038556807 0 ;
	setAttr ".pt[460]" -type "float3" -0.0048074955 -0.037746284 0 ;
	setAttr ".pt[461]" -type "float3" -0.0041770395 -0.036878344 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 2;
	setAttr ".h" 8;
	setAttr ".sc" 5;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[0:79]" "f[180:199]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
createNode polySphere -n "polySphere1";
	setAttr ".r" 2;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[0:179]" "f[360:379]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[20:119]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:199]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:220]";
	setAttr ".gi" 5;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[3]";
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[225]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[225]";
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[225]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[225]";
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[224]";
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[221]";
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[221]";
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[221]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 3 "f[145:150]" "f[162:174]" "f[180:199]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[154:160]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[140:153]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[140:159]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 3.5844505726623002 0 ;
	setAttr ".pvt" -type "float3" -0.0031256676 13.481861 0.0043883026 ;
	setAttr ".rs" 33992;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.91110682487487793 9.8974056243896484 -0.90359300374984741 ;
	setAttr ".cbx" -type "double3" 0.90485548973083496 9.8974056243896484 0.91236960887908936 ;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:180]";
	setAttr ".gi" 6;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[342]" "e[344]" "e[346]" "e[348]" "e[350]" "e[352]" "e[354]" "e[356]" "e[358]" "e[360]" "e[362]" "e[364]" "e[366]" "e[368]" "e[370]" "e[372]" "e[374]" "e[376]" "e[378:379]";
	setAttr ".ix" -type "matrix" 0.2998195542928721 0 0 0 0 0.2998195542928721 0 0 0 0 0.2998195542928721 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.00093713624 4.0421243 0.001315699 ;
	setAttr ".rs" 51888;
	setAttr ".lt" -type "double3" 2.4286128663675299e-017 0 0.072471700171580763 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27316764214717976 4.0421241607373375 -0.27091485164643675 ;
	setAttr ".cbx" -type "double3" 0.27129336963055745 4.0421241607373375 0.27354624948449063 ;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:200]";
	setAttr ".gi" 7;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[382]" "e[384]" "e[386]" "e[388]" "e[390]" "e[392]" "e[394]" "e[396]" "e[398]" "e[400]" "e[402]" "e[404]" "e[406]" "e[408]" "e[410]" "e[412]" "e[414]" "e[416]" "e[418:419]";
	setAttr ".ix" -type "matrix" 0.2998195542928721 0 0 0 0 0.2998195542928721 0 0 0 0 0.2998195542928721 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.00093713624 4.0421243 0.00131569 ;
	setAttr ".rs" 60661;
	setAttr ".lt" -type "double3" 9.4220833977146092e-019 -1.051566733227121e-016 -0.085417334436507453 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.34474708886795064 4.0421244466675459 -0.34249431623784565 ;
	setAttr ".cbx" -type "double3" 0.34287281635132832 4.0421244466675459 0.34512569620526146 ;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:220]";
	setAttr ".gi" 8;
createNode polyCloseBorder -n "polyCloseBorder2";
	setAttr ".ics" -type "componentList" 19 "e[422]" "e[424]" "e[426]" "e[428]" "e[430]" "e[432]" "e[434]" "e[436]" "e[438]" "e[440]" "e[442]" "e[444]" "e[446]" "e[448]" "e[450]" "e[452]" "e[454]" "e[456]" "e[458:459]";
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:221]";
	setAttr ".gi" 9;
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[221]";
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[342]" "e[344]" "e[346]" "e[348]" "e[350]" "e[352]" "e[354]" "e[356]" "e[358]" "e[360]" "e[362]" "e[364]" "e[366]" "e[368]" "e[370]" "e[372]" "e[374]" "e[376]" "e[378:379]";
	setAttr ".ix" -type "matrix" 0.2998195542928721 0 0 0 0 0.2998195542928721 0 0 0 0 0.2998195542928721 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.085397385400175274 0 ;
	setAttr ".pvt" -type "float3" -0.00093713624 4.1275206 0.001315699 ;
	setAttr ".rs" 56813;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27316764214717976 4.0421244466675459 -0.27091485164643675 ;
	setAttr ".cbx" -type "double3" 0.27129336963055745 4.0421244466675459 0.27354624948449063 ;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:240]";
	setAttr ".gi" 10;
createNode polyCloseBorder -n "polyCloseBorder3";
	setAttr ".ics" -type "componentList" 19 "e[422]" "e[424]" "e[426]" "e[428]" "e[430]" "e[432]" "e[434]" "e[436]" "e[438]" "e[440]" "e[442]" "e[444]" "e[446]" "e[448]" "e[450]" "e[452]" "e[454]" "e[456]" "e[458:459]";
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:241]";
	setAttr ".gi" 11;
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 1 "vtx[220:239]";
	setAttr ".ix" -type "matrix" 0.2998195542928721 0 0 0 0 0.2998195542928721 0 0 0 0 0.2998195542928721 0
		 0 0 0 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[241]";
createNode polyCloseBorder -n "polyCloseBorder4";
	setAttr ".ics" -type "componentList" 38 "e[422]" "e[424]" "e[426]" "e[428]" "e[430]" "e[432]" "e[434]" "e[436]" "e[438]" "e[440]" "e[442]" "e[444]" "e[446]" "e[448]" "e[450]" "e[452]" "e[454]" "e[456]" "e[458:459]" "e[462]" "e[464]" "e[466]" "e[468]" "e[470]" "e[472]" "e[474]" "e[476]" "e[478]" "e[480]" "e[482]" "e[484]" "e[486]" "e[488]" "e[490]" "e[492]" "e[494]" "e[496]" "e[498:499]";
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:241]" "f[242]";
	setAttr ".gi" 12;
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[241]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[241]";
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[462]" "e[464]" "e[466]" "e[468]" "e[470]" "e[472]" "e[474]" "e[476]" "e[478]" "e[480]" "e[482]" "e[484]" "e[486]" "e[488]" "e[490]" "e[492]" "e[494]" "e[496]" "e[498:499]";
	setAttr ".ix" -type "matrix" 0.2998195542928721 0 0 0 0 0.2998195542928721 0 0 0 0 0.2998195542928721 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.00093713624 4.1275215 0.001315699 ;
	setAttr ".rs" 61401;
	setAttr ".lt" -type "double3" 2.7755575615628914e-017 8.8817841970012523e-016 0.071084180776687461 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27316764214717976 4.1275215064546531 -0.27091485164643675 ;
	setAttr ".cbx" -type "double3" 0.27129336963055745 4.1275215064546531 0.27354624948449063 ;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:260]";
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[241:260]";
	setAttr ".unm" no;
createNode polyPlane -n "polyPlane1";
	setAttr ".sw" 20;
	setAttr ".sh" 20;
	setAttr ".cuv" 2;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[1]" "e[42]" "e[83]" "e[124]" "e[165]" "e[206]" "e[247]" "e[288]" "e[329]" "e[370]" "e[411]" "e[452]" "e[493]" "e[534]" "e[575]" "e[616]" "e[657]" "e[698]" "e[739]" "e[780]";
	setAttr ".ix" -type "matrix" 2.0601157092983149 0 0 0 0 1 0 0 0 0 1 0 0.9492346956143588 4.1569726475781472 -0.026045107907997078 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.090913539939456278 1.5265566588595902e-016 ;
	setAttr ".pvt" -type "float3" -0.089783296 4.1013784 -0.026045108 ;
	setAttr ".rs" 49606;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.099454828134067585 4.149308076993254 -0.24566226608251185 ;
	setAttr ".cbx" -type "double3" -0.080111760888537664 4.2352752172655137 0.19357205026651769 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 441 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 -0.0034289365 -0.28038284 0 -0.0086461129
		 -0.26443321 0 -0.01423453 -0.21814683 -1.004396e-010 -0.019070966 -0.15095475 -0.00057782844
		 -0.027866656 -0.084644839 -0.0068841344 -0.059199944 -0.042568278 -0.021956865 -0.1234373
		 -0.015873704 -0.04686762 -0.21784799 -0.0015879384 -0.074265905 -0.29990628 -0.00017015601
		 -0.10150746 -0.38319182 -0.00029989739 -0.12932733 -0.48905653 -0.000131201 -0.16357513
		 -0.56477225 0 -0.19816275 -0.60463345 0 -0.21479677 -0.61731243 0 -0.21479677 -0.63959366
		 -6.618282e-006 -0.21479677 -0.66563481 -0.00026040064 -0.21479677 -0.66000336 -0.00054291153
		 -0.21479677 -0.67974538 -0.0003748156 -0.21477641 -0.71680939 -6.1737454e-005 -0.21414599
		 -0.68585175 -0.00048482828 -0.21520054 -0.68661606 -0.00041044559 0 -0.0033729414
		 -0.25234455 0 -0.0085828239 -0.2379899 0 -0.014109016 -0.19781896 2.7671088e-010
		 -0.01897764 -0.13914564 -0.00067756494 -0.028045723 -0.080124304 -0.0066945963 -0.053403802
		 -0.04137823 -0.021960856 -0.12356919 -0.016172627 -0.046867613 -0.21798851 -0.0019957188
		 -0.070308298 -0.26115546 8.7311491e-010 -0.098902531 -0.35441777 7.9744495e-009 -0.12855323
		 -0.47795117 5.8207661e-011 -0.16357513 -0.56473941 0 -0.19816275 -0.6046195 0 -0.21479677
		 -0.61731243 0 -0.21479677 -0.63705039 1.9634874e-009 -0.21479677 -0.65613902 -6.0362893e-008
		 -0.21479677 -0.65122497 -1.5821668e-008 -0.21479677 -0.67419243 4.4570863e-009 -0.21282925
		 -0.6982072 -0.00053639873 -0.21393685 -0.66196787 -0.00087039586 -0.21519215 -0.67118442
		 -7.1050908e-006 0 -0.0033013006 -0.22430623 0 -0.0084417779 -0.21154658 0 -0.013961559
		 -0.17590493 0 -0.018930901 -0.12509304 -0.00093181303 -0.023791092 -0.073271856 -0.0066306381
		 -0.036880508 -0.036815971 -0.021221293 -0.10943192 -0.014340567 -0.045106385 -0.20068692
		 -0.00088430528 -0.066990495 -0.23117077 1.5175901e-005 -0.096754625 -0.33352232 9.0803951e-009
		 -0.12829128 -0.47448844 -1.1641532e-010 -0.16357513 -0.56470245 0 -0.19816275 -0.60460526
		 0 -0.21479677 -0.61731243 0 -0.21479441 -0.63637203 9.9984454e-006 -0.21479636 -0.65821928
		 1.6789191e-006 -0.21479677 -0.65639687 1.074417e-008 -0.21479677 -0.67965245 -3.2223539e-009
		 -0.21214314 -0.69165677 -0.0027761704 -0.21431619 -0.65247768 -0.0012284549 -0.21526513
		 -0.66256374 -1.1696344e-005 0 -0.0032415378 -0.19626799 0 -0.0083580073 -0.18510324
		 0 -0.01378925 -0.15391681 0 -0.018770961 -0.10945643 -0.0014195513 -0.017222982 -0.06433145
		 -0.0069527868 -0.016037608 -0.030351678 -0.020068698 -0.082973763 -0.010535765 -0.044392418
		 -0.19185077 0.0010650503 -0.067455113 -0.22732873 0.00063054636 -0.096913926 -0.3293114
		 5.6277495e-006 -0.12880866 -0.48019111 5.4162228e-007 -0.16357513 -0.56474167 0 -0.19817007
		 -0.60462773 0 -0.21479677 -0.61604983 4.6946891e-012 -0.21477768 -0.64026815 0.00010694105
		 -0.21471597 -0.66930073 0.0003418111 -0.21479627 -0.67575657 2.1095007e-006 -0.21479677
		 -0.69955653 -4.6203605e-009 -0.2132418 -0.6937235 -0.0035343061 -0.21470088 -0.65700394
		 -0.00037456435 -0.21523266 -0.66692507 -3.0181359e-006 0 -0.0032415378 -0.16822971
		 0 -0.0082637118 -0.15865996 0 -0.013619311 -0.13192871 0 -0.018545387 -0.093819752
		 -0.0019203587 -0.012835356 -0.055175837 -0.0075965663 0.0031653484 -0.025018422 -0.019970298
		 -0.057110645 -0.007578278 -0.04544929 -0.19400285 0.0027733513 -0.070936285 -0.24956797
		 0.0028746913 -0.10015173 -0.3506628 2.5954098e-005 -0.13138837 -0.49963236 0.0001848797
		 -0.16372576 -0.56482875 0 -0.19814231 -0.59437996 -3.8226255e-011 -0.21479677 -0.59779751
		 -7.4206974e-011 -0.21479677 -0.63910586 -1.8166413e-011 -0.21459877 -0.6844309 0.00050621381
		 -0.21479622 -0.70263249 1.3980743e-006 -0.21479677 -0.72463661 1.2947293e-010 -0.21445367
		 -0.70042235 -0.0014468392 -0.21479414 -0.67536402 -1.1102891e-005 -0.21507354 -0.68604499
		 -1.0121087e-010 0 -0.0032691027 -0.14019142 0 -0.0082963351 -0.1322166 0 -0.013493992
		 -0.10994057 0 -0.018508306 -0.078152016 -0.0023405883 -0.012653152 -0.046269543 -0.0082586063
		 0.01568822 -0.018325878 -0.020696886 -0.044512678 -0.0036342593 -0.0490526 -0.19223332
		 0.0017224015 -0.077180885 -0.28606096 0.0025395008 -0.10740887 -0.39531404 0.00029174425
		 -0.13907705 -0.51603121 0 -0.16343702 -0.55428034 0 -0.19816275 -0.55943066 0 -0.21479677
		 -0.57574534 0 -0.21479677 -0.62946057 0 -0.21472196 -0.69606078 9.5188261e-005 -0.21479675
		 -0.72228289 2.7996723e-008 -0.21479677 -0.72463661 0 -0.21479625 -0.7111063 -2.1866201e-006
		 -0.21479696 -0.69774771 5.3093711e-008 -0.21485825 -0.71173888 0 4.5127792e-005 0.0020591621
		 -0.11215311 -6.3214367e-010 0.0016270857 -0.10581965 -4.755951e-007 -0.0019389852
		 -0.087919883 -0.00032294271 -0.0054074866 -0.063013799 -0.0027832531 -0.01720785
		 -0.037338883 -0.0088515487 0.023517923 -0.0073423544 -0.021571053 -0.046813592 0.0058882209
		 -0.053205445 -0.20001909 0.00078494468 -0.083657868 -0.31736436 0.00023308395 -0.11595141
		 -0.43115228 0.00069318432 -0.1481121 -0.52166617 2.910383e-011 -0.17919452 -0.5387339
		 1.6978213e-010 -0.19772084 -0.5296672 2.8363642e-010 -0.21479677 -0.55750674 2.2575147e-010
		 -0.21479677 -0.62238282 7.9655615e-011 -0.21479677 -0.69836891 0 -0.21479677 -0.72463661
		 0 -0.21479677 -0.72463661 0 -0.21479677 -0.72134107 1.6466511e-005 -0.21479255 -0.71745437
		 1.7932007e-005 -0.21479677 -0.71932429 0 0.00020687582 0.021388894 -0.084114857 -2.6868285e-008
		 0.038930994 -0.079180092 -4.48334e-006 0.035175554 -0.065764479 -0.00072281528 0.021986088
		 -0.046949919 -0.0036877636 -0.010234416 -0.028732438 -0.0098417737 0.020451406 -0.00063025684
		 -0.022332713 -0.050750177 0.012540492 -0.057009932 -0.21485154 0.0015120627 -0.088298514
		 -0.33749074 0.00010122733 -0.121153 -0.44375703 3.259629e-009 -0.15674004 -0.50028801
		 -1.1641532e-010 -0.19067159 -0.52157587 -2.8828004e-010 -0.20831987 -0.52538961 -3.5151526e-010
		 -0.21479677 -0.55059177 -2.5231706e-010 -0.21479677 -0.62188935 -8.1455315e-011 -0.21479677
		 -0.69836891 0 -0.21479677 -0.72463661 0 -0.21479677 -0.72463661 0 -0.21479677 -0.72363549
		 -3.7208292e-012;
	setAttr ".tk[166:331]" -0.21479677 -0.72463661 0 -0.21479677 -0.71932429 0
		 0.000345309 0.037948858 -0.056076556 -1.7075529e-007 0.064065911 -0.052671343 -1.8649765e-005
		 0.063997142 -0.043680634 -0.0018471803 0.041042816 -0.029562635 -0.0050910134 0.0074662338
		 -0.017223625 -0.010175725 0.0088063898 -0.0028147819 -0.023667369 -0.048504621 0.0094999243
		 -0.0598142 -0.22906706 0.0021140215 -0.090850078 -0.34543905 -9.1677066e-010 -0.12290269
		 -0.42837352 -1.8480932e-009 -0.15955724 -0.47152546 1.4551915e-011 -0.19516821 -0.50906235
		 2.7755576e-017 -0.21212882 -0.53007525 2.7755576e-017 -0.21479677 -0.55844563 1.3877788e-017
		 -0.21479677 -0.63073808 0 -0.21479677 -0.69828814 0 -0.21479677 -0.71865404 0 -0.21479677
		 -0.70506799 0 -0.21479677 -0.7023499 0 -0.21479677 -0.71883225 0 -0.21479677 -0.71932429
		 0 0.00022118843 0.044389036 -0.028043453 -3.3792472e-005 0.073080577 -0.026320148
		 -8.7187524e-005 0.072705597 -0.02169691 -0.0037729726 0.046677135 -0.012869777 -0.0076000905
		 0.025850812 -0.0053527704 -0.010314031 0.018759435 -0.0041373135 -0.024979638 -0.042862717
		 0.0020867707 -0.060548443 -0.22141229 0.00066052866 -0.091936857 -0.34505031 8.7678432e-005
		 -0.12097558 -0.39433593 5.8859587e-007 -0.15685092 -0.44641486 7.377821e-009 -0.19261622
		 -0.50310969 4.538242e-010 -0.20931855 -0.54527056 2.7671757e-010 -0.21479677 -0.58277732
		 1.3089696e-010 -0.21419771 -0.63391113 -0.0017308124 -0.21455921 -0.67218482 -0.00085983728
		 -0.21479553 -0.6830337 -4.4825433e-006 -0.21479677 -0.6690529 -3.1072375e-008 -0.21479677
		 -0.67957604 1.6843238e-010 -0.2142629 -0.70284289 0.00089791825 -0.21447884 -0.71414334
		 0.0004053154 -0.0029404894 0.059603244 -0.0014958049 -0.002751688 0.10070915 -0.0045700967
		 0.00058960222 0.085300788 -0.0047989958 -0.0046073245 0.048459645 0.0016969272 -0.0094501497
		 0.03635592 0.002194304 -0.010874051 0.044701006 -0.0025343464 -0.026178785 -0.044096474
		 2.1651284e-005 -0.059750061 -0.20814693 -1.0916155e-010 -0.090736374 -0.3295368 0.00039246262
		 -0.117394 -0.36994126 3.4382363e-006 -0.15355362 -0.43221202 4.1317616e-008 -0.1946021
		 -0.51827735 -0.00074404234 -0.21289381 -0.57332563 -0.0066130185 -0.21244764 -0.588193
		 -0.009101823 -0.2138553 -0.59754646 -0.0040441989 -0.21474673 -0.63639802 -0.00021157329
		 -0.2147963 -0.6513018 -1.9497134e-006 -0.21479677 -0.6446963 -1.9900368e-008 -0.21479677
		 -0.66556603 -2.2086862e-010 -0.21117276 -0.67491311 0.0016323411 -0.21318382 -0.70052606
		 0.00042355366 -0.0081237433 0.076441027 0.01971815 -0.0057316246 0.13317397 0.0066021355
		 0.0018055802 0.090960935 0.0027014078 -0.0047924099 0.044665061 0.011080627 -0.0086048078
		 0.036608391 0.0064518126 -0.01229337 0.067701831 -0.0075333151 -0.026447486 -0.047053289
		 0.00046970334 -0.059974905 -0.20419021 0.00022174523 -0.089690641 -0.31973168 -0.00029683858
		 -0.11666463 -0.36332229 -2.7632268e-006 -0.15350376 -0.43873706 -0.00019280944 -0.19216189
		 -0.52786714 -0.011620258 -0.20958766 -0.57135153 -0.016250804 -0.21313316 -0.55229777
		 -0.0062332973 -0.21473242 -0.56668139 -0.00026558124 -0.21479563 -0.61358076 -4.7387603e-006
		 -0.21479675 -0.63635033 -5.2605824e-008 -0.21479677 -0.64006859 -5.5407429e-010 -0.21263196
		 -0.64907497 -0.0015806131 -0.20783648 -0.64995623 -0.0037507613 -0.21210006 -0.68624604
		 -0.001403738 -0.0090439953 0.07830257 0.045340944 -0.0048674997 0.12461524 0.030328788
		 0.0033907415 0.087770216 0.020372376 -0.0036168781 0.031438384 0.023172397 -0.0065673646
		 0.05172817 0.012180177 -0.012789684 0.073128618 -0.01411451 -0.026545012 -0.054411322
		 -0.0026506432 -0.05992718 -0.20642562 0.00044349281 -0.089878507 -0.31609598 -0.00098706584
		 -0.11995701 -0.37689281 -7.5306889e-006 -0.15873301 -0.46119046 -0.0043637403 -0.19361599
		 -0.5477736 -0.016026106 -0.21143308 -0.546983 -0.010161305 -0.21456689 -0.53141433
		 -0.00092195923 -0.2147937 -0.55375129 -1.2436731e-005 -0.21479674 -0.61189061 -1.3517247e-007
		 -0.21479677 -0.64327973 -1.3699955e-009 -0.21479677 -0.65392882 1.3877788e-017 -0.20928462
		 -0.63395202 -0.014436433 -0.20741175 -0.63781834 -0.01248564 -0.21255201 -0.67543077
		 -0.003838622 -0.007173419 0.075570829 0.07672333 -0.0036059655 0.11682784 0.065600857
		 0.0032749427 0.084498115 0.052452579 -0.0038051871 0.026111206 0.043233547 -0.0044187908
		 0.06698931 0.020933924 -0.010791033 0.066570468 -0.0092917485 -0.027503872 -0.067364074
		 -0.003495812 -0.060963117 -0.2191997 0.00076232455 -0.091057695 -0.32459256 -0.00080673583
		 -0.12328305 -0.40209422 -4.1201711e-006 -0.16203731 -0.494412 -0.0061760605 -0.19500388
		 -0.5528481 -0.0110831 -0.2145303 -0.53280193 -0.0043517062 -0.2147357 -0.52123016
		 -0.0020128682 -0.21457094 -0.55600977 -0.0021248886 -0.21446712 -0.6227504 -0.0029280391
		 -0.2146021 -0.66535854 -0.001861132 -0.21446799 -0.68050462 -0.0014900496 -0.21056283
		 -0.64824575 -0.0032235538 -0.20948604 -0.63916165 0.010434163 -0.21310832 -0.67239082
		 0.0086187655 -0.004177419 0.057388406 0.10448735 -0.0025197677 0.088824108 0.092890047
		 0.0024143553 0.065176874 0.075831823 -0.002780807 0.01522742 0.058777172 -0.0020418195
		 0.063649826 0.032231499 -0.0083143795 0.046850942 0.0079737883 -0.029513886 -0.087308392
		 0.0014715607 -0.062437195 -0.23363736 0.0011074372 -0.092406154 -0.33858669 -4.0834741e-005
		 -0.12546441 -0.43051755 -6.3329935e-008 -0.1614576 -0.5227136 -0.0032114654 -0.19600068
		 -0.55278385 -0.0047515011 -0.21508081 -0.53093791 -0.0094441492 -0.21313736 -0.50775528
		 -0.023179773 -0.21213232 -0.5470289 -0.026776373 -0.21217498 -0.62102318 -0.025762768
		 -0.21268563 -0.66793293 -0.02020744 -0.21304743 -0.67537087 -0.011154038 -0.21266119
		 -0.6407277 0.016103514 -0.21057487 -0.62025267 0.034901626 -0.21235466 -0.66550624
		 0.017736433 -0.0010520266 0.022822104 0.13658102 -0.00096090761 0.040982988 0.12494293
		 0.0007873507 0.025412619 0.10350379 -0.0014857852 0.00110276 0.075406134 -0.0017336456
		 0.044068091 0.043899704 -0.0074134795 0.024960954 0.021629652 -0.027223222 -0.089204915
		 0.0035981466 -0.060835458 -0.22513106 0.00053108309 -0.092611477 -0.3442468 1.0739313e-008
		 -0.1257879 -0.44694152 1.3693207e-005 -0.16177137 -0.53170156 -0.00037332802 -0.19628438
		 -0.56635964 -0.0025414664 -0.21511978 -0.54610354 -0.020946311 -0.21166185 -0.52010185
		 -0.040605962 -0.21089229 -0.55678904 -0.037931275 -0.21197732 -0.61966431 -0.025931656
		 -0.21324496 -0.64683074 -0.0139607;
	setAttr ".tk[332:440]" -0.21397644 -0.643107 -0.0027330304 -0.2142712 -0.61721218
		 0.016746543 -0.21095294 -0.60800368 0.022253633 -0.21307594 -0.66987395 0.0061477222
		 -2.7787805e-006 -0.0056608422 0.16820182 -7.3949705e-005 -0.00041165831 0.15799344
		 7.2514944e-005 -0.005514692 0.13111882 -0.001041614 -0.006256138 0.093675211 -0.0019022943
		 0.021494715 0.05422179 -0.0052233152 0.031308897 0.016495876 -0.021700252 -0.060103137
		 -0.00080292311 -0.057255533 -0.19750039 -4.0685078e-005 -0.091697566 -0.33841082
		 -7.1804971e-007 -0.12541524 -0.44800821 -1.1641532e-010 -0.16214986 -0.53963315 0
		 -0.19675764 -0.58773774 -0.0015457658 -0.21440798 -0.57508922 -0.01508934 -0.2128301
		 -0.53648335 -0.022843862 -0.21314958 -0.55217886 -0.014189107 -0.21394654 -0.60408467
		 -0.0044672596 -0.21469487 -0.6288873 -0.0005319622 -0.21478589 -0.63027024 -1.9623483e-005
		 -0.21445367 -0.613401 0.0022030887 -0.21254961 -0.61686242 0.0026903218 -0.21519154
		 -0.67705846 0 0 -0.0066625015 0.19626802 0 -0.011482899 0.18510327 -2.0460848e-007
		 -0.012647608 0.15391648 -0.00052482233 -0.013241059 0.10980406 -0.0017613797 0.0090981666
		 0.061013661 -0.0041036275 0.037974451 0.013794289 -0.01823606 -0.031085804 -0.0020842727
		 -0.053325918 -0.17181712 6.3126972e-006 -0.0894382 -0.32972789 -1.61957e-006 -0.12308446
		 -0.44517252 -5.5879354e-009 -0.16242491 -0.54031461 0 -0.19725415 -0.60091615 -0.00018853498
		 -0.21460509 -0.59000576 -0.002237268 -0.21446864 -0.54627359 -0.0016064675 -0.21476676
		 -0.56163901 -0.00020333198 -0.21478729 -0.61134678 -4.7982448e-005 -0.21479581 -0.63627428
		 -4.1405347e-006 -0.21479675 -0.6354236 -4.6489163e-008 -0.21469592 -0.62928265 -0.0018101018
		 -0.21425377 -0.63725132 -0.0014254756 -0.21517642 -0.6788885 0 0 -0.0070335567 0.22430626
		 0 -0.011991858 0.21154661 0 -0.016790675 0.17590494 0 -0.020541809 0.12509303 -0.001246482
		 0.0035793465 0.070110537 -0.0043672635 0.034616012 0.02328507 -0.017401891 -0.013904279
		 0.0049575199 -0.050408345 -0.15887907 0.0013318504 -0.087475508 -0.32525605 -6.8329973e-007
		 -0.12150716 -0.44226676 1.4551915e-009 -0.16202262 -0.53893685 5.8207661e-011 -0.19804269
		 -0.60346568 0 -0.21479636 -0.60600805 -4.5667794e-006 -0.21479498 -0.57247877 -8.0123154e-006
		 -0.21479669 -0.59218842 -3.2633619e-007 -0.21479677 -0.64186043 -1.9006297e-009 -0.21479677
		 -0.66434389 4.5139859e-010 -0.21479677 -0.66318852 4.5948856e-010 -0.21479677 -0.66211021
		 4.6750998e-010 -0.21479677 -0.66544968 4.4306037e-010 -0.21506606 -0.69221133 3.2102448e-010
		 0 -0.007369298 0.25234455 0 -0.012478048 0.2379899 0 -0.017352406 0.19781896 0 -0.020844089
		 0.13914564 -0.0006458672 -0.0015787209 0.078806199 -0.005307911 0.019325254 0.036351737
		 -0.018725079 -0.020327253 0.012858042 -0.050442856 -0.16845427 0.0018980295 -0.087156482
		 -0.32767782 -5.5297278e-009 -0.12000283 -0.43796158 -1.4610123e-008 -0.16098613 -0.53452593
		 5.8207661e-011 -0.19816275 -0.60009623 0 -0.21479677 -0.61838585 -1.301842e-011 -0.21479677
		 -0.60725617 -7.684714e-011 -0.21479677 -0.63146526 -9.5226715e-011 -0.21479677 -0.68410248
		 -1.0612877e-010 -0.21479677 -0.70573896 -1.4072027e-010 -0.21479677 -0.70374489 -1.555221e-010
		 -0.21479677 -0.70343226 -1.5797397e-010 -0.21479677 -0.70125794 -1.7419566e-010 -0.21489953
		 -0.71226782 -1.2249096e-010 0 -0.0076645706 0.28038284 0 -0.0128759 0.26443321 0
		 -0.017826138 0.21814683 0 -0.021052564 0.15071933 -0.00045913417 -0.010406194 0.084156066
		 -0.0063824556 -0.0043435879 0.04226882 -0.021651007 -0.055069946 0.015832907 -0.052207664
		 -0.19199343 0.0017671167 -0.087211929 -0.32963675 -1.44355e-008 -0.11939693 -0.43286213
		 9.6042641e-009 -0.1603861 -0.52868891 0 -0.19788922 -0.59405994 0 -0.21479677 -0.62018782
		 0 -0.21479677 -0.61758387 0 -0.21479677 -0.6442728 0 -0.21479677 -0.69836891 0 -0.21479677
		 -0.72463661 0 -0.21479677 -0.72463661 0 -0.21479677 -0.72463661 0 -0.21479677 -0.72463661
		 0 -0.21479677 -0.72463661 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 1\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId3.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCylinderShape1.i";
connectAttr "groupId4.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pSphereShape1.i";
connectAttr "groupId2.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "polyNormal1.out" "pSphere2Shape.i";
connectAttr "groupId5.id" "pSphere2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphere2Shape.iog.og[0].gco";
connectAttr "polyExtrudeEdge6.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polySphere1.out" "deleteComponent2.ig";
connectAttr "polyCloseBorder1.out" "deleteComponent3.ig";
connectAttr "pSphereShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[1]";
connectAttr "pSphereShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[1]";
connectAttr "deleteComponent2.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "deleteComponent3.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupParts3.og" "polyMergeVert1.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert16.out" "polyMergeVert17.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert17.out" "polyMergeVert18.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert18.out" "polyMergeVert19.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert19.out" "polyMergeVert20.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert20.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyExtrudeEdge1.ip";
connectAttr "pSphere2Shape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "groupParts4.ig";
connectAttr "groupParts4.og" "polyExtrudeEdge2.ip";
connectAttr "pSphere2Shape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "groupParts5.ig";
connectAttr "groupParts5.og" "polyExtrudeEdge3.ip";
connectAttr "pSphere2Shape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "groupParts6.ig";
connectAttr "groupParts6.og" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "groupParts7.ig";
connectAttr "groupParts7.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyExtrudeEdge4.ip";
connectAttr "pSphere2Shape.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge4.out" "groupParts8.ig";
connectAttr "groupParts8.og" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyMergeVert21.ip";
connectAttr "pSphere2Shape.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert21.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyCloseBorder4.ip";
connectAttr "polyCloseBorder4.out" "groupParts10.ig";
connectAttr "groupParts10.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polyExtrudeEdge5.ip";
connectAttr "pSphere2Shape.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge5.out" "groupParts11.ig";
connectAttr "groupId5.id" "groupParts11.gi";
connectAttr "groupParts11.og" "polyNormal1.ip";
connectAttr "polyTweak1.out" "polyExtrudeEdge6.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeEdge6.mp";
connectAttr "polyPlane1.out" "polyTweak1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphere2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
// End of molotovi.ma

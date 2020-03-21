//AUTHOR: W-Cephei
//


#define package "2020RUS_"

// "gorkaEMR", "gorkaEMR2",

SET_GROUP(uniform)
	[ "rhs_uniform_msv_emr"] call FNC_AddItemRandom;
	["rhs_6b27m_digi","rhs_6b27m_digi_bala", "rhs_6b27m_green_ess",
	 "rhs_6b27m_green_ess_bala", "rhs_6b28_green", "rhs_6b47_bala", "rhs_6b7_1m_bala2_olive",
	 "rhs_6b7_1m_emr_ess_bala"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(IFAK)
	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem;
	["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_packingBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_quikclot", 3, "uniform"] call FNC_AddItem;
	["ACE_morphine", 1, "uniform"] call FNC_AddItem;
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem;
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;
	["ACE_splint", 1] call FNC_AddItem;
END_GROUP;

SET_GROUP(items)
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ACE_MapTools"] call FNC_AddItem;
	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle)
	["rhs_30Rnd_545x39_7N22_camo_AK",6,"vest"] call FNC_AddItem;
	["rhs_30Rnd_545x39_AK_plum_green",2,"vest"] call FNC_AddItem;
	["rhs_weap_ak74mr_grip1"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhs_acc_uuk";
	_unit addPrimaryWeaponItem "rhs_acc_1p87";
	_unit addPrimaryWeaponItem "rhs_acc_grip_rk2";

END_GROUP;

SET_GROUP(rifle_gl)
	["rhs_VOG25",10,"vest"] call FNC_AddItem;
	["rhs_30Rnd_545x39_7N22_camo_AK",5,"vest"] call FNC_AddItem;
	["rhs_30Rnd_545x39_AK_plum_green",2,"vest"] call FNC_AddItem;
	["rhs_GRD40_Red",2,"uniform"] call FNC_AddItem;
	["rhs_GRD40_White",2,"vest"] call FNC_AddItem;
	["rhs_weap_ak74mr_gp25"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhs_acc_dtk";
	_unit addPrimaryWeaponItem "rhs_acc_1p87";

END_GROUP;


SET_GROUP(rifle_vest)
 ["rhs_6b23_digi_6sh92_headset", "rhs_6b23_digi_6sh92_headset_spetsnaz",
 "rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_Spetsnaz"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(gl_vest)
 ["rhs_6b23_digi_6sh92_vog_headset","rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz"] call FNC_AddItemRandom;
END_GROUP;


case (package + "SL") : {
	ADD_GROUP(uniform);
	ADD_GROUP(rifle_vest);
	ADD_GROUP(items);
	ADD_GROUP(IFAK);
	ADD_GROUP(rifle);
		["Binocular"] call FNC_AddItem;
	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
	["ACE_Chemlight_HiGreen",3,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	["rhs_mag_rgd5",1,"vest"] call FNC_AddItem;
	["rhs_mag_nspd",1,"vest"] call FNC_AddItem;
};
case (package + "TL") : {
	ADD_GROUP(uniform);
	ADD_GROUP(rifle_vest);
	ADD_GROUP(items);
	ADD_GROUP(IFAK);
	ADD_GROUP(rifle);
	["Binocular"] call FNC_AddItem;
	["ACE_Chemlight_HiGreen",3,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	["rhs_mag_rgd5",2,"vest"] call FNC_AddItem;
	["rhs_mag_fakel",1,"vest"] call FNC_AddItem;
};

case (package + "RF") : {
	ADD_GROUP(uniform);
	ADD_GROUP(rifle_vest);
	ADD_GROUP(items);
	ADD_GROUP(IFAK);
	ADD_GROUP(rifle);

	["ACE_Chemlight_HiGreen",1,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	["rhs_mag_rgd5",2,"vest"] call FNC_AddItem;
	["rhs_mag_fakel",2,"vest"] call FNC_AddItem;
};

case (package + "GL") : {
	ADD_GROUP(uniform);
	ADD_GROUP(gl_vest);
	ADD_GROUP(items);
	ADD_GROUP(IFAK);
	ADD_GROUP(rifle_gl);

};

case (package + "MG") : {
	ADD_GROUP(uniform);
	ADD_GROUP(rifle_vest);
	ADD_GROUP(items);
	ADD_GROUP(IFAK);

	["umbts_emr"] call FNC_AddItem;


	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	["rhs_mag_rgd5",1,"vest"] call FNC_AddItem;


	["rhs_100Rnd_762x54mmR_7N13",1,"vest"] call FNC_AddItem;
	["rhs_100Rnd_762x54mmR_7N13",2,"backpack"] call FNC_AddItem;
	["rhs_weap_pkp"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "HLC_Optic_1p29";

};

case (package + "MG_ASSIST") : {
	ADD_GROUP(uniform);
	ADD_GROUP(rifle_vest);
	ADD_GROUP(items);
	ADD_GROUP(IFAK);
 	ADD_GROUP(rifle);

 	["umbts_emr"] call FNC_AddItem;
	["rhs_100Rnd_762x54mmR_7N13",2,"backpack"] call FNC_AddItem;

	["ACE_Chemlight_HiGreen",1,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	["rhs_mag_rgd5",2,"vest"] call FNC_AddItem;
	["rhs_mag_fakel",1,"vest"] call FNC_AddItem;

};

case (package+ "MEDIC"): {
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(rifle_vest);
	ADD_GROUP(items);
	["umbts_emr"] call FNC_AddItem;

	["ACE_fieldDressing",10,"uniform"] call FNC_AddItem; // MED Supplies
	["ACE_elasticBandage",10,"uniform"] call FNC_AddItem;
	["ACE_quikclot",10,"vest"] call FNC_AddItem;
	["ACE_epinephrine",10,"vest"] call FNC_AddItem;
	["ACE_morphine",5,"vest"] call FNC_AddItem;

	["rhs_30Rnd_545x39_7N22_camo_AK",6,"vest"] call FNC_AddItem;
	["rhs_weap_ak74mr_grip1"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhs_acc_uuk";
	_unit addPrimaryWeaponItem "rhs_acc_1p87";
	_unit addPrimaryWeaponItem "rhs_acc_grip_rk2";
	["rhs_mag_rgn",1,"vest"] call FNC_AddItem; // Frag Grenadier
	["rhs_mag_rdg2_white",2,"backpack"] call FNC_AddItem; // White Smoke

	["ACE_morphine",15,"backpack"] call FNC_AddItem; // Med Supplies
	["ACE_packingBandage",20,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",10,"vest"] call FNC_AddItem;
	["ACE_elasticBandage",10,"vest"] call FNC_AddItem;
	["ACE_quikclot",10,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",3,"backpack"] call FNC_AddItem;
	["ACE_salineIV",1,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",2,"backpack"] call FNC_AddItem;
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
	["ACE_splint", 3] call FNC_AddItem;

};

case (package + "NURSE"): {
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(rifle_vest);
	ADD_GROUP(items);
	["umbts_emr"] call FNC_AddItem;


	ADD_GROUP(IFAK);


	//medical gear
 	["ACE_fieldDressing",10,"backpack"] call FNC_AddItem;
 	["ACE_elasticBandage",6,"backpack"] call FNC_AddItem;
 	["ACE_packingBandage",5,"backpack"] call FNC_AddItem;
 	["ACE_quikclot",2,"backpack"] call FNC_AddItem;
 	["ACE_tourniquet",3,"backpack"] call FNC_AddItem;
 	["ACE_morphine",1,"backpack"] call FNC_AddItem;
 	["ACE_elasticBandage",5,"backpack"] call FNC_AddItem;
 	["ACE_packingBandage",7,"backpack"] call FNC_AddItem;
 	["ACE_quikclot",6,"backpack"] call FNC_AddItem;
 	["ACE_salineIV_250",1,"backpack"] call FNC_AddItem;
 	["ACE_salineIV_500",1,"backpack"] call FNC_AddItem;
 	["ACE_tourniquet",5,"backpack"] call FNC_AddItem;
 	["ACE_splint",3,"backpack"] call FNC_AddItem;
 	["ACE_adenosine",2,"backpack"] call FNC_AddItem;
 	["ACE_epinephrine",4,"backpack"] call FNC_AddItem;
 	["ACE_morphine",4,"backpack"] call FNC_AddItem;
 	["ACE_personalAidKit",2,"backpack"] call FNC_AddItem;
 	["ACE_fieldDressing",4,"backpack"] call FNC_AddItem;
	//medical gear



	["ACE_Chemlight_HiGreen",2,"uniform"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;
	["rhs_mag_rgd5",1,"vest"] call FNC_AddItem;


	["rhs_weap_ak74mr_grip1"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhs_acc_uuk";
	_unit addPrimaryWeaponItem "rhs_acc_1p87";
	_unit addPrimaryWeaponItem "rhs_acc_grip_rk2";
	["rhs_30Rnd_545x39_7N22_camo_AK",5,"vest"] call FNC_AddItem;
	["rhs_30Rnd_545x39_AK_plum_green",2,"vest"] call FNC_AddItem;


};

/////////////////////////////////////
["U_B_CombatUniform_mcam"] call FNC_AddItem;
["rhs_6b23_digi_6sh92_Spetsnaz"] call FNC_AddItem;

["H_HelmetB"] call FNC_AddItem;
["rhs_balaclava"] call FNC_AddItem;

["ItemMap"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemRadio"] call FNC_AddItem;
["NVGoggles"] call FNC_AddItem;

["ACE_fieldDressing",1,"uniform"] call FNC_AddItem;
["ACE_packingBandage",1,"uniform"] call FNC_AddItem;
["ACE_morphine",1,"uniform"] call FNC_AddItem;
["ACE_tourniquet",1,"uniform"] call FNC_AddItem;
["ACRE_PRC343_ID_1",1,"uniform"] call FNC_AddItem;
["30Rnd_65x39_caseless_mag",2,"uniform"] call FNC_AddItem;
["30Rnd_65x39_caseless_mag",7,"vest"] call FNC_AddItem;
["16Rnd_9x21_Mag",2,"vest"] call FNC_AddItem;
["SmokeShell",1,"vest"] call FNC_AddItem;
["SmokeShellGreen",1,"vest"] call FNC_AddItem;
["Chemlight_green",2,"vest"] call FNC_AddItem;

["arifle_MX_ACO_pointer_F"] call FNC_AddItem;
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Aco";

["hgun_P07_F"] call FNC_AddItem;

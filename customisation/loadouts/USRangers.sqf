//AUTHOR: W=Cephei
//US Army 2020 Rangers

#define package "USRangers_"




SET_GROUP(rifle)
	["rhs_mag_30Rnd_556x45_M855_PMAG",6,"vest"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red",2,"vest"] call FNC_AddItem;
	["rhs_weap_m4a1_blockII_grip_KAC_wd"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552_wd";
	_unit addPrimaryWeaponItem "rhsusf_acc_grip1";
END_GROUP;

SET_GROUP(rifle_gl)

	["rhs_mag_M441_HE",10,"vest"] call FNC_AddItem;
	["rhs_mag_M433_HEDP",3,"vest"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",5,"vest"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",2,"vest"] call FNC_AddItem;
	["1Rnd_SmokeRed_Grenade_shell",2,"vest"] call FNC_AddItem;
	["1Rnd_Smoke_Grenade_shell",2,"vest"] call FNC_AddItem;
	["rhs_weap_m4a1_blockII_M203_wd"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
	_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552_wd";
END_GROUP;


SET_GROUP(default_items)
	["CryGen2_rgr", "CryGen3_WD_GRN_C", "rhs_uniform_g3_rgr"] call FNC_AddItemRandom;

	["rhsusf_opscore_fg_pelt",
	"rhsusf_opscore_fg_pelt_cam",
	"WALSH_fastb_usa_grn_headset",
	"rhsusf_opscore_rg_cover_pelt",
	"rhsusf_opscore_mar_fg_pelt"] call FNC_AddItemRandom;

	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem;
	["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_packingBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_quikclot", 3, "uniform"] call FNC_AddItem;
	["ACE_morphine", 1, "uniform"] call FNC_AddItem;
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;
	["ACE_splint", 1] call FNC_AddItem;
	["ACE_CableTie", 2] call FNC_AddItem;

	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["JAS_GPNVG18_Tan"] call FNC_AddItem;
	["ACE_IR_Strobe_Item",1,"uniform"] call FNC_AddItem;

	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
END_GROUP;





case (package + "SL") : {
	ADD_GROUP(default_items);

	["mbavr_r"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
	["ACE_Chemlight_HiRed",3,"vest"] call FNC_AddItem;
	["SmokeShell",1,"vest"] call FNC_AddItem;
	["rhs_mag_m67",1,"vest"] call FNC_AddItem;
	ADD_GROUP(rifle);
};



case (package + "TL") : {
	ADD_GROUP(default_items);


	["mbavr_r"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;
	["ACE_Chemlight_HiRed",3,"vest"] call FNC_AddItem;
	["SmokeShell",1,"vest"] call FNC_AddItem;
	["rhs_mag_mk84",1,"vest"] call FNC_AddItem;
	["rhs_mag_m67",2,"vest"] call FNC_AddItem;
	ADD_GROUP(rifle);
};



case (package + "RF"): {
	ADD_GROUP(default_items);

	["mbavr_r"] call FNC_AddItem;
	["ACE_Chemlight_HiRed",1,"vest"] call FNC_AddItem;
	["SmokeShell",1,"vest"] call FNC_AddItem;
	["rhs_mag_mk84",2,"vest"] call FNC_AddItem;
	["rhs_mag_m67",2,"vest"] call FNC_AddItem;
	ADD_GROUP(rifle)
};

case (package + "GL"): {
	ADD_GROUP(default_items);
	["mbavr_gl"] call FNC_AddItem;
	ADD_GROUP(rifle_gl);
	["ACE_Chemlight_HiRed",1,"vest"] call FNC_AddItem;
};


case (package + "MEDIC"): {
	ADD_GROUP(default_items);

	["mbavr_m"] call FNC_AddItem;
	["tacpac_od"] call FNC_AddItem;

	["ACE_fieldDressing",10,"vest"] call FNC_AddItem; // MED Supplies
	["ACE_elasticBandage",10,"vest"] call FNC_AddItem;
	["ACE_quikclot",10,"vest"] call FNC_AddItem;
	["ACE_epinephrine",10,"vest"] call FNC_AddItem;
	["ACE_morphine",5,"vest"] call FNC_AddItem;


	["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,"vest"] call FNC_AddItem;

	["ACE_Chemlight_HiRed",2,"vest"] call FNC_AddItem;
	["HandGrenade",1,"vest"] call FNC_AddItem;
	["SmokeShellGreen",2,"vest"] call FNC_AddItem;
	["rhs_weap_m4a1_blockII_wd"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
	_unit addPrimaryWeaponItem "rhsusf_acc_T1_high";

	["ACE_morphine",15,"backpack"] call FNC_AddItem; // Med Supplies
	["ACE_packingBandage",20,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",10,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",10,"backpack"] call FNC_AddItem;
	["ACE_quikclot",10,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",3,"backpack"] call FNC_AddItem;
	["ACE_salineIV",1,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",2,"backpack"] call FNC_AddItem;
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
	["ACE_splint", 3] call FNC_AddItem;

};

case (package + "NURSE"): {
	ADD_GROUP(default_items);

	["mbavr_m"] call FNC_AddItem;
	["tacpac_od"] call FNC_AddItem;



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

	["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,"vest"] call FNC_AddItem;
	["rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red",2,"vest"] call FNC_AddItem;
	["ACE_Chemlight_HiRed",2,"vest"] call FNC_AddItem;
	["HandGrenade",1,"vest"] call FNC_AddItem;
	["SmokeShellGreen",1,"vest"] call FNC_AddItem;
	["rhs_weap_m4a1_blockII_wd"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
	_unit addPrimaryWeaponItem "rhsusf_acc_T1_high";


};

case (package + "AR"): {
	ADD_GROUP(default_items);
	["mbavr_mg"] call FNC_AddItem;
	["rhsusf_100Rnd_556x45_M855_mixed_soft_pouch",3,"vest"] call FNC_AddItem;

	["rhs_weap_m249_pip_S_vfg1"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
	_unit addPrimaryWeaponItem "rhsusf_acc_su230_mrds";
	_unit addPrimaryWeaponItem "rhsusf_acc_grip1";
};

case (package + "AR_ASSIST"): {
	ADD_GROUP(default_items);
	["mbavr_r"] call FNC_AddItem;
 	["tacpac_od"] call FNC_AddItem;
	["rhsusf_100Rnd_556x45_M855_mixed_soft_pouch",3,"backpack"] call FNC_AddItem;
	["ToolKit",1,"backpack"] call FNC_AddItem;

	["ACE_Chemlight_HiRed",1,"vest"] call FNC_AddItem;
	["SmokeShell",1,"vest"] call FNC_AddItem;
	["rhs_mag_mk84",1,"vest"] call FNC_AddItem;
	["rhs_mag_m67",2,"vest"] call FNC_AddItem;
	ADD_GROUP(rifle);
};

///////////////////////////////////////////////////

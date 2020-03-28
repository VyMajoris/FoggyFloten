#include "core\vehGearCore.sqf" // DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {
	case "mrap": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["rhs_mag_30Rnd_556x45_M855_PMAG", 18] call FNC_AddItemVehicle;
		["rhs_mag_M441_HE", 5] call FNC_AddItemVehicle;
		["1Rnd_Smoke_Grenade_shell", 4] call FNC_AddItemVehicle;
		["1Rnd_SmokeRed_Grenade_shell", 4] call FNC_AddItemVehicle;
		["HandGrenade", 4] call FNC_AddItemVehicle;
		["SmokeShellGreen", 4] call FNC_AddItemVehicle;
		["rhs_weap_m72a7", 1] call FNC_AddItemVehicle;
	};
		case "tigr": {
		_vehicle call FNC_RemoveAllVehicleGear;
		["rhs_30Rnd_545x39_7N22_camo_AK", 18] call FNC_AddItemVehicle;
		["rhs_VOG25", 5] call FNC_AddItemVehicle;
		["rhs_GRD40_White", 4] call FNC_AddItemVehicle;
		["rhs_GRD40_Red", 4] call FNC_AddItemVehicle;
		["rhs_mag_rgd5", 4] call FNC_AddItemVehicle;
		["rhs_mag_rdg2_white", 4] call FNC_AddItemVehicle;
		["rhs_mag_rdg2_white", 4] call FNC_AddItemVehicle;
		["rhs_weap_rpg26", 1] call FNC_AddItemVehicle;
	};
};

#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" // DO NOT REMOVE
#include "customisation\settings.sqf" // DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" // DO NOT REMOVE

setViewDistance 550;

if (isServer) then {
	"" call FNC_StartingCount; //DO NOT REMOVE


	if(us_side isEqualTo "north") then {
		usAsset setPos (north_pos_dir_name select 0);
		usAsset setDir (north_pos_dir_name select 1);

		ruAsset setPos (south_pos_dir_name select 0); 
		ruAsset setDir (south_pos_dir_name select 1);
	}else{
		usAsset setPos (south_pos_dir_name select 0);
		usAsset setDir (south_pos_dir_name select 1);

		ruAsset setPos (north_pos_dir_name select 0);
		ruAsset setDir (north_pos_dir_name select 1);
	};
	


	[] spawn { // Spawns code running in parallel
		while {!FW_MissionEnded} do { // Loops while the mission is not ended
			if (!isNil "FW_Disable_Endconditions") exitWith {};

			#include "customisation\endConditions.sqf" // DO NOT REMOVE

			// The time limit in minutes variable called FW_TimeLimit is set in customisation/settings.sqf, to disable the time limit set it to 0
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { // It is recommended that you do not remove the time limit end condition
				FW_TimeLimitMessage call FNC_EndMission;

			};
		};
	};
};

// TODO MEDIC KIT

#include "modules\modules.sqf" // DO NOT REMOVE
#include "core\postChecks.sqf" // DO NOT REMOVE

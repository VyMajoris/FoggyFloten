#define preinit

#include "core\script_macros.hpp"

FW_DebugMessages = [];
FW_Modules = [];

PREP(notTrackUnit);
PREP(debugMessage);
PREP(randomRange);
PREP(trackAsset);
PREP(canLinkItem);
PREP(canAttachItem);
PREP(addItemOrg);
PREP(addItemRandomOrg);
PREP(addItemRandomOrgPercent);
PREP(addItemVehicleOrg);
PREP(addItemVehicleRandomOrg);
PREP(removeAllGear);
PREP(removeAllVehicleGear);
PREP(registerModule);
PREP(checkClassname);
PREP(makeUnitsList);




//randomization
us_side = selectRandom ["north", "south"];


//north positions
_n_alpha = [[4706.032, 4368.205, 16.465], 97.169, "alpha"];
_n_bravo = [[4724.543, 4405.201, 0.390], 11.982, "bravo"];
_n_charlie = [[4714.736, 4418.354, 4.610], 155.139, "charlie"];
_n_delta = [[4738.029, 4357.358, 2.807], 281.379, "delta"];

//south positions
_s_alpha = [[4676.465, 4235.389, 0.692], 150.832, "alpha"];
_s_bravo = [[4721.881, 4267.085, 4.901], 286.398, "bravo"];
_s_charlie = [[4687.334, 4277.667, 0.628], 145.337, "charlie"];
_s_delta = [[4715.429, 4224.776, 0.322],  249.192, "delta"];

north_pos_dir_name = selectRandom [_n_alpha,  _n_bravo , _n_charlie, _n_delta];
south_pos_dir_name = selectRandom [_s_alpha,  _s_bravo , _s_charlie, _s_delta];
north_pos_name = (north_pos_dir_name select 2);
south_pos_name = (south_pos_dir_name select 2);	


FNC_Briefing = compile preprocessFileLineNumbers "customisation\briefing.sqf";

FNC_Menu = compile preprocessFileLineNumbers "core\menu.sqf";

#include "modules\modules.sqf" //DO NOT REMOVE

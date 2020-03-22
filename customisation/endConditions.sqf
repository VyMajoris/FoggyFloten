private _bluForCasualty = "BLUFOR" call FNC_CasualtyPercentage; // Gets the casualty percentage of team "BLUFOR"
private _opForCasualty = "OPFOR" call FNC_CasualtyPercentage; // Gets the casualty percentage of team "OPFOR"

private _usAssetStatus = usAsset call FNC_IsRescuedMultiple;
_usAssetStatus params ["_usAssetRescued", "_usAssetLocation"];

private _ruAssetStatus = ruAsset call FNC_IsRescuedMultiple;
_ruAssetStatus params ["_ruAssetRescued", "_ruAssetLocation"];

 
 (format ["_usAssetLocation %1",  _usAssetLocation]) call FNC_DebugMessage;
 (format ["_ruAssetLocation %1",  _ruAssetLocation]) call FNC_DebugMessage;


 


//extract only main hostages:
if (_usAssetLocation isEqualTo "usRescueMarker" && {_ruAssetLocation isEqualTo "ruRescueMarker"}) then {
        "MISSION COMPLETED
        <br/>
        <br/>
        Dr. Abdillahi Haglotosiye has been rescued by the Rangers.
        <br/>
        Mr. Björn Asbjørnsen has been rescued by the Russians.
        <br/>
        <br/>
        Both forces completed their objective.
        <br/>
        <br/>
        "
         call FNC_EndMission;
} else {
    if (_usAssetLocation isEqualTo "usRescueMarker" && {_ruAssetLocation isEqualTo "usRescueMarker"}) then {
        "MISSION COMPLETED
        <br/>
        <br/>
        Dr. Abdillahi Haglotosiye AND Mr. Björn Asbjørnsen were rescued by the Rangers.
        <br/>
        <br/>
        Consider this a demonstration of American resolve, stinky Ivan.
        <br/>
        <br/>
        "
         call FNC_EndMission;
    };
    if (_usAssetLocation isEqualTo "ruRescueMarker" && {_ruAssetLocation isEqualTo "ruRescueMarker"}) then {
        "MISSION COMPLETED
        <br/>
        <br/>
        Dr. Abdillahi Haglotosiye AND Mr. Björn Asbjørnsen were rescued by the Russians.
        <br/>
        <br/>
        Consider this a demonstration of Russian resolve, stinky burgers.
        <br/>
        <br/>
        "
         call FNC_EndMission;
    };
};

if(_bluForCasualty >= 80 && _opForCasualty >= 80) then {

	"MISSION ENDED
	<br/>
	<br/>
	Both forces suffered extensive casualties and decided to abandon the mission.
	<br/>
	<br/>
	All records of this operation have been erased and the soldiers's families have been put under witness protection.
    <br/>
    <br/>
	"
	call FNC_EndMission;
};



/*
Alternative methods of counting casualties

	"BLUFOR" call FNC_casualtyCount;
		this will count how many members of a team died in the mission

	"BLUFOR" call FNC_countTeam;
		this will check how many players are remaining in a team
		be careful as using this method will end the mission instantly if
		not enough players are present in the team


Adding extraction

	["BLUFOR", "ExtractionAreaMarker", 0.8] call FNC_hasExtracted;
		this will check if at least 80% of remaining forces are present in extraction area
*/

sleep (10); // This determines how frequently the end conditions should be checked in seconds

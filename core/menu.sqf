private ["_info"];

player createDiarySubject ["FW_Menu", "TBC Framework"];

_info = "
<br /><br />
<font size='18'>This mission uses 'The Bear Cave Framework'</font><br/>
github.com/EM-Creations/TheBearCave-Framework-ArmA-3<br/>
<br/>
Current Version: 4.3.0
";

player createDiaryRecord ["FW_Menu", ["Framework Info", _info]];

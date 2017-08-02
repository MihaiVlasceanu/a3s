counter = 0;
target = 10;

{
	_x addEventHandler ["HandleRating", {null = [] execVM "progress.sqf"}];
} forEach allUnits;
//GLB_Kills = 0;
//player addEventHandler ["HandleRating", {null = [] execVM "kills.sqf"}];
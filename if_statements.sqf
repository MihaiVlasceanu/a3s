
_score = rating player;
diag_log format ["Current rating: %1", _score];
if (_score < 0) then 
{
	_newRating = 0 - (_score);
	diag_log format ["Added rating: %1", _newRating];
	player addRating _newRating;
};

if (counter < 10) then 
{
    _ai = "B_Soldier_GL_F" createUnit [position player, group player];
    _ai addEventHandler ["HandleRating", {null = [] execVM "progress.sqf"}];
    counter = counter + 1;
};


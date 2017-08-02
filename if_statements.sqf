
_score = rating player;

if (_score < 0) then 
{
	_newRating = 0 - (_score);
	player addRating _newRating;
};

if (counter < 10) then 
{
    _ai = "B_Soldier_GL_F" createUnit [position player, group player];
    _ai addEventHandler ["HandleRating", {null = [] execVM "progress.sqf"}];
    counter = counter + 1;
};


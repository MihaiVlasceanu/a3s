_me = player;

if(isNil "CNF_board")then
{
    CNF_board = [];
};

if(isNil "CNF_target")then
{
    CNF_target = 10;
};

_kills = 0;

if(count CNF_board == 0)then
{
    CNF_board pushBack [_me, _kills];
}else{
    {
        if(_x select 0 == _me)then
        {
            _kills = (_x select 1) + 1;
            CNF_board set [_forEachindex, [_me, _kills]];
            hintsilent format ["Kills: %1", _kills];
        }
    }forEach CNF_board;
};
_progress = _kills / 100 * CNF_target;
if(_progress <= 0.1)then{titleText ["Noob", "PLAIN"];};
if(_progress <= 0.5 && _progress > 0.1)then{titleText ["Rookie", "PLAIN"];};
if(_progress <= 0.8 && _progress > 0.5)then{titleText ["Master", "PLAIN"];};
{
  _p = _x select 0;
  _s = _x select 1;
  hintSilent format ["%1 : %2\n", _p, _s];
} forEach CNF_board;
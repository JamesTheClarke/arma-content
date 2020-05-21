CJ_holdActionSFX = (getArray (configFile >> "CfgSounds" >> "Orange_Action_Wheel" >> "sound")) param [0, ""];
CJ_holdActionSFX = CJ_holdActionSFX + ".wss";

_holdActionProgress = 
{
	private _progressTick = _this select 4;
	private _player = _this select 1;

	if ((_progressTick % 2) == 0) exitwith {}; 
	
	private _coef = _progressTick / 24; 
	playSound3D [CJ_holdActionSFX, _player, false, getPosASL _player, 1, 0.9 + 0.2 * _coef];
};

_holdActionProgress
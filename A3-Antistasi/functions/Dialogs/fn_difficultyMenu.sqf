_nul=createDialog "diff_menu";
waitUntil {dialog};
hint "Choose a difficulty level";
waitUntil {!dialog};
if !(skillMult == 2) then
	{
	//Easy Difficulty Tweaks
	if (skillMult == 1) then
		{
		server setVariable ["hr",25,true];
		server setVariable ["resourcesFIA",5000,true];
		vehInGarage = [vehSDKTruck,vehSDKTruck,SDKMortar,SDKMGStatic,staticAAteamPlayer];
		minWeaps = 15;
		if !(hasTFAR) then
			{
			"ItemRadio" call A3A_fnc_unlockEquipment;
			haveRadio = true;
			};
		}
	else
		{
		//Hard Difficulty Tweaks
		server setVariable ["hr",0,true];
		server setVariable ["resourcesFIA",200,true];
		minWeaps = 40;
		};
	[] call A3A_fnc_statistics;
	};
_nul= createDialog "gameMode_menu";
waitUntil {dialog};
hint "Choose a Game Mode";
waitUntil {!dialog};
if (gameMode != 1) then
	{
	Occupants setFriend [Invaders,1];
    Invaders setFriend [Occupants,1];
    if (gameMode == 3) then {"CSAT_carrier" setMarkerAlpha 0};
    if (gameMode == 4) then {"NATO_carrier" setMarkerAlpha 0};
	};
hint "Map Init in progress";
[] call A3A_fnc_initGarrisons;
hint "Map Init Done";
[] spawn A3A_fnc_placementselection;

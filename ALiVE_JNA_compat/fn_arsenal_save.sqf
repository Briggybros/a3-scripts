params ["_obj"];

if (isNil "ALiVE_sys_data_mission_data" || !isServer) exitWith {};

private _data = _obj getVariable ["jna_datalist", false];
[ALiVE_sys_data_mission_data, "ARSENAL_savedata", _data] call ALiVE_fnc_hashSet;

params [["_side", west], ["_factionsStr", "BLU_F"]];

_factions = _factionsStr splitString " ,";

([_side, _factions] call Loadout_fnc_getFactionItems) params ["_weapons", "_magazines", "_items", "_backpacks"];

if (!isnull (configfile >> "CfgPatches" >> "task_force_radio")) then {
	([_side, _factions, _weapons, _magazines, _items, _backpacks] call Loadout_fnc_getTFARItems) params ["_n_weapons", "_n_magazines", "_n_items", "_n_backpacks"];
	_weapons = _n_weapons;
	_magazines = _n_magazines;
	_items = _n_items;
	_backpacks = _n_backpacks;
};

if (!isnull (configFile >> "CfgPatches" >> "ace_main")) then {
	([_side, _factions, _weapons, _magazines, _items, _backpacks] call Loadout_fnc_getAceItems) params ["_n_weapons", "_n_magazines", "_n_items", "_n_backpacks"];
	_weapons = _n_weapons;
	_magazines = _n_magazines;
	_items = _n_items;
	_backpacks = _n_backpacks;
};

if (!isnull (configFile >> "CfgPatches" >> "kat_main")) then {
	([_side, _factions, _weapons, _magazines, _items, _backpacks] call Loadout_fnc_getTFARItems) params ["_n_weapons", "_n_magazines", "_n_items", "_n_backpacks"];
	_weapons = _n_weapons;
	_magazines = _n_magazines;
	_items = _n_items;
	_backpacks = _n_backpacks;
};

if (!isnull (configFile >> "CfgPatches" >> "ALiVE_c_tablet")) then {
	([_side, _factions, _weapons, _magazines, _items, _backpacks] call Loadout_fnc_getALIVEItems) params ["_n_weapons", "_n_magazines", "_n_items", "_n_backpacks"];
	_weapons = _n_weapons;
	_magazines = _n_magazines;
	_items = _n_items;
	_backpacks = _n_backpacks;
};

// Dedupe lists
_finalWeapons = [];
{_finalWeapons pushBackUnique _x} forEach _weapons;
_finalMagazines = [];
{_finalMagazines pushBackUnique _x} forEach _magazines;
_finalItems = [];
{_finalItems pushBackUnique _x} forEach _items;
_finalBackpacks = [];
{_finalBackpacks pushBackUnique _x} forEach _backpacks;

[_weapons, _magazines, _items, _backpacks];

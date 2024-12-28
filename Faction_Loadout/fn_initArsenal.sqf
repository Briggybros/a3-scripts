params [["_obj"], ["_side", west], ["_factionsStr", "BLU_F"]];

([_side, _factionsStr] call Loadout_fnc_getAllItems) params ["_weapons", "_magazines", "_items", "_backpacks"];

_x setVariable ["access_side", _side];
_x setVariable ["weapons", _weapons];
_x setVariable ["magazines", _magazines];
_x setVariable ["items", _items];
_x setVariable ["backpacks", _backpacks];
[_x, _weapons,   false, false] call BIS_fnc_addVirtualWeaponCargo;
[_x, _magazines, false, false] call BIS_fnc_addVirtualMagazineCargo; 
[_x, _items,     false, false] call BIS_fnc_addVirtualItemCargo;
[_x, _backpacks, false, false] call BIS_fnc_addVirtualBackpackCargo;

["AmmoboxInit", [_x, false, {(_target distance _this) < 3 && side _this == _target getVariable "access_side"}]] spawn BIS_fnc_arsenal;

_x lockInventory true;

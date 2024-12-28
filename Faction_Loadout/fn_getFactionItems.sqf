params ["_side", ["_factions", []], ["_weapons", []], ["_mags", []], ["_items", []], ["_packs", []]];

// All side items
_items = _items + [
	//hats
	"H_Bandanna_blu","H_Bandanna_camo","H_Bandanna_cbr","H_Bandanna_gry","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_mcamo","H_Bandanna_sand","H_Bandanna_sgg","H_Beret_02","H_Beret_Colonel","H_Beret_blk","H_Booniehat_dgtl","H_Booniehat_khk","H_Booniehat_khk_hs","H_Booniehat_mcamo","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_blk_CMMG","H_Cap_blk_ION","H_Cap_blk_Raven","H_Cap_blu","H_Cap_brn_SPECOPS","H_Cap_grn","H_Cap_grn_BI","H_Cap_headphones","H_Cap_marshal","H_Cap_oli","H_Cap_oli_hs","H_Cap_police","H_Cap_press","H_Cap_red","H_Cap_tan","H_MilCap_blue","H_MilCap_dgtl","H_MilCap_gry","H_MilCap_mcamo","H_MilCap_ocamo","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Shemag_olive","H_Shemag_olive_hs","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_cbr","H_Watchcap_khk",
	//glasses
	"G_Spectacles","G_Spectacles_Tinted","G_Shades_Black","G_Shades_Green","G_Shades_Red","G_Squares","G_Squares_Tinted","G_Sport_BlackWhite","G_Sport_Blackyellow","G_Sport_Greenblack","G_Sport_Checkered","G_Sport_Red","G_Aviator","G_Lady_Mirror","G_Lady_Dark","G_Lady_Red","G_Lady_Blue","G_Diving","G_Balaclava_blk","G_Balaclava_oli","G_Balaclava_combat","G_Balaclava_lowprofile","G_Bandanna_blk","G_Bandanna_oli","G_Bandanna_khk","G_Bandanna_tan","G_Bandanna_beast","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_aviator","G_Shades_Blue","G_Sport_Blackred",
	//others
	"ItemCompass","ItemGPS","ItemMap","ItemRadio","ItemWatch","ToolKit","Laserbatteries"
];

// All side weapons
_weapons = _weapons + [
	"Binocular","Rangefinder"
];

// All side mags
_mags = _mags + [
	"1Rnd_HE_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_Smoke_Grenade_shell","3Rnd_HE_Grenade_shell","3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell","3Rnd_SmokePurple_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell","3Rnd_Smoke_Grenade_shell","3Rnd_UGL_FlareCIR_F","3Rnd_UGL_FlareGreen_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareWhite_F","3Rnd_UGL_FlareYellow_F","APERSBoundingMine_Range_Mag","APERSMine_Range_Mag","APERSTripMine_Wire_Mag","ATMine_Range_Mag","ClaymoreDirectionalMine_Remote_Mag","DemoCharge_Remote_Mag","SLAMDirectionalMine_Wire_Mag","SatchelCharge_Remote_Mag","UGL_FlareCIR_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","HandGrenade"
];

// All side packs
_packs = _packs + [
	"B_AssaultPackG","B_AssaultPack_Kerry","B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_ocamo","B_AssaultPack_rgr","B_AssaultPack_sgg","C_Bergen_blu","C_Bergen_grn","C_Bergen_red","B_BergenC_blu","B_BergenC_grn","B_BergenC_red","B_BergenG","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_ocamo","B_FieldPack_oli","B_FieldPack_oucamo","G_AssaultPack","G_Bergen","B_HuntingBackpack","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_rgr","B_Kitbag_sgg","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan","B_TacticalPack_blk","B_TacticalPack_mcamo","B_TacticalPack_ocamo","B_TacticalPack_oli","B_TacticalPack_rgr"
];

// Side specific items
switch (_side) do {
	case EAST: {
		_weapons = _weapons + ["Laserdesignator_02"];
		_mags = _mags + ["O_IR_Grenade"];
		_items = _items + ["G_O_Diving","O_UavTerminal","V_RebreatherIR","U_O_Wetsuit"];
		_packs = _packs + ["B_O_Parachute_02_F"];
	};
	case WEST: {
		_weapons = _weapons + ["Laserdesignator"];
		_mags = _mags + ["B_IR_Grenade"];
		_items = _items + ["G_B_Diving", "B_UavTerminal", "V_RebreatherB", "U_B_Wetsuit"];
		_packs = _packs + ["B_B_Parachute_02_F"];
	};
	case INDEPENDENT: {
		_weapons = _weapons + ["Laserdesignator_03"];
		_mags = _mags + ["I_IR_Grenade"];
		_items = _items + ["G_I_Diving","I_UavTerminal","V_RebreatherIA","U_I_Wetsuit"];
		_packs = _packs + ["B_I_Parachute_02_F"];
	};
};

// Faction specific items
_getClasses = {
	params ["_faction"];
	_unitClasses = [];
	
	{
		if ((configName _x) isKindoF "CAManBase") then {
			_unitClasses pushback (configName _x);
		};
	} forEach ("getText (_x >> 'faction') == _faction" configClasses (configfile >> "CfgVehicles"));
	
	_unitClasses;
};

_units = [];
{
	_faction = _x;
	_thisFactionUnits = [_faction] call _getClasses;
	_units = _units + _thisFactionUnits;
} forEach _factions;

{
	_items = _items + [(getText (configFile >> "CfgVehicles" >> _x >> "uniformClass"))];
	_items = _items + (getArray (configFile >> "CfgVehicles" >> _x >> "linkedItems"));
	private _thisUnitWeapons = getArray (configFile >> "CfgVehicles" >> _x >> "weapons");
	_weapons = _weapons + _thisUnitWeapons;
	{
		_mags = _mags + (compatibleMagazines _x);
	} foreach _thisUnitWeapons;
	_packs = _packs + [(getText (configFile >> "CfgVehicles" >> _x >> "backpack"))];
	_items = _items + (getArray (configfile >> "CfgVehicles" >> _x >> "Items"));
} forEach _units;

// Remove bad classes
_removex = {
	{
		if (_x in ["", "Throw", "Put", "BWA3_faction", "CIV_F", "Virtual_F", "Interactive_F"]) then {
			_this = _this - [_x];
		};
	} foreach _this; 
		
	_this;
};

[
	_weapons call _removex,
	_mags call _removex,
	_items call _removex,
	_packs call _removex
];
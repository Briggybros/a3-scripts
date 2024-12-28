params [["_object", objNull, [objNull]], ["_initialValue", []]];

if (isServer) then {
	[_object, _initialValue] spawn {
		params ["_obj", "_initialValue"];

		waitUntil {
			sleep 1;
			private _data_exists = !(isNil "ALiVE_sys_data");
			private _mission_data_exists = !(isNil "ALiVE_sys_data_mission_data");
			private _data_initialized = (ALiVE_sys_data getVariable ["startupComplete", false]) == true;
			private _can_continue = _data_exists && _mission_data_exists && _data_initialized;
			!isNil "_can_continue" && {_can_continue};
		};

		private _arsenalData = [ALiVE_sys_data_mission_data, "ARSENAL_savedata", false] call ALiVE_fnc_hashGet;

		if (typeName _arsenalData == "ARRAY") then {
			[_obj, _arsenalData] call JN_fnc_arsenal_initPersistent;
		} else {
			[_obj, _initialValue] call JN_fnc_arsenal_initPersistent;
			[_obj] call ALiVE_JNA_fnc_arsenal_save;
		};

		while {true} do {
			sleep 60;
			[_obj] call ALiVE_JNA_fnc_arsenal_save;
		}
	};
};

if (hasInterface) then {
	[missionNamespace, "arsenalClosed", {
		_type = UINamespace getVariable ["jn_type",""];
		if (_type isEqualTo "arsenal") then {
			[UINamespace getVariable "jn_object"] remoteExecCall ["ALiVE_JNA_fnc_arsenal_save", 2];
		};
	}] call BIS_fnc_addScriptedEventHandler;
};

# Faction_Loadout #

## Loadout_initArsenal ##

In the `init` section of an object in game write `[this, {SIDE}, {FACTIONS}] call Loadout_initArsenal;`;
- `{SIDE}` specifies what team can access the arsenal, this can be one of the following:
  - west
  - east
  - independent
  - civilian
- `{FACTIONS}` specified which factions items will populate the arsenal. This value is a comma separated list of faction classes and must include quotation marks `""`.

For example creating an arsenal with NATO and Civilian items would be `[this, west, "BLU_F,CIV_F"] call Loadout_initArsenal;`

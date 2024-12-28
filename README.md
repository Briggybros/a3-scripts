# Briggy's Arma Scripts #

## Usage ##

Download and copy desired folders into your mission folder. At the root of your mission folder, open or create `description.ext` and add or merge:

```hpp
class CfgFunctions {
    #include "{FOLDER}\functions.hpp"
    // e.g.
    // #include "ALiVE_JNA_compat\functions.hpp"
};
```

## Scripts ##

### [ALiVE_JNA_compat](./ALiVE_JNA_compat/) ###
A wrapper around [Jeroen-Notenbomer/Limited-Arsenal](https://github.com/Jeroen-Notenbomer/Limited-Arsenal) to persist its state with ALiVE.

### [Faction_Loadout](./Faction_Loadout/) ###
Scripts to grab items from a faction. Can be used to create an aresenal with only the items for a specific faction.

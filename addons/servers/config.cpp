#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"tac_main"};
        author = ECSTRING(main,Author);
        authors[] = {"JoramD"};
        url = ECSTRING(main,URL);
        VERSION_CONFIG;
    };
};

#include "CfgMainMenuSpotlight.hpp"

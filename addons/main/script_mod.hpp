// COMPONENT should be defined in the script_component.hpp and included BEFORE this hpp

#define PREFIX tac

#define MAJOR 1
#define MINOR 6
#define PATCHLVL 0
#define BUILD 0

#define VERSION MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD

#define WEB_URL "http://www.theseus-aegis.com/"
#define PBO_URL url = WEB_URL

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 1.58
#define REQUIRED_ACE_VERSION {3,5,1}

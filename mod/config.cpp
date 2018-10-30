#define REQUIRED_VERSION 1.82
#define VERSION "1.2.1"

class CfgPatches {
  class diwako_unknownwp {
    units[] = {};
    weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {
      "cba_common"
      ,"ace_common"
      ,"ace_overheating"
    };
    author[] = {"diwako"};
    authorUrl = "https://github.com/diwako/ACE-punish-unknown-weapon";
    version = VERSION;
    versionStr = VERSION;
  license = "https://www.bohemia.net/community/licenses/arma-public-license-share-alike";
  };
};

class Extended_PreInit_EventHandlers {
  class diwako_unknownwp {
    init = "call compile preprocessFileLineNumbers 'diwako_unknownwp\functions\diwako\unknownwp\fn_addCbaSettings.sqf'";
  };
};

class Extended_PostInit_EventHandlers {
  class diwako_unknownwp {
    init = "call compile preprocessFileLineNumbers 'diwako_unknownwp\functions\diwako\unknownwp\fn_init.sqf'";
  };
};

#include "cfgFunctions.hpp"
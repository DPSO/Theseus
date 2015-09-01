/*
 * Author: Jonpas
 * Starts Attach or Detach process.
 *
 * Arguments:
 * 0: Helicopter <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [heli] call tac_heavylifter_fnc_progress;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_vehicle"];

if (isNil {_vehicle getVariable QGVAR(prepared)}) then {
    [HEAVYLIFTER_PREP_TIME, [_vehicle], {(_this select 0) call FUNC(prepare)}, {}, localize LSTRING(Attaching)] call ACE_Common_fnc_progressBar;
} else {
    [HEAVYLIFTER_PREP_TIME, [_vehicle], {(_this select 0) call FUNC(unprepare)}, {}, localize LSTRING(Detaching)] call ACE_Common_fnc_progressBar;
};

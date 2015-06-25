/*
 * Author: DaC, Jonpas
 * Sets the vehicle back to operational state.
 *
 * Arguments:
 * 0: Target Vehicle <OBJECT>
 *
 * Return Value:
 * None
 */
#include "script_component.hpp"

PARAMS_1(_targetVehicle);

private ["_vehicle", "_helper"];

// Get vehicle and helper object objects
_vehicle = _targetVehicle getVariable QGVAR(prepared) select 0;
_helper = _targetVehicle getVariable QGVAR(prepared) select 1;

// Prevent damage on vehicle
_vehicle allowDamage false;
_vehicle enableSimulationGlobal false;

// Remove the helper object
deleteVehicle _helper;

// Enable damage on vehicle
_vehicle allowDamage true;
_vehicle enableSimulationGlobal true;

// Remove variable
_vehicle setVariable [QGVAR(prepared), nil, true];

// Show ACE Hint
[localize LSTRING(Detached), QUOTE(PATHTOF(UI\detach_ca.paa))] call ace_common_fnc_displayTextPicture;
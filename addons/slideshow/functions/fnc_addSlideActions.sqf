/*
 * Author: Jonpas
 * Adds controller slide actions.
 *
 * Arguments:
 * 0: Controller <OBJECT>
 *
 * Return Value:
 * Children Actions <ARRAY>
 *
 * Example:
 * [controller] call tac_slideshow_fnc_addSlideActions;
 *
 * Public: No
 */
#include "script_component.hpp"

PARAMS_1(_controller);

private ["_slides", "_actions"];

_slides = _controller getVariable QGVAR(Slides);
EXPLODE_3_PVT(_slides,_objects,_images,_names);

_actions = [];
{
    _actions pushBack
    [
        [
            format ["Slide_%1", _forEachIndex],
            _names select _forEachIndex,
            "",
            {
                {
                    _x setObjectTextureGlobal [0, (_this select 2) select 1]
                } forEach ((_this select 2) select 0);
            },
            {true},
            {},
            [_objects, _x]
        ] call ace_interact_menu_fnc_createAction,
        [],
        _controller
    ];
} forEach _images;

_actions

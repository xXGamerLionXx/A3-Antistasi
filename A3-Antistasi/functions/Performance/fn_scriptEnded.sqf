params ["_scriptName", "_executionTime"];

//Find correct index
private _index = performance findIf {(_x select 0) == _scriptName};

//If not found, exit
if(_index == -1) exitWith {};

//Retrieve the element
private _element = performance select _index;

//Add end number and execution time
_element set [3, (_element select 3) + 1];
_element set [4, (_element select 4) + _executionTime];

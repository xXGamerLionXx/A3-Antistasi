params ["_scriptName"];

//Find correct index
private _index = performance findIf {(_x select 0) == _scriptName};

if(_index == -1) then
{
  performance pushBack [_scriptName, 1, 0, 0, 0];
}
else
{
  private _element = performance select _index;
  _element set [1, (_element select 1) + 1];
  _element set [2, (_element select 2) + 1];
};

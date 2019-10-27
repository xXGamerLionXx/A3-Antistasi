{
  private _element = _x;
  private _runLastTick = _element select 2;
  _element set [2, 0];
  private _runAll = _element select 1;
  private _averageTime = if((_element select 3) == 0) then {-1} else {(_element select 4) / (_element select 3)};

  diag_log format ["Script: %1, run %3 times last tick, %2 times at all, average exec time %4", _element select 0, _runLastTick, _runAll, _averageTime];
} forEach performance;

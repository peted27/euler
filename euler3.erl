-module(euler3).
-export([start/1]).

start(N) ->
   find_fac(N).

find_fac(Num) ->
    find_fac(Num, 2).

find_fac(Num, Num) ->
    Num;
find_fac(Num, Div) ->
    case Num rem Div of
        0 ->
            find_fac(Num div Div, 2);
        _Else ->
            find_fac(Num, Div + 1)
    end.


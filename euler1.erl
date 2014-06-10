-module(euler1).
-export([solve/0, solve/1]).

solve() ->
    fact(999).

solve(N) ->
    fact(N).

fact(N) ->
    fact(N, 0).

fact(0, Acc) ->
    Acc;
fact(N, Acc) ->
    AddVal = if
        trunc(N/3) * 3 == N ->
            N;
        trunc(N/5) * 5 == N ->
            N;
        true ->
            0
    end,
    fact(N - 1, Acc + AddVal).

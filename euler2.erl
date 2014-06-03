-module(euler2).
-export([start/0]).

start() ->
    fib().

fib() ->
    fib(0, 1, 0).

fib(Result, Next, Acc) when Result < 4000000 ->
    EvenFib = if
        trunc(Result / 2) * 2 == Result ->
            Result;
        true ->
            0
    end,
    fib(Next, Next + Result, Acc+EvenFib);
fib(_Result, _Next, Acc) ->
    Acc.


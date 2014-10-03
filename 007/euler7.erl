-module(euler7).
-export([start/1]).

start(N) ->
    nth_factor(N).

nth_factor(N) ->
    nth_factor(N, 0, 2).

nth_factor(_N, _N, Number) ->
    Number - 1;
nth_factor(N, Count, Number) ->
    case is_prime(Number) of
        true ->
            nth_factor(N, Count + 1, Number + 1);
        false ->
            nth_factor(N, Count, Number + 1)
    end.

is_prime(N) ->
    is_prime(N, 2).

is_prime(_N, _N) ->
    true;
is_prime(N, Div) ->
    case (N rem Div) == 0 of
        true ->
            false;
        false ->
            is_prime(N, Div + 1)
    end.

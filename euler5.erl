-module(euler5).
-export([start/1]).

start(N) ->
    diver(lists:seq(1, N), 1).

diver(Nums, N) ->
    case is_devisible(N, Nums) of
        false ->
            diver(Nums, N + 1);
        true ->
            N
    end.

is_devisible(_N, []) ->
    true;
is_devisible(N, [H|T]) ->
    case (N rem H == 0) of
        true ->
            is_devisible(N, T);
        false -> 
            false
    end.

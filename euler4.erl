-module(euler4).
-export([start/1]).

start(N) ->
    pal(N, N, N, 1).

pal(0, 0, _Upper, Pal) ->
    Pal;
pal(X, 0, Upper, Pal) ->
    pal(X - 1, Upper, Upper, Pal);
pal(X, Y, Upper, Pal) ->
    NewPal = is_pal(X * Y),
    if
        Pal > NewPal ->
            pal(X, Y - 1, Upper, Pal);
        true ->
            pal(X, Y - 1, Upper, NewPal)
    end.



is_pal(Product) ->
    IntList = integer_to_list(Product),
    IntListRev = lists:reverse(integer_to_list(Product)),

    if
        IntList == IntListRev ->
            Product;
        true ->
            0
    end.

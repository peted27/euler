-module(euler6).
-export([start/1]).

start(N) ->
    Seq = lists:seq(1, N),
    square_of_sums(Seq, 0) - sum_of_squares(Seq, 0).

sum_of_squares([], Sum) ->
    Sum;
sum_of_squares([H|T], Sum) ->
    sum_of_squares(T, Sum + (H * H)).

square_of_sums([], Sum) ->
    Sum * Sum;
square_of_sums([H|T], Sum) ->
    square_of_sums(T, Sum + H).

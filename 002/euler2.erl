-module(euler2).
-export([solve/0, solve/1]).

solve() ->
    solve(4000000).

solve(N) ->
    Fibs = fib(N),
    EvenFibs = lists:filter(fun(X) -> X rem 2 == 0 end, Fibs),
    lists:foldl(fun(X, Sum) -> X + Sum end, 0, EvenFibs).


fib(N) ->
    fib(N, 0, 1, [0]).

fib(N, Current, Next, Fibs) ->
    if 
	Next > N -> lists:reverse(Fibs);
	true -> fib(N, Next, Next + Current, [Next | Fibs])
    end.

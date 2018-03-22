-module('ex_1_7').
-export([sqrt_iter/2]).
-compile([debug_info]).

average(X, Y) ->
    (X + Y) / 2.

improve(Guess, X) ->
    average(Guess, (X / Guess)).

small_enough(X) ->
    X / 100.

good_enough(Guess, X) ->
    abs(math:pow(Guess, 2) - X) < small_enough(X).

sqrt_iter(Guess, X) ->
    case good_enough(Guess, X) of
	true -> io:format("Result: ~p ~n", [Guess]);
	false -> sqrt_iter((improve(Guess, X)), X)
    end.

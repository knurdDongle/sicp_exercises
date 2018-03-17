-module('ex_1_2').
-export([solution/0]).
-compile([debug_info]).

solution() ->
    Result = (5 + 4 + (2 - (3 - (6 + 4 / 5)))) / (3 * (6 - 2) * (2 - 7)),
    io:format("Result: ~p ~n", [Result]).

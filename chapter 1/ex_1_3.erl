-module('ex_1_3').
-export([solution/3]).
-compile([debug_info]).

solution(A, B, C) ->
    if
	(A < B) and (A < C) ->
	    (math:pow(B, 2) + math:pow(C, 2));
	(B < A) and (B < C) ->
	    (math:pow(A, 2) + math:pow(C, 2));
	true ->
	    (math:pow(A, 2) + math:pow(B, 2))
    end.

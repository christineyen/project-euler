-module(p3).
-export([solve/1]).

solve(N) -> solve(N,2,[]).
solve(N,Try,Factors) when Try > N -> Factors;
solve(N,Try,Factors) ->
  if N rem Try == 0 ->
      solve(N div Try, Try, Factors++[Try]);
    true -> solve(N, Try+1, Factors)
  end.

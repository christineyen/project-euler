-module(p7).
-export([solve/1]).
-compile(lib).

solve(Nth) -> solve(Nth,0,[2]).
solve(Nth,Cur,Primes) when Nth == 0 -> Cur-1;
solve(Nth,Cur,Primes) ->
  Prime = lib:prime(Cur),
  if Prime -> solve(Nth-1,Cur+1,[Cur|Primes]);
     true -> solve(Nth,Cur+1,Primes)
  end.

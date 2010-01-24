-module(p2).
-export([solve/0]).

solve() -> solve(0,1,0).
solve(Fib1,Fib2,Sum) when Fib1 > 4000000 -> Sum;
solve(Fib1,Fib2,Sum) when (Fib1 rem 2 == 0) ->
  solve(Fib2, Fib1+Fib2, Sum+Fib1);
solve(Fib1,Fib2,Sum) -> solve(Fib2, Fib1+Fib2, Sum).

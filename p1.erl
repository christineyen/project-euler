-module(p1).
-export([solve/1]).

solve(N) -> solve(N-1, 0).
solve(N,Sum) when N == 0 -> Sum;
solve(N,Sum) when (N rem 3 == 0) or (N rem 5 == 0) -> solve(N-1,Sum+N);
solve(N,Sum) when N > 0 -> solve(N-1,Sum).

-module(p4).
-export([solve/0]).
-compile(lib).

solve() -> solve(999,999,[]).
solve(N1,N2,List) when N2 < 100 -> hd(lists:reverse(lists:sort(List)));
solve(N1,N2,List) when N1 < 100 -> solve(999,N2-1,List);
solve(N1,N2,List) ->
  ProdStr = integer_to_list(N1 * N2),
  Palindrome = lib:palindrome(ProdStr),
  if Palindrome -> solve(N1-1,N2,[N1*N2|List]);
     true -> solve(N1-1,N2,List)
  end.

-module(lib).
-export([gcd/2,lcm/2,palindrome/1]).

gcd(N1,N2) when N1 rem N2 == 0 -> N2;
gcd(N1,N2) -> gcd(N2, N1 rem N2).

lcm(N1,N2) -> N1*N2 div gcd(N1,N2).

palindrome(String) when length(String) =< 1 -> true;
palindrome(String) ->
  Head = hd(String),
  Tail = lists:nth(length(String), String),
  if Head =:= Tail ->
    palindrome(lists:sublist(String, 2, length(String)-2));
    true -> false
  end.

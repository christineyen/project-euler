-module(lib).
-export([gcd/2,lcm/2,palindrome/1,prime/1]).

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

prime(N) -> prime(erlang:trunc(math:sqrt(N))+1, N).
prime(I,N) when I == 1 -> true;
prime(I,N) ->
  if N rem I == 0 -> false;
     true -> prime(I-1,N)
  end.

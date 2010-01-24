-module(p6).
-export([solve/1]).

solve(Ct) -> solve(Ct,0,0).
solve(Ct,SuSq,SqSu) when Ct == 0 -> (SqSu*SqSu) - SuSq;
solve(Ct,SuSq,SqSu) -> solve(Ct-1,SuSq+(Ct*Ct),SqSu+Ct).

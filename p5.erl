-module(p5).
-export([solve/1]).
-compile(lib).

solve(ToNum) -> solve(ToNum, 1).
solve(ToNum,Product) when ToNum == 1 -> Product;
solve(ToNum,Product) -> solve(ToNum-1,lib:lcm(ToNum,Product)).

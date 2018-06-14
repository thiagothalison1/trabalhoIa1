num(1).
num(2).
num(3).
num(4).

breeze(2,1).
breeze(3,2).
breeze(4,1).
breeze(2,3).
breeze(3,2).
breeze(3,4).
breeze(4,3).

stench(1,4).
stench(1,2).
stench(2,3).

gold(2,3).

adj(X1,Y,X2,Y) :- X2 is X1+1, X2 > 0, X2 < 5.
adj(X1,Y,X2,Y) :- X2 is X1-1, X2 > 0, X2 < 5.
adj(X,Y1,X,Y2) :- Y2 is Y1+1, Y2 > 0, Y2 < 5.
adj(X,Y1,X,Y2) :- Y2 is Y1-1, Y2 > 0, Y2 < 5.

pit(X,Y) :- (adj(X, Y, X2, Y), breeze(X2, Y)), (adj(X, Y, X, Y2), breeze(X, Y2)).

wumpus(X,Y) :- (adj(X, Y, X2, Y), stench(X2, Y)), (adj(X, Y, X, Y2), stench(X, Y2)).

isSafe(X,Y) :- num(X), num(Y), \+pit(X,Y), \+wumpus(X,Y).

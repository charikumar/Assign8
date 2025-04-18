% family_tree.pl

% (1) All male facts together
male(arthur).
male(john).
male(robert).
male(bill).
male(david).

% (2) All female facts together
female(martha).
female(mary).
female(nancy).
female(susan).
female(carol).
female(ellen).

% (3) Parent facts
parent(arthur, john).
parent(martha, john).
parent(arthur, robert).
parent(martha, robert).

parent(john, bill).
parent(mary, bill).
parent(arthur, susan).
parent(martha, susan).

parent(robert, david).
parent(nancy, david).
parent(robert, ellen).
parent(nancy, ellen).

parent(bill, carol).
parent(susan, carol).

% (4) Derived relationships

% X is grandparent of Y if X is parent of Z and Z is parent of Y
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% X and Y are siblings if they share a parent and are distinct
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% X and Y are cousins if their parents are siblings
cousin(X, Y) :-
    parent(A, X),
    parent(B, Y),
    sibling(A, B).

% X is a descendant of Y if Y is parent of X, or recursively through Z
descendant(X, Y) :-
    parent(Y, X).
descendant(X, Y) :-
    parent(Z, X),
    descendant(Z, Y).















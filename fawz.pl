% Gender facts

male(abdullah).
male(hadi).
male(mahdi).
male(khalid).
male(yousef).

female(afaf).
female(me).
female(maria).
female(sara).


% Parent facts

parent(abdullah, me).
parent(afaf, me).

parent(abdullah, maria).
parent(afaf, maria).

parent(abdullah, hadi).
parent(afaf, hadi).

parent(abdullah, mahdi).
parent(afaf, mahdi).

parent(abdullah, khalid).
parent(afaf, khalid).

parent(khalid, yousef).
parent(sara, yousef).


% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

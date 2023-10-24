parent( pam, bob).       % Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female( pam).            % Pam is female
female( liz).
female( ann).
female( pat).
male( jim).
male( tom).              % Tom is male
male( bob).
% Zadanie 1
child(X, Y) :- parent(Y, X).
mother(X,Y):-parent(X,Y), female(X). %b
grandparent(X,Y):-parent(X,Z),parent(Z,Y).%c
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X = Y. %d
predecessor(X, Y) :- parent(X, Y).
predecessor(X, Y) :- parent(X, Z), predecessor(Z, Y).

% Zadanie 2
person(bob, 25, reading).
person(pam, 30, hiking).
person(tom, 22, gaming).
person(liz, 28, gardening).
person(jim, 35, painting).

older(X, Y) :- person(X, AgeX, ), person(Y, AgeY, ), AgeX > AgeY.

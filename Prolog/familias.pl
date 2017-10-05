hombre(pedro).
hombre(andres).
hombre(jose).
hombre(juan).
hombre(luis).
hombre(manuel).
hombre(carlos).
hombre(hector).
mujer(camila).
mujer(ana).
mujer(angelica).
mujer(maria).
mujer(laura).
mujer(silvia).
mujer(tata).
mujer(angie).
mujer(luisa).
mujer(sofia).

progenitor(juan,carlos).
progenitor(juan,camila).
progenitor(juan,sebastian).
progenitor(maria,carlos).
progenitor(maria,camila).
progenitor(maria,sebastian).
progenitor(carlos,pedro).
progenitor(carlos,laura).
progenitor(ana,pedro).
progenitor(ana,laura).
progenitor(sebastian,andres).
progenitor(angelica,andres).
progenitor(jose,luis).
progenitor(jose,manuel).
progenitor(camila,luis).
progenitor(camila,manuel).

pareja(X,Y) :- progenitor(X,Z),progenitor(Y,Z),X \== Y.

adoptado(A) :- progenitor(X,A),hombre(X),hombre(Y),pareja(X,Y).

abuelo(X,Y) :- progenitor(X,Z) , progenitor(Z,Y).

bisabuelo(X,Y) :- progenitor(X,Z), abuelo(Z,Y).



padre(X,Y):- hombre(X),progenitor(X,Y).
madre(X,Y):- mujer(X),progenitor(X,Y).




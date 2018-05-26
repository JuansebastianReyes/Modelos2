hombre(carlos).
hombre(juan).
hombre(pedro).
hombre(camilo).
hombre(lucas).
hombre(luis).
hombre(david).
hombre(diego).
hombre(javier).
hombre(daniel).

mujer(maria).
mujer(juana).
mujer(luisa).
mujer(diana).
mujer(andrea).
mujer(camila).
mujer(francy).
mujer(lorena).
mujer(paola).
mujer(rosa).


preferencia(carlos,futbol).
preferencia(camila,futbol).
preferencia(juan,cine).
preferencia(maria,cine).
preferencia(pedro,anime).
preferencia(luisa,anime).
preferencia(camilo,drogas).
preferencia(diana,drogas).
preferencia(lucas,cerveza).
preferencia(andrea,cerveza).
preferencia(david,lectura).
preferencia(camila,lectura).
preferencia(rosa,cine).
preferencia(carlos,tejo).
preferencia(camila,nadar).
preferencia(juan,musica).
preferencia(maria,bailar).
preferencia(pedro,videojuegos).
preferencia(luisa,futbol).
preferencia(camilo,cine).
preferencia(diana,anime).
preferencia(lucas,drogas).
preferencia(andrea,lectura).


compatible(X,Y):- hombre(X),mujer(Y), preferencia(X,Z), preferencia(Y,Z), X \== Y.
compatible(X,Y):- hombre(Y),mujer(X), preferencia(X,Z), preferencia(Y,Z), X \== Y.


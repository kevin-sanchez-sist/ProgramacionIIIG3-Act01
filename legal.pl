es_enemigo_de_estados_unidos(corea_del_sur).
es_estadounidense(coronel_west).
vendio_armas_a(coronel_west, corea_del_sur).


es_criminal(X) :-
    es_estadounidense(X),
    vendio_armas_a(X,Y),
    es_enemigo_de_estados_unidos(Y).
   

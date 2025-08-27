papa_de(abraham,herbert).
papa_de(abraham,homero).
papa_de(clancy,marge).
papa_de(clancy,patty).
papa_de(clancy,selma).
papa_de(homero,bart).
papa_de(homero,lisa).
papa_de(homero,maggie).


mama_de(mona,homero).
mama_de(jacqueline,marge).
mama_de(jacqueline,patty).
mama_de(jacqueline,selma).
mama_de(marge,bart).
mama_de(marge,lisa).
mama_de(marge,maggie).
mama_de(selma,ling).

es_hombre(abraham).
es_hombre(clancy).
es_hombre(homero).
es_hombre(bart).
es_hombre(herbert).


es_mujer(mona).
es_mujer(jacqueline).
es_mujer(patty).
es_mujer(marge).
es_mujer(selma).
es_mujer(lisa).
es_mujer(maggie).
es_mujer(ling).

progenitor_de(A,B):-papa_de(A,B).
progenitor_de(A,B):-mama_de(A,B).

abuelo_de(A,B) :-
    es_hombre(A),
    papa_de(C,B) , 
    progenitor_de(A,C).

abuela_de(A,B):-
    es_mujer(A),
    mama_de(C,B),
    progenitor_de(A,C).

es_hermano(A,B) :-  
    A \= B,
    es_hombre(A),
    progenitor_de(C,A),
    progenitor_de(C,B).

es_hermana(A,B) :-  
    A \= B, 
    es_mujer(A),
    progenitor_de(C,A),
    progenitor_de(C,B).


es_tio(A,B):-  
    es_hombre(A),
    hermano_es(A,C),
    progenitor_de(C,B).

es_tia(A,B):- 
    es_mujer(A),
    progenitor_de(C,B),
    hermana_es(A,C).


es_primo(A,B) :-    
    es_hombre(A), 
    progenitor_de(C,B),
    es_tio(C,A); 
    progenitor_de(C,B),
    es_tia(C,A).
    
es_prima(A,B) :-    
    es_mujer(A), 
    progenitor_de(C,B),
    es_tio(C,A); 
    progenitor_de(C,B),
    es_tia(C,A).

es_esposo(A,B):- es_hombre(A), papa_de(A,C),mama_de(B,C).
es_esposa(A,B):- es_mujer(A), papa_de(B,C),mama_de(A,C).



    

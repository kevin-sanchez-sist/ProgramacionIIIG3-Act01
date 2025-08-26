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
mama_de(patty,ling).

hombre_es(abraham).
hombre_es(clancy).
hombre_es(homero).
hombre_es(bart).
hombre_es(herbert).




mujer_es(mona).
mujer_es(jacqueline).
mujer_es(patty).
mujer_es(marge).
mujer_es(selma).
mujer_es(lisa).
mujer_es(maggie).
mujer_es(selma).
mujer_es(ling).

progenitor_de(A,B):-papa_de(A,B).
progenitor_de(A,B):-mama_de(A,B).

abuelo_de(A,B) :- papa_de(C,B) , papa_de(A,C).
abuela_de(A,B):- mama_de(C,B) , mama_de(A,C).

hermano_es(A,B) :-  A \= B, hombre_es(A),progenitor_de(C,A),progenitor_de(C,B).
hermana_es(A,B) :-  A \= B, mujer_es(A),progenitor_de(C,A),progenitor_de(C,B).


tio_es(A,B):- A \= B, hombre_es(A),hermano_es(A,C),progenitor_de(C,B).
tia_es(A,B):- A \= B, mujer_es(A),progenitor_de(C,B),hermana_es(A,C).


primo_es(A,B) :-    hombre_es(A), progenitor_de(C,B),tio_es(C,A); progenitor_de(C,B),tia_es(C,A).
prima_es(A,B) :-    hombre_es(A), progenitor_de(C,B),tio_es(C,A); progenitor_de(C,B),tia_es(C,A).







    

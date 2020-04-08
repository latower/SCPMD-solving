10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('16975','13045').
0.1::trusts('23796','13045').
0.5217031::trusts('13045','16975').
0.1::trusts('23796','16975').
0.1::trusts('13045','23796').
0.1::trusts('16975','23796').
0.19::trusts('32080','23796').
0.19::trusts('56032','23796').
0.19::trusts('23796','32080').
0.1::trusts('23796','56032').
0.1::trusts('56873','56032').
0.1::trusts('23358','26814').
0.1::trusts('32248','26814').
0.1::trusts('26814','23358').
0.1::trusts('13045','32248').
0.271::trusts('26814','32248').
0.1::trusts('13045','5805').
0.1::trusts('23796','5805').
0.19::trusts('26814','39708').
0.271::trusts('13045','32243').
0.1::trusts('23796','9644').
0.1::trusts('32080','21363').
0.1::trusts('13045','29489').
0.1::trusts('56032','56031').

person('13045').
person('16975').
person('23796').
person('32080').
person('56032').
person('26814').
person('23358').
person('32248').
person('56873').
person('5805').
person('39708').
person('32243').
person('9644').
person('21363').
person('29489').
person('56031').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13045')).
query(buys('16975')).
query(buys('23796')).
query(buys('32080')).
query(buys('56032')).
query(buys('26814')).
query(buys('23358')).
query(buys('32248')).
query(buys('56873')).
query(buys('5805')).
query(buys('39708')).
query(buys('32243')).
query(buys('9644')).
query(buys('21363')).
query(buys('29489')).
query(buys('56031')).

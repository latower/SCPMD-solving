10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('40987','46680').
0.19::trusts('23944','40987').
0.271::trusts('41528','40987').
0.468559::trusts('32258','40987').
0.1::trusts('32259','40987').
0.1::trusts('23944','22243').
0.1::trusts('11904','23944').
0.1::trusts('47092','23944').
0.19::trusts('47093','23944').
0.271::trusts('40987','23944').
0.3439::trusts('47094','23944').
0.1::trusts('47089','23944').
0.271::trusts('23944','11904').
0.1::trusts('23944','47092').
0.1::trusts('40987','47093').
0.1::trusts('44234','47094').
0.19::trusts('23944','47094').
0.19::trusts('40987','41528').
0.19::trusts('32258','41528').
0.1::trusts('41528','32258').
0.5217031::trusts('40987','32258').
0.7458134171671::trusts('20236','32258').
0.1::trusts('40987','32259').
0.40951::trusts('20236','32259').
0.40951::trusts('32258','20236').
0.271::trusts('32259','20236').
0.19::trusts('47094','53772').
0.1::trusts('47093','63588').

person('46680').
person('40987').
person('22243').
person('23944').
person('11904').
person('47092').
person('47093').
person('47094').
person('47089').
person('41528').
person('32258').
person('32259').
person('44234').
person('20236').
person('53772').
person('63588').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('46680')).
query(buys('40987')).
query(buys('22243')).
query(buys('23944')).
query(buys('11904')).
query(buys('47092')).
query(buys('47093')).
query(buys('47094')).
query(buys('47089')).
query(buys('41528')).
query(buys('32258')).
query(buys('32259')).
query(buys('44234')).
query(buys('20236')).
query(buys('53772')).
query(buys('63588')).

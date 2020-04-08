10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('46482','9956').
0.1::trusts('20046','9956').
0.1::trusts('9956','46482').
0.271::trusts('20046','46482').
0.19::trusts('42293','46482').
0.271::trusts('19146','46482').
0.1::trusts('9956','20046').
0.1::trusts('46722','20046').
0.271::trusts('46482','20046').
0.1::trusts('2539','20046').
0.271::trusts('42293','20046').
0.1::trusts('20046','46722').
0.717570463519::trusts('46720','46722').
0.1::trusts('63681','46722').
0.19::trusts('51011','46722').
0.5217031::trusts('46722','46720').
0.1::trusts('20046','46720').
0.3439::trusts('51011','46720').
0.19::trusts('36467','46720').
0.1::trusts('22193','46720').
0.271::trusts('46722','63681').
0.271::trusts('46722','51011').
0.271::trusts('46720','51011').
0.19::trusts('46482','42293').
0.271::trusts('46482','19146').
0.1::trusts('46482','2539').
0.1::trusts('20046','2539').
0.271::trusts('46720','36467').
0.19::trusts('46722','22193').
0.19::trusts('46720','22193').
0.1::trusts('46721','22193').
0.1::trusts('46482','46481').
0.1::trusts('46482','42938').
0.1::trusts('51011','29770').

person('9956').
person('46482').
person('20046').
person('46722').
person('46720').
person('63681').
person('51011').
person('42293').
person('19146').
person('2539').
person('36467').
person('22193').
person('46721').
person('46481').
person('42938').
person('29770').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9956')).
query(buys('46482')).
query(buys('20046')).
query(buys('46722')).
query(buys('46720')).
query(buys('63681')).
query(buys('51011')).
query(buys('42293')).
query(buys('19146')).
query(buys('2539')).
query(buys('36467')).
query(buys('22193')).
query(buys('46721')).
query(buys('46481')).
query(buys('42938')).
query(buys('29770')).

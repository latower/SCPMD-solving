10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('11047','6415').
0.1::trusts('6085','6415').
0.1::trusts('261','6415').
0.56953279::trusts('6415','11047').
0.1::trusts('6085','11047').
0.19::trusts('11047','6085').
0.1::trusts('2377','6085').
0.1::trusts('14380','6085').
0.40951::trusts('10560','6085').
0.1::trusts('13067','6085').
0.1::trusts('14381','6085').
0.1::trusts('6085','2377').
0.1::trusts('261','2377').
0.468559::trusts('13649','13652').
0.19::trusts('10560','13652').
0.19::trusts('13069','13652').
0.5217031::trusts('13652','13649').
0.1::trusts('13656','13649').
0.1::trusts('13652','10560').
0.19::trusts('14380','10560').
0.19::trusts('6085','10560').
0.19::trusts('13652','13069').
0.1::trusts('14380','13069').
0.19::trusts('10560','13069').
0.271::trusts('22196','13069').
0.1::trusts('22196','24096').
0.1::trusts('24096','22196').
0.1::trusts('14380','22196').
0.1::trusts('10560','22196').
0.1::trusts('13069','22196').
0.19::trusts('13067','22196').
0.1::trusts('14381','22196').
0.1::trusts('21422','22196').
0.1::trusts('10560','14380').
0.1::trusts('22196','14380').
0.1::trusts('6085','13067').
0.1::trusts('22196','13067').
0.1::trusts('6085','14381').
0.19::trusts('13649','13656').
0.1::trusts('22196','21422').
0.271::trusts('13649','3274').
0.1::trusts('24096','7254').
0.1::trusts('24096','23406').
0.1::trusts('10560','2760').

person('6415').
person('11047').
person('6085').
person('261').
person('2377').
person('13652').
person('13649').
person('10560').
person('13069').
person('24096').
person('22196').
person('14380').
person('13067').
person('14381').
person('13656').
person('21422').
person('3274').
person('7254').
person('23406').
person('2760').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6415')).
query(buys('11047')).
query(buys('6085')).
query(buys('261')).
query(buys('2377')).
query(buys('13652')).
query(buys('13649')).
query(buys('10560')).
query(buys('13069')).
query(buys('24096')).
query(buys('22196')).
query(buys('14380')).
query(buys('13067')).
query(buys('14381')).
query(buys('13656')).
query(buys('21422')).
query(buys('3274')).
query(buys('7254')).
query(buys('23406')).
query(buys('2760')).
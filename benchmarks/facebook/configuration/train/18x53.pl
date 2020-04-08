10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('24699','6353').
0.1::trusts('41286','6353').
0.1::trusts('35175','6353').
0.1::trusts('15765','24699').
0.1::trusts('22711','24699').
0.19::trusts('31960','24699').
0.1::trusts('26910','24699').
0.19::trusts('32956','24699').
0.1::trusts('30653','24699').
0.271::trusts('30067','24699').
0.271::trusts('27429','24699').
0.19::trusts('6353','41286').
0.19::trusts('6353','35175').
0.1::trusts('27429','35175').
0.1::trusts('15765','33006').
0.1::trusts('30653','33006').
0.1::trusts('29570','33006').
0.1::trusts('24699','15765').
0.19::trusts('24699','30653').
0.1::trusts('33006','19139').
0.19::trusts('24699','22711').
0.1::trusts('31960','22711').
0.271::trusts('24699','31960').
0.19::trusts('24699','26910').
0.1::trusts('24699','32956').
0.40951::trusts('24699','30067').
0.1::trusts('25921','30067').
0.271::trusts('24699','27429').
0.1::trusts('35175','27429').
0.19::trusts('30067','25921').
0.1::trusts('35084','25921').
0.1::trusts('29570','33004').

person('6353').
person('24699').
person('41286').
person('35175').
person('33006').
person('15765').
person('30653').
person('29570').
person('19139').
person('22711').
person('31960').
person('26910').
person('32956').
person('30067').
person('27429').
person('25921').
person('35084').
person('33004').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6353')).
query(buys('24699')).
query(buys('41286')).
query(buys('35175')).
query(buys('33006')).
query(buys('15765')).
query(buys('30653')).
query(buys('29570')).
query(buys('19139')).
query(buys('22711')).
query(buys('31960')).
query(buys('26910')).
query(buys('32956')).
query(buys('30067')).
query(buys('27429')).
query(buys('25921')).
query(buys('35084')).
query(buys('33004')).

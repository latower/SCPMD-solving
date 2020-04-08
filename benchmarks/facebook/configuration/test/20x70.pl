10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.6513215599::trusts('41536','25391').
0.19::trusts('14150','25391').
0.1::trusts('33489','25391').
0.1::trusts('41537','25391').
0.40951::trusts('25391','41536').
0.1::trusts('31699','41536').
0.271::trusts('25391','14150').
0.19::trusts('55501','14150').
0.271::trusts('25391','33489').
0.3439::trusts('41536','33489').
0.1::trusts('41537','33489').
0.19::trusts('25391','41537').
0.19::trusts('57863','41537').
0.1::trusts('50764','41537').
0.19::trusts('50770','41537').
0.1::trusts('50786','41537').
0.1::trusts('41536','31699').
0.271::trusts('41537','57863').
0.1::trusts('41537','50764').
0.1::trusts('50770','50764').
0.19::trusts('50786','50764').
0.19::trusts('23616','50764').
0.1::trusts('60605','50764').
0.3439::trusts('41537','50770').
0.1::trusts('50764','50770').
0.40951::trusts('50768','50770').
0.1::trusts('50764','23616').
0.1::trusts('50764','60605').
0.1::trusts('50790','60605').
0.19::trusts('50764','50790').
0.1::trusts('60605','50790').
0.1::trusts('23616','50451').
0.1::trusts('57863','59387').
0.19::trusts('41537','51364').
0.1::trusts('50786','59291').
0.1::trusts('41537','50776').

person('25391').
person('41536').
person('14150').
person('33489').
person('41537').
person('31699').
person('55501').
person('57863').
person('50764').
person('50770').
person('50786').
person('23616').
person('60605').
person('50768').
person('50790').
person('50451').
person('59387').
person('51364').
person('59291').
person('50776').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25391')).
query(buys('41536')).
query(buys('14150')).
query(buys('33489')).
query(buys('41537')).
query(buys('31699')).
query(buys('55501')).
query(buys('57863')).
query(buys('50764')).
query(buys('50770')).
query(buys('50786')).
query(buys('23616')).
query(buys('60605')).
query(buys('50768')).
query(buys('50790')).
query(buys('50451')).
query(buys('59387')).
query(buys('51364')).
query(buys('59291')).
query(buys('50776')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('48224','46629').
0.1::trusts('54898','46629').
0.1::trusts('48520','46629').
0.271::trusts('58489','48224').
0.1::trusts('52614','48224').
0.1::trusts('46629','54898').
0.19::trusts('52640','54898').
0.19::trusts('46629','48520').
0.3439::trusts('38480','52640').
0.1::trusts('52864','52640').
0.1::trusts('58489','52640').
0.1::trusts('54898','52640').
0.19::trusts('47913','52640').
0.19::trusts('52640','38480').
0.1::trusts('52864','38480').
0.1::trusts('38480','52864').
0.19::trusts('48224','58489').
0.3439::trusts('52640','47913').
0.1::trusts('59429','47913').
0.1::trusts('51599','47913').
0.1::trusts('38480','10040').
0.1::trusts('23909','10040').
0.1::trusts('38473','10040').
0.1::trusts('10040','38473').
0.19::trusts('59429','43506').
0.271::trusts('43506','59429').
0.1::trusts('58489','59429').
0.1::trusts('58489','52614').
0.1::trusts('46629','40697').
0.1::trusts('52640','51599').
0.1::trusts('58489','51599').
0.1::trusts('47913','48705').
0.1::trusts('60420','48705').
0.1::trusts('47913','59428').
0.1::trusts('59429','59428').
0.1::trusts('52640','48164').
0.1::trusts('47913','59611').

person('46629').
person('48224').
person('54898').
person('48520').
person('52640').
person('38480').
person('52864').
person('58489').
person('47913').
person('10040').
person('23909').
person('38473').
person('43506').
person('59429').
person('52614').
person('40697').
person('51599').
person('48705').
person('60420').
person('59428').
person('48164').
person('59611').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('46629')).
query(buys('48224')).
query(buys('54898')).
query(buys('48520')).
query(buys('52640')).
query(buys('38480')).
query(buys('52864')).
query(buys('58489')).
query(buys('47913')).
query(buys('10040')).
query(buys('23909')).
query(buys('38473')).
query(buys('43506')).
query(buys('59429')).
query(buys('52614')).
query(buys('40697')).
query(buys('51599')).
query(buys('48705')).
query(buys('60420')).
query(buys('59428')).
query(buys('48164')).
query(buys('59611')).

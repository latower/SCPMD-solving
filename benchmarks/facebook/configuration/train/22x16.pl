10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('34774','29379').
0.271::trusts('49003','29379').
0.1::trusts('43266','29379').
0.5217031::trusts('29379','49003').
0.19::trusts('27487','49003').
0.1::trusts('21405','43266').
0.271::trusts('29379','43266').
0.1::trusts('43269','43266').
0.1::trusts('43244','43266').
0.19::trusts('49003','27487').
0.1::trusts('58550','27487').
0.271::trusts('21405','43269').
0.1::trusts('43266','43269').
0.1::trusts('43252','43269').
0.1::trusts('48702','43269').
0.19::trusts('21405','43244').
0.1::trusts('43266','43244').
0.1::trusts('28217','43244').
0.19::trusts('21405','52506').
0.19::trusts('21408','52506').
0.19::trusts('21409','52506').
0.40951::trusts('21405','21408').
0.19::trusts('52506','21408').
0.1::trusts('58972','21408').
0.271::trusts('21405','21409').
0.271::trusts('52506','21409').
0.1::trusts('21407','21409').
0.1::trusts('34774','33755').
0.1::trusts('21408','58972').
0.19::trusts('21408','21407').
0.1::trusts('29379','60114').
0.878423345409431::trusts('29884','60114').
0.1::trusts('43244','60909').
0.1::trusts('21405','52508').

person('29379').
person('34774').
person('49003').
person('43266').
person('27487').
person('58550').
person('21405').
person('43269').
person('43244').
person('52506').
person('21408').
person('21409').
person('33755').
person('58972').
person('21407').
person('43252').
person('48702').
person('28217').
person('60114').
person('29884').
person('60909').
person('52508').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29379')).
query(buys('34774')).
query(buys('49003')).
query(buys('43266')).
query(buys('27487')).
query(buys('58550')).
query(buys('21405')).
query(buys('43269')).
query(buys('43244')).
query(buys('52506')).
query(buys('21408')).
query(buys('21409')).
query(buys('33755')).
query(buys('58972')).
query(buys('21407')).
query(buys('43252')).
query(buys('48702')).
query(buys('28217')).
query(buys('60114')).
query(buys('29884')).
query(buys('60909')).
query(buys('52508')).

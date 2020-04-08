10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.68618940391::trusts('5313','4089').
0.468559::trusts('4085','4089').
0.1::trusts('31163','4089').
0.271::trusts('4095','4089').
0.3439::trusts('21783','4089').
0.1::trusts('7253','4089').
0.3439::trusts('4089','5313').
0.19::trusts('4085','5313').
0.1::trusts('12664','5313').
0.5217031::trusts('19057','5313').
0.19::trusts('40264','5313').
0.1::trusts('546','5313').
0.19::trusts('4095','31163').
0.1::trusts('31167','31163').
0.1::trusts('31176','31163').
0.271::trusts('4089','4095').
0.19::trusts('31163','4095').
0.40951::trusts('4045','4095').
0.1::trusts('4092','4095').
0.19::trusts('4089','21783').
0.1::trusts('4089','7253').
0.19::trusts('4804','7253').
0.271::trusts('5313','12664').
0.890581010868488::trusts('5313','19057').
0.3439::trusts('5313','40264').
0.1::trusts('5313','546').
0.1::trusts('31163','31167').
0.19::trusts('31163','31176').
0.56953279::trusts('4095','4045').
0.3439::trusts('4095','4092').
0.3439::trusts('4089','4804').
0.19::trusts('7253','4804').
0.1::trusts('5313','40265').
0.1::trusts('49980','40265').

person('4089').
person('5313').
person('4085').
person('31163').
person('4095').
person('21783').
person('7253').
person('12664').
person('19057').
person('40264').
person('546').
person('31167').
person('31176').
person('4045').
person('4092').
person('4804').
person('40265').
person('49980').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4089')).
query(buys('5313')).
query(buys('4085')).
query(buys('31163')).
query(buys('4095')).
query(buys('21783')).
query(buys('7253')).
query(buys('12664')).
query(buys('19057')).
query(buys('40264')).
query(buys('546')).
query(buys('31167')).
query(buys('31176')).
query(buys('4045')).
query(buys('4092')).
query(buys('4804')).
query(buys('40265')).
query(buys('49980')).

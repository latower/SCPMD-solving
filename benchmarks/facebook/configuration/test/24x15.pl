10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('28534','21402').
0.1::trusts('33128','21402').
0.271::trusts('30862','21402').
0.1::trusts('7341','28534').
0.3439::trusts('21402','28534').
0.1::trusts('29991','28534').
0.19::trusts('7341','33128').
0.19::trusts('21402','33128').
0.271::trusts('7341','30862').
0.40951::trusts('21402','30862').
0.1::trusts('29991','30862').
0.19::trusts('21397','30862').
0.1::trusts('61570','30862').
0.1::trusts('44336','30862').
0.19::trusts('28534','29991').
0.19::trusts('30862','29991').
0.3439::trusts('17794','29991').
0.468559::trusts('29991','17794').
0.1::trusts('26044','17794').
0.1::trusts('21402','21392').
0.19::trusts('33128','21392').
0.1::trusts('21402','21397').
0.271::trusts('30862','21397').
0.1::trusts('30862','61570').
0.1::trusts('57322','61570').
0.1::trusts('45497','61570').
0.19::trusts('30862','44336').
0.19::trusts('17794','26044').
0.19::trusts('26050','26044').
0.19::trusts('61570','57322').
0.1::trusts('26044','26050').
0.1::trusts('21392','16900').
0.1::trusts('10640','16900').
0.1::trusts('21398','46889').
0.271::trusts('7341','21398').
0.271::trusts('21402','21398').
0.1::trusts('30862','21398').
0.1::trusts('7341','35669').
0.1::trusts('7341','47212').
0.1::trusts('28534','59024').
0.1::trusts('21392','55113').
0.1::trusts('7341','27830').

person('21402').
person('28534').
person('33128').
person('30862').
person('29991').
person('17794').
person('7341').
person('21392').
person('21397').
person('61570').
person('44336').
person('26044').
person('57322').
person('45497').
person('26050').
person('16900').
person('10640').
person('46889').
person('21398').
person('35669').
person('47212').
person('59024').
person('55113').
person('27830').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21402')).
query(buys('28534')).
query(buys('33128')).
query(buys('30862')).
query(buys('29991')).
query(buys('17794')).
query(buys('7341')).
query(buys('21392')).
query(buys('21397')).
query(buys('61570')).
query(buys('44336')).
query(buys('26044')).
query(buys('57322')).
query(buys('45497')).
query(buys('26050')).
query(buys('16900')).
query(buys('10640')).
query(buys('46889')).
query(buys('21398')).
query(buys('35669')).
query(buys('47212')).
query(buys('59024')).
query(buys('55113')).
query(buys('27830')).
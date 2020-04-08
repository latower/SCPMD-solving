10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('48403','22582').
0.19::trusts('22582','48403').
0.1::trusts('16236','48403').
0.19::trusts('49208','48403').
0.1::trusts('16232','36615').
0.19::trusts('16236','36615').
0.271::trusts('16236','16232').
0.1::trusts('28155','16232').
0.1::trusts('52521','16236').
0.19::trusts('16232','16236').
0.271::trusts('48403','16236').
0.19::trusts('56361','16236').
0.1::trusts('53461','16236').
0.1::trusts('16236','52521').
0.1::trusts('48403','52521').
0.1::trusts('16232','28155').
0.1::trusts('16236','56361').
0.1::trusts('11956','56361').
0.1::trusts('61559','56361').
0.1::trusts('16236','53461').
0.1::trusts('49173','53461').
0.1::trusts('53461','49173').
0.19::trusts('48403','49208').
0.19::trusts('60166','52973').
0.1::trusts('11956','52973').
0.19::trusts('56361','11956').
0.19::trusts('56361','61559').
0.1::trusts('54030','44478').
0.1::trusts('22582','54030').

person('22582').
person('48403').
person('36615').
person('16232').
person('16236').
person('52521').
person('28155').
person('56361').
person('53461').
person('49173').
person('49208').
person('52973').
person('60166').
person('11956').
person('61559').
person('44478').
person('54030').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22582')).
query(buys('48403')).
query(buys('36615')).
query(buys('16232')).
query(buys('16236')).
query(buys('52521')).
query(buys('28155')).
query(buys('56361')).
query(buys('53461')).
query(buys('49173')).
query(buys('49208')).
query(buys('52973')).
query(buys('60166')).
query(buys('11956')).
query(buys('61559')).
query(buys('44478')).
query(buys('54030')).

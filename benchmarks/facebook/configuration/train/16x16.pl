10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('4123','6671').
0.612579511::trusts('19006','6671').
0.19::trusts('3369','6671').
0.271::trusts('14570','6671').
0.1::trusts('10461','6671').
0.3439::trusts('6671','4123').
0.56953279::trusts('28734','4123').
0.6513215599::trusts('20189','4123').
0.19::trusts('6671','3369').
0.3439::trusts('6671','14570').
0.19::trusts('19006','14570').
0.1::trusts('6671','10461').
0.271::trusts('10465','10461').
0.1::trusts('46021','10461').
0.19::trusts('6671','28734').
0.612579511::trusts('4123','28734').
0.56953279::trusts('4123','20189').
0.1::trusts('22246','10180').
0.19::trusts('6671','22246').
0.19::trusts('10461','10465').
0.19::trusts('10461','46021').
0.1::trusts('45719','46021').
0.1::trusts('6671','31484').
0.1::trusts('10461','31484').
0.1::trusts('27451','31484').
0.1::trusts('31484','27451').
0.468559::trusts('19006','20258').

person('6671').
person('4123').
person('19006').
person('3369').
person('14570').
person('10461').
person('28734').
person('20189').
person('10180').
person('22246').
person('10465').
person('46021').
person('31484').
person('27451').
person('45719').
person('20258').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6671')).
query(buys('4123')).
query(buys('19006')).
query(buys('3369')).
query(buys('14570')).
query(buys('10461')).
query(buys('28734')).
query(buys('20189')).
query(buys('10180')).
query(buys('22246')).
query(buys('10465')).
query(buys('46021')).
query(buys('31484')).
query(buys('27451')).
query(buys('45719')).
query(buys('20258')).

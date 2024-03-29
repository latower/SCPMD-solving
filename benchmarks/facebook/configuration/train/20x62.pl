10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.6513215599::trusts('8377','12063').
0.68618940391::trusts('12063','8377').
0.993637314558864::trusts('17417','8377').
0.7458134171671::trusts('20921','8377').
0.717570463519::trusts('28045','8377').
0.19::trusts('5360','8377').
0.40951::trusts('8377','20921').
0.1::trusts('12063','28045').
0.864914828232701::trusts('8377','28045').
0.1::trusts('20921','28045').
0.19::trusts('17417','5360').
0.1::trusts('8377','5360').
0.40951::trusts('5361','5360').
0.3439::trusts('8460','5360').
0.1::trusts('5369','5360').
0.19::trusts('24158','5360').
0.56953279::trusts('5360','5361').
0.1::trusts('13679','5361').
0.19::trusts('5361','13679').
0.56953279::trusts('5360','8460').
0.19::trusts('5361','5369').
0.1::trusts('5360','5369').
0.3439::trusts('5360','24158').
0.1::trusts('26495','24158').
0.19::trusts('34208','24158').
0.1::trusts('8377','5359').
0.19::trusts('5360','5359').
0.468559::trusts('13840','5359').
0.1::trusts('32758','5359').
0.1::trusts('5359','13840').
0.1::trusts('5359','32758').
0.19::trusts('24158','26495').
0.1::trusts('24158','34208').
0.1::trusts('12063','8317').
0.271::trusts('20921','8317').
0.40951::trusts('20921','33339').
0.1::trusts('13840','32830').
0.1::trusts('5361','32429').

person('12063').
person('8377').
person('17417').
person('20921').
person('28045').
person('5360').
person('5361').
person('13679').
person('8460').
person('5369').
person('24158').
person('5359').
person('13840').
person('32758').
person('26495').
person('34208').
person('8317').
person('33339').
person('32830').
person('32429').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12063')).
query(buys('8377')).
query(buys('17417')).
query(buys('20921')).
query(buys('28045')).
query(buys('5360')).
query(buys('5361')).
query(buys('13679')).
query(buys('8460')).
query(buys('5369')).
query(buys('24158')).
query(buys('5359')).
query(buys('13840')).
query(buys('32758')).
query(buys('26495')).
query(buys('34208')).
query(buys('8317')).
query(buys('33339')).
query(buys('32830')).
query(buys('32429')).

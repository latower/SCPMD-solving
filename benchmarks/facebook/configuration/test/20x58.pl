10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('2046','2555').
0.1::trusts('18482','2555').
0.271::trusts('2555','2046').
0.1::trusts('2555','18482').
0.271::trusts('7352','18482').
0.1::trusts('7370','18482').
0.271::trusts('2332','7352').
0.1::trusts('21823','7352').
0.271::trusts('32330','7352').
0.19::trusts('18482','7352').
0.19::trusts('3740','7352').
0.56953279::trusts('7352','2332').
0.1::trusts('7370','2332').
0.1::trusts('23250','2332').
0.1::trusts('31223','2332').
0.1::trusts('7352','21823').
0.1::trusts('19435','21823').
0.19::trusts('12852','21823').
0.3439::trusts('7352','32330').
0.1::trusts('18482','32330').
0.1::trusts('16930','32330').
0.1::trusts('7352','3740').
0.1::trusts('35101','3740').
0.19::trusts('2332','7370').
0.19::trusts('18482','7370').
0.19::trusts('21823','19435').
0.1::trusts('12852','19435').
0.1::trusts('21823','12852').
0.19::trusts('32330','16930').
0.1::trusts('2332','2933').
0.1::trusts('21823','15074').
0.19::trusts('3740','35101').
0.1::trusts('7352','7365').
0.1::trusts('2555','7623').
0.1::trusts('2555','7626').

person('2555').
person('2046').
person('18482').
person('7352').
person('2332').
person('21823').
person('32330').
person('3740').
person('7370').
person('23250').
person('31223').
person('19435').
person('12852').
person('16930').
person('2933').
person('15074').
person('35101').
person('7365').
person('7623').
person('7626').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2555')).
query(buys('2046')).
query(buys('18482')).
query(buys('7352')).
query(buys('2332')).
query(buys('21823')).
query(buys('32330')).
query(buys('3740')).
query(buys('7370')).
query(buys('23250')).
query(buys('31223')).
query(buys('19435')).
query(buys('12852')).
query(buys('16930')).
query(buys('2933')).
query(buys('15074')).
query(buys('35101')).
query(buys('7365')).
query(buys('7623')).
query(buys('7626')).

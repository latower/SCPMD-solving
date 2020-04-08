10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('6803','17531').
0.1::trusts('15666','17531').
0.40951::trusts('17531','6803').
0.56953279::trusts('6601','6803').
0.19::trusts('15666','6803').
0.1::trusts('17145','6803').
0.1::trusts('20749','6803').
0.271::trusts('17531','15666').
0.468559::trusts('6803','15666').
0.1::trusts('9941','15666').
0.1::trusts('29786','15666').
0.612579511::trusts('6803','6601').
0.19::trusts('6803','17145').
0.19::trusts('11058','17145').
0.1::trusts('6803','20749').
0.1::trusts('34264','20749').
0.19::trusts('34264','23534').
0.19::trusts('23534','34264').
0.1::trusts('20749','34264').
0.1::trusts('15666','9941').
0.19::trusts('8199','9941').
0.1::trusts('15666','29786').
0.19::trusts('42589','29786').
0.1::trusts('17145','11058').
0.1::trusts('32457','11058').
0.5217031::trusts('9941','8199').
0.1::trusts('29786','42589').
0.1::trusts('11058','32457').
0.19::trusts('6803','29319').
0.1::trusts('17145','29319').
0.1::trusts('17531','20672').
0.1::trusts('6803','20672').
0.1::trusts('23534','55805').
0.1::trusts('6803','29824').
0.1::trusts('20749','40628').
0.1::trusts('11058','29744').

person('17531').
person('6803').
person('15666').
person('6601').
person('17145').
person('20749').
person('23534').
person('34264').
person('9941').
person('29786').
person('11058').
person('8199').
person('42589').
person('32457').
person('29319').
person('20672').
person('55805').
person('29824').
person('40628').
person('29744').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17531')).
query(buys('6803')).
query(buys('15666')).
query(buys('6601')).
query(buys('17145')).
query(buys('20749')).
query(buys('23534')).
query(buys('34264')).
query(buys('9941')).
query(buys('29786')).
query(buys('11058')).
query(buys('8199')).
query(buys('42589')).
query(buys('32457')).
query(buys('29319')).
query(buys('20672')).
query(buys('55805')).
query(buys('29824')).
query(buys('40628')).
query(buys('29744')).

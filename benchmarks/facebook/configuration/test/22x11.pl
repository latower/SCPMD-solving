10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('5346','11225').
0.56953279::trusts('8961','11225').
0.19::trusts('4994','11225').
0.40951::trusts('14829','11225').
0.6513215599::trusts('15722','11225').
0.1::trusts('43160','11225').
0.271::trusts('11225','5346').
0.1::trusts('7186','5346').
0.468559::trusts('4994','5346').
0.19::trusts('15724','5346').
0.56953279::trusts('11225','8961').
0.19::trusts('11225','4994').
0.19::trusts('5347','4994').
0.40951::trusts('5346','4994').
0.1::trusts('7186','4994').
0.1::trusts('5865','4994').
0.1::trusts('5349','4994').
0.3439::trusts('38621','4994').
0.1::trusts('15726','4994').
0.56953279::trusts('11225','15722').
0.468559::trusts('15721','15722').
0.1::trusts('4994','5347').
0.77123207545039::trusts('6032','5347').
0.935389181107733::trusts('43159','5347').
0.612579511::trusts('5347','6032').
0.1::trusts('43159','6032').
0.1::trusts('8872','6032').
0.878423345409431::trusts('5347','43159').
0.1::trusts('7612','7186').
0.1::trusts('5865','7186').
0.19::trusts('5346','15724').
0.1::trusts('11027','15724').
0.3439::trusts('7186','5865').
0.19::trusts('4994','5865').
0.3439::trusts('7612','5349').
0.19::trusts('4994','5349').
0.271::trusts('38621','5349').
0.19::trusts('7186','38621').
0.19::trusts('5349','38621').
0.271::trusts('4994','38621').
0.1::trusts('15726','38621').
0.19::trusts('6032','8872').
0.3439::trusts('15722','15721').
0.1::trusts('7612','55221').
0.1::trusts('14829','14828').

person('11225').
person('5346').
person('8961').
person('4994').
person('14829').
person('15722').
person('43160').
person('5347').
person('6032').
person('43159').
person('7186').
person('15724').
person('7612').
person('5865').
person('5349').
person('38621').
person('15726').
person('8872').
person('15721').
person('11027').
person('55221').
person('14828').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11225')).
query(buys('5346')).
query(buys('8961')).
query(buys('4994')).
query(buys('14829')).
query(buys('15722')).
query(buys('43160')).
query(buys('5347')).
query(buys('6032')).
query(buys('43159')).
query(buys('7186')).
query(buys('15724')).
query(buys('7612')).
query(buys('5865')).
query(buys('5349')).
query(buys('38621')).
query(buys('15726')).
query(buys('8872')).
query(buys('15721')).
query(buys('11027')).
query(buys('55221')).
query(buys('14828')).
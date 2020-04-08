10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('48157','40010').
0.1::trusts('40010','48157').
0.3439::trusts('51231','48157').
0.1::trusts('48156','48157').
0.1::trusts('52833','48157').
0.1::trusts('42396','48157').
0.271::trusts('48157','51231').
0.1::trusts('48156','51231').
0.271::trusts('42396','51231').
0.19::trusts('51237','51231').
0.1::trusts('55795','51231').
0.56953279::trusts('46347','48156').
0.1::trusts('51231','48156').
0.1::trusts('48157','48156').
0.1::trusts('51237','48156').
0.1::trusts('51233','48156').
0.1::trusts('46347','42396').
0.271::trusts('51231','42396').
0.468559::trusts('46347','51237').
0.612579511::trusts('51231','51237').
0.19::trusts('48156','51237').
0.19::trusts('42396','51237').
0.1::trusts('51238','51237').
0.1::trusts('51235','51237').
0.1::trusts('51231','55795').
0.1::trusts('46347','60880').
0.1::trusts('51231','52833').
0.1::trusts('48157','52833').
0.1::trusts('51237','52833').
0.1::trusts('51235','52833').
0.1::trusts('48850','52833').
0.1::trusts('51238','51233').
0.1::trusts('52833','51235').
0.1::trusts('51238','51235').
0.1::trusts('47923','51235').
0.19::trusts('51233','51238').
0.1::trusts('51235','51238').
0.19::trusts('46347','60879').

person('40010').
person('48157').
person('51231').
person('48156').
person('42396').
person('51237').
person('55795').
person('60880').
person('46347').
person('52833').
person('51233').
person('51235').
person('48850').
person('51238').
person('47923').
person('60879').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('40010')).
query(buys('48157')).
query(buys('51231')).
query(buys('48156')).
query(buys('42396')).
query(buys('51237')).
query(buys('55795')).
query(buys('60880')).
query(buys('46347')).
query(buys('52833')).
query(buys('51233')).
query(buys('51235')).
query(buys('48850')).
query(buys('51238')).
query(buys('47923')).
query(buys('60879')).
10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('29339','13904').
0.911370618803475::trusts('13903','13904').
0.1::trusts('13820','13904').
0.19::trusts('13904','29339').
0.19::trusts('13904','13820').
0.1::trusts('4429','13820').
0.19::trusts('10178','13820').
0.1::trusts('24092','13820').
0.1::trusts('13820','10178').
0.1::trusts('51890','10178').
0.1::trusts('4429','24092').
0.1::trusts('13820','24092').
0.271::trusts('4429','4436').
0.612579511::trusts('4422','4436').
0.1::trusts('10783','4436').
0.3439::trusts('4429','4422').
0.612579511::trusts('4436','4422').
0.1::trusts('4440','4422').
0.271::trusts('4436','10783').
0.1::trusts('4422','4440').
0.5217031::trusts('4429','4432').
0.1::trusts('4436','4432').
0.1::trusts('4438','4432').
0.1::trusts('4429','4438').
0.1::trusts('4436','4438').
0.19::trusts('13903','22943').

person('13904').
person('29339').
person('13903').
person('13820').
person('4429').
person('10178').
person('24092').
person('51890').
person('4436').
person('4422').
person('10783').
person('4440').
person('4432').
person('4438').
person('22943').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13904')).
query(buys('29339')).
query(buys('13903')).
query(buys('13820')).
query(buys('4429')).
query(buys('10178')).
query(buys('24092')).
query(buys('51890')).
query(buys('4436')).
query(buys('4422')).
query(buys('10783')).
query(buys('4440')).
query(buys('4432')).
query(buys('4438')).
query(buys('22943')).

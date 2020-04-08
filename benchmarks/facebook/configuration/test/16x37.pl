10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('17378','9429').
0.271::trusts('21104','9429').
0.19::trusts('15680','9429').
0.56953279::trusts('9429','17378').
0.3439::trusts('10471','17378').
0.19::trusts('13100','17378').
0.468559::trusts('9429','21104').
0.271::trusts('9429','15680').
0.19::trusts('41487','15680').
0.271::trusts('41487','31798').
0.19::trusts('31798','41487').
0.1::trusts('15680','41487').
0.1::trusts('63842','41487').
0.271::trusts('49723','41487').
0.1::trusts('13097','13100').
0.19::trusts('17378','13100').
0.3439::trusts('9429','18769').
0.1::trusts('18775','18769').
0.1::trusts('9429','18775').
0.1::trusts('18769','18775').
0.1::trusts('41487','63842').
0.19::trusts('41487','49723').
0.19::trusts('49721','54099').
0.1::trusts('41487','49721').
0.271::trusts('54099','49721').
0.1::trusts('49721','54116').

person('9429').
person('17378').
person('21104').
person('15680').
person('31798').
person('41487').
person('10471').
person('13100').
person('18769').
person('18775').
person('63842').
person('49723').
person('13097').
person('54099').
person('49721').
person('54116').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9429')).
query(buys('17378')).
query(buys('21104')).
query(buys('15680')).
query(buys('31798')).
query(buys('41487')).
query(buys('10471')).
query(buys('13100')).
query(buys('18769')).
query(buys('18775')).
query(buys('63842')).
query(buys('49723')).
query(buys('13097')).
query(buys('54099')).
query(buys('49721')).
query(buys('54116')).

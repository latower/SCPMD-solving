10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.6513215599::trusts('40682','48454').
0.3439::trusts('48454','40682').
0.1::trusts('52670','40682').
0.1::trusts('26465','40682').
0.1::trusts('23238','40682').
0.1::trusts('23238','17679').
0.1::trusts('17679','23238').
0.19::trusts('40682','23238').
0.19::trusts('40682','52670').
0.1::trusts('40682','26465').
0.1::trusts('43504','26465').
0.1::trusts('26465','43504').
0.1::trusts('26465','44098').
0.1::trusts('45843','44098').
0.1::trusts('26465','45843').
0.1::trusts('40682','19335').
0.1::trusts('26465','35011').
0.19::trusts('26465','35010').
0.1::trusts('43504','35010').
0.1::trusts('43504','26466').
0.1::trusts('17679','29875').
0.19::trusts('56986','51250').
0.1::trusts('55311','51250').
0.19::trusts('51250','56986').
0.1::trusts('51250','55311').
0.1::trusts('40682','42215').
0.1::trusts('23238','42215').
0.1::trusts('56986','42215').
0.1::trusts('40682','59046').

person('48454').
person('40682').
person('17679').
person('23238').
person('52670').
person('26465').
person('43504').
person('44098').
person('45843').
person('19335').
person('35011').
person('35010').
person('26466').
person('29875').
person('51250').
person('56986').
person('55311').
person('42215').
person('59046').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('48454')).
query(buys('40682')).
query(buys('17679')).
query(buys('23238')).
query(buys('52670')).
query(buys('26465')).
query(buys('43504')).
query(buys('44098')).
query(buys('45843')).
query(buys('19335')).
query(buys('35011')).
query(buys('35010')).
query(buys('26466')).
query(buys('29875')).
query(buys('51250')).
query(buys('56986')).
query(buys('55311')).
query(buys('42215')).
query(buys('59046')).

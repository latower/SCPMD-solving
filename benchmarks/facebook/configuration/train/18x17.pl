10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('55152','33087').
0.1::trusts('57910','33087').
0.19::trusts('53487','33087').
0.1::trusts('50271','33087').
0.1::trusts('51670','33087').
0.271::trusts('33087','55152').
0.1::trusts('20988','55152').
0.1::trusts('49737','55152').
0.19::trusts('33087','57910').
0.19::trusts('33087','53487').
0.1::trusts('30102','53487').
0.1::trusts('59819','53487').
0.1::trusts('52874','53487').
0.1::trusts('33087','50271').
0.271::trusts('33087','51670').
0.1::trusts('55152','20988').
0.271::trusts('45769','20988').
0.19::trusts('20988','45769').
0.1::trusts('56255','45769').
0.1::trusts('55152','49737').
0.19::trusts('53487','30102').
0.1::trusts('30098','30102').
0.1::trusts('53487','52874').
0.1::trusts('42638','52874').
0.1::trusts('30102','30098').
0.19::trusts('52874','42638').
0.1::trusts('49100','60062').
0.19::trusts('45769','49100').
0.1::trusts('55152','56557').

person('33087').
person('55152').
person('57910').
person('53487').
person('50271').
person('51670').
person('20988').
person('45769').
person('49737').
person('56255').
person('30102').
person('59819').
person('52874').
person('30098').
person('42638').
person('60062').
person('49100').
person('56557').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('33087')).
query(buys('55152')).
query(buys('57910')).
query(buys('53487')).
query(buys('50271')).
query(buys('51670')).
query(buys('20988')).
query(buys('45769')).
query(buys('49737')).
query(buys('56255')).
query(buys('30102')).
query(buys('59819')).
query(buys('52874')).
query(buys('30098')).
query(buys('42638')).
query(buys('60062')).
query(buys('49100')).
query(buys('56557')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('8532','7246').
0.19::trusts('7246','8532').
0.271::trusts('7934','8532').
0.19::trusts('13128','8532').
0.3439::trusts('13128','7934').
0.1::trusts('6990','7934').
0.19::trusts('4607','7934').
0.40951::trusts('7934','13128').
0.19::trusts('10291','13128').
0.3439::trusts('1227','13128').
0.19::trusts('8532','13128').
0.1::trusts('16816','13128').
0.1::trusts('57637','13128').
0.1::trusts('4607','6990').
0.1::trusts('52869','6990').
0.19::trusts('7934','4607').
0.1::trusts('6990','4607').
0.1::trusts('17718','4607').
0.271::trusts('13128','1227').
0.19::trusts('10291','1227').
0.19::trusts('5784','1227').
0.1::trusts('13128','57637').
0.1::trusts('16816','57637').
0.271::trusts('7934','17718').
0.1::trusts('6990','17718').
0.1::trusts('4607','17718').
0.1::trusts('5784','39366').
0.1::trusts('39366','5784').
0.1::trusts('1227','5784').
0.19::trusts('56314','5784').
0.271::trusts('10291','5764').
0.1::trusts('5784','769').
0.1::trusts('39366','24286').

person('7246').
person('8532').
person('7934').
person('13128').
person('6990').
person('4607').
person('10291').
person('1227').
person('16816').
person('57637').
person('52869').
person('17718').
person('39366').
person('5784').
person('5764').
person('769').
person('56314').
person('24286').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7246')).
query(buys('8532')).
query(buys('7934')).
query(buys('13128')).
query(buys('6990')).
query(buys('4607')).
query(buys('10291')).
query(buys('1227')).
query(buys('16816')).
query(buys('57637')).
query(buys('52869')).
query(buys('17718')).
query(buys('39366')).
query(buys('5784')).
query(buys('5764')).
query(buys('769')).
query(buys('56314')).
query(buys('24286')).

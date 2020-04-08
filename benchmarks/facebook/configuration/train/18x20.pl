10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2755','4634').
0.19::trusts('2375','4634').
0.1::trusts('5851','4634').
0.3439::trusts('4634','2755').
0.997781468765538::trusts('664','2755').
0.468559::trusts('4634','2375').
0.1::trusts('5981','2375').
0.271::trusts('4634','5851').
0.19::trusts('7279','5851').
0.19::trusts('4634','664').
0.991272036431912::trusts('2755','664').
0.5217031::trusts('4997','664').
0.1::trusts('657','664').
0.3439::trusts('6064','7351').
0.19::trusts('8392','7351').
0.3439::trusts('7351','6064').
0.1::trusts('4997','6064').
0.19::trusts('7351','8392').
0.19::trusts('6064','4997').
0.3439::trusts('664','4997').
0.271::trusts('1174','4997').
0.40951::trusts('4997','1174').
0.1::trusts('6638','1174').
0.1::trusts('2755','4717').
0.19::trusts('664','657').
0.271::trusts('659','657').
0.1::trusts('657','659').
0.1::trusts('2755','4720').
0.1::trusts('1174','6638').
0.1::trusts('13537','6638').

person('4634').
person('2755').
person('2375').
person('5851').
person('664').
person('5981').
person('7279').
person('7351').
person('6064').
person('8392').
person('4997').
person('1174').
person('4717').
person('657').
person('659').
person('4720').
person('6638').
person('13537').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4634')).
query(buys('2755')).
query(buys('2375')).
query(buys('5851')).
query(buys('664')).
query(buys('5981')).
query(buys('7279')).
query(buys('7351')).
query(buys('6064')).
query(buys('8392')).
query(buys('4997')).
query(buys('1174')).
query(buys('4717')).
query(buys('657')).
query(buys('659')).
query(buys('4720')).
query(buys('6638')).
query(buys('13537')).

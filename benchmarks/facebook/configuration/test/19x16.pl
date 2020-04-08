10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('16617','32875').
0.1::trusts('32875','16617').
0.920233556923127::trusts('32874','16617').
0.3439::trusts('691','16617').
0.468559::trusts('29560','16617').
0.271::trusts('16595','16617').
0.19::trusts('32874','5084').
0.5217031::trusts('35241','5084').
0.19::trusts('5084','32874').
0.1::trusts('29560','32874').
0.77123207545039::trusts('16617','32874').
0.40951::trusts('5084','35241').
0.468559::trusts('16617','691').
0.1::trusts('32925','691').
0.40951::trusts('3470','691').
0.1::trusts('691','32925').
0.468559::trusts('691','3470').
0.68618940391::trusts('5829','3470').
0.5217031::trusts('4942','27161').
0.19::trusts('27161','4942').
0.981751996368599::trusts('29560','4942').
0.271::trusts('26094','4942').
0.3439::trusts('16617','16595').
0.833228183003334::trusts('3470','5829').
0.1::trusts('1694','5829').
0.1::trusts('1691','5829').
0.19::trusts('4942','26094').
0.1::trusts('5829','1694').
0.1::trusts('35241','56618').
0.1::trusts('5084','31548').
0.1::trusts('32875','26025').

person('32875').
person('16617').
person('5084').
person('32874').
person('35241').
person('29560').
person('691').
person('32925').
person('3470').
person('27161').
person('4942').
person('16595').
person('5829').
person('26094').
person('1694').
person('1691').
person('56618').
person('31548').
person('26025').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('32875')).
query(buys('16617')).
query(buys('5084')).
query(buys('32874')).
query(buys('35241')).
query(buys('29560')).
query(buys('691')).
query(buys('32925')).
query(buys('3470')).
query(buys('27161')).
query(buys('4942')).
query(buys('16595')).
query(buys('5829')).
query(buys('26094')).
query(buys('1694')).
query(buys('1691')).
query(buys('56618')).
query(buys('31548')).
query(buys('26025')).

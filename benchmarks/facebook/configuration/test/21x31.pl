10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19822','16248').
0.271::trusts('27183','16248').
0.1::trusts('19761','16248').
0.271::trusts('6434','16248').
0.19::trusts('30553','16248').
0.1::trusts('6195','16248').
0.1::trusts('34167','16248').
0.271::trusts('16248','19822').
0.271::trusts('16248','27183').
0.7458134171671::trusts('16248','6434').
0.19::trusts('34167','6434').
0.612579511::trusts('16248','30553').
0.1::trusts('19761','30553').
0.1::trusts('16248','6195').
0.19::trusts('16248','34167').
0.19::trusts('6169','34167').
0.1::trusts('6434','34167').
0.1::trusts('39186','34167').
0.1::trusts('34167','6169').
0.1::trusts('19761','25963').
0.1::trusts('39186','4322').
0.1::trusts('34167','39186').
0.19::trusts('50471','39186').
0.1::trusts('19761','16050').
0.271::trusts('16049','16050').
0.1::trusts('16050','16049').
0.1::trusts('39186','50471').
0.1::trusts('6434','9087').
0.1::trusts('19761','34314').
0.19::trusts('16248','34165').
0.1::trusts('16248','6218').
0.1::trusts('16248','30974').
0.1::trusts('6195','58188').

person('16248').
person('19822').
person('27183').
person('19761').
person('6434').
person('30553').
person('6195').
person('34167').
person('6169').
person('25963').
person('4322').
person('39186').
person('16050').
person('16049').
person('50471').
person('9087').
person('34314').
person('34165').
person('6218').
person('30974').
person('58188').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16248')).
query(buys('19822')).
query(buys('27183')).
query(buys('19761')).
query(buys('6434')).
query(buys('30553')).
query(buys('6195')).
query(buys('34167')).
query(buys('6169')).
query(buys('25963')).
query(buys('4322')).
query(buys('39186')).
query(buys('16050')).
query(buys('16049')).
query(buys('50471')).
query(buys('9087')).
query(buys('34314')).
query(buys('34165')).
query(buys('6218')).
query(buys('30974')).
query(buys('58188')).

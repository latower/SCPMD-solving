10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('8865','4963').
0.19::trusts('2515','4963').
0.19::trusts('199','4963').
0.1::trusts('4963','8865').
0.19::trusts('12699','8865').
0.1::trusts('11220','8865').
0.19::trusts('4963','2515').
0.6513215599::trusts('9119','2515').
0.1::trusts('4963','199').
0.3439::trusts('182','199').
0.19::trusts('203','199').
0.1::trusts('9119','12364').
0.1::trusts('12364','9119').
0.468559::trusts('2515','9119').
0.1::trusts('18574','9119').
0.1::trusts('9119','18574').
0.1::trusts('8982','18574').
0.1::trusts('57003','18574').
0.1::trusts('8865','12699').
0.271::trusts('199','182').
0.1::trusts('12713','182').
0.612579511::trusts('203','182').
0.3439::trusts('199','203').
0.19::trusts('12713','203').
0.56953279::trusts('182','203').
0.3439::trusts('182','12713').
0.19::trusts('203','12713').
0.271::trusts('2515','357').
0.1::trusts('199','357').
0.40951::trusts('2685','357').
0.1::trusts('9119','2685').
0.1::trusts('182','2685').

person('4963').
person('8865').
person('2515').
person('199').
person('12364').
person('9119').
person('18574').
person('12699').
person('11220').
person('8982').
person('57003').
person('182').
person('203').
person('12713').
person('357').
person('2685').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4963')).
query(buys('8865')).
query(buys('2515')).
query(buys('199')).
query(buys('12364')).
query(buys('9119')).
query(buys('18574')).
query(buys('12699')).
query(buys('11220')).
query(buys('8982')).
query(buys('57003')).
query(buys('182')).
query(buys('203')).
query(buys('12713')).
query(buys('357')).
query(buys('2685')).

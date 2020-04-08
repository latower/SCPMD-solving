10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('3534','5318').
0.1::trusts('5328','5318').
0.19::trusts('5318','3534').
0.1::trusts('18507','3534').
0.1::trusts('13283','3534').
0.19::trusts('18513','3534').
0.1::trusts('10765','3534').
0.1::trusts('5318','5328').
0.1::trusts('3534','18507').
0.1::trusts('13283','18507').
0.1::trusts('5318','13283').
0.1::trusts('18507','13283').
0.19::trusts('3534','18513').
0.1::trusts('3534','10765').
0.19::trusts('23954','10765').
0.40951::trusts('12129','10765').
0.1::trusts('28947','10765').
0.19::trusts('10765','23954').
0.271::trusts('41498','23954').
0.19::trusts('23954','41498').
0.1::trusts('22790','12129').
0.1::trusts('28947','12129').
0.271::trusts('10765','28947').
0.1::trusts('5318','17349').
0.1::trusts('5318','18039').
0.1::trusts('41498','44066').
0.1::trusts('41498','44065').

person('5318').
person('3534').
person('5328').
person('18507').
person('13283').
person('18513').
person('10765').
person('23954').
person('41498').
person('12129').
person('28947').
person('17349').
person('22790').
person('18039').
person('44066').
person('44065').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5318')).
query(buys('3534')).
query(buys('5328')).
query(buys('18507')).
query(buys('13283')).
query(buys('18513')).
query(buys('10765')).
query(buys('23954')).
query(buys('41498')).
query(buys('12129')).
query(buys('28947')).
query(buys('17349')).
query(buys('22790')).
query(buys('18039')).
query(buys('44066')).
query(buys('44065')).

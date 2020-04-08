10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('22894','28445').
0.1::trusts('28444','28445').
0.19::trusts('28445','22894').
0.1::trusts('28445','28444').
0.1::trusts('24338','28444').
0.1::trusts('42316','2716').
0.890581010868488::trusts('24590','2716').
0.911370618803475::trusts('2716','24590').
0.19::trusts('4220','24590').
0.1::trusts('10045','24590').
0.468559::trusts('10045','4220').
0.19::trusts('24590','4220').
0.271::trusts('13303','4220').
0.19::trusts('24338','4220').
0.1::trusts('24586','4220').
0.7458134171671::trusts('4220','10045').
0.1::trusts('24590','10045').
0.3439::trusts('4220','13303').
0.1::trusts('10045','13303').
0.19::trusts('4220','24338').
0.1::trusts('28444','24338').
0.1::trusts('4220','24586').
0.5217031::trusts('50595','24586').
0.19::trusts('24588','24586').
0.1::trusts('4220','24588').
0.19::trusts('24586','24588').
0.1::trusts('42316','27248').
0.19::trusts('42316','37289').
0.1::trusts('2716','37289').
0.1::trusts('18075','20543').
0.1::trusts('10045','18075').
0.19::trusts('20543','18075').

person('28445').
person('22894').
person('28444').
person('2716').
person('42316').
person('24590').
person('4220').
person('10045').
person('13303').
person('24338').
person('24586').
person('50595').
person('24588').
person('27248').
person('37289').
person('20543').
person('18075').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('28445')).
query(buys('22894')).
query(buys('28444')).
query(buys('2716')).
query(buys('42316')).
query(buys('24590')).
query(buys('4220')).
query(buys('10045')).
query(buys('13303')).
query(buys('24338')).
query(buys('24586')).
query(buys('50595')).
query(buys('24588')).
query(buys('27248')).
query(buys('37289')).
query(buys('20543')).
query(buys('18075')).

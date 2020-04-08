10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5581','30548').
0.1::trusts('42961','30548').
0.1::trusts('4400','30548').
0.1::trusts('30548','5581').
0.468559::trusts('4598','5581').
0.1::trusts('7670','5581').
0.1::trusts('8887','5581').
0.468559::trusts('16866','5581').
0.1::trusts('30548','42961').
0.849905364703001::trusts('16866','540').
0.717570463519::trusts('26018','540').
0.920233556923127::trusts('540','16866').
0.56953279::trusts('5581','16866').
0.1::trusts('7670','16866').
0.1::trusts('22838','16866').
0.468559::trusts('28644','16866').
0.1::trusts('5581','7670').
0.1::trusts('13299','7670').
0.19::trusts('16866','7670').
0.1::trusts('5581','8887').
0.271::trusts('4598','8887').
0.1::trusts('8893','8887').
0.1::trusts('7670','13299').
0.1::trusts('3577','13299').
0.271::trusts('28644','13299').
0.40951::trusts('22838','18173').
0.56953279::trusts('18173','22838').
0.1::trusts('16866','22838').
0.271::trusts('13299','3577').
0.1::trusts('28644','3577').
0.3439::trusts('13299','28644').
0.19::trusts('3577','28644').
0.3439::trusts('16866','28644').
0.1::trusts('8887','24308').
0.19::trusts('5581','17567').
0.19::trusts('17567','62772').
0.1::trusts('4598','8889').

person('30548').
person('5581').
person('42961').
person('4400').
person('540').
person('16866').
person('26018').
person('4598').
person('7670').
person('8887').
person('13299').
person('8893').
person('18173').
person('22838').
person('3577').
person('28644').
person('24308').
person('17567').
person('62772').
person('8889').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30548')).
query(buys('5581')).
query(buys('42961')).
query(buys('4400')).
query(buys('540')).
query(buys('16866')).
query(buys('26018')).
query(buys('4598')).
query(buys('7670')).
query(buys('8887')).
query(buys('13299')).
query(buys('8893')).
query(buys('18173')).
query(buys('22838')).
query(buys('3577')).
query(buys('28644')).
query(buys('24308')).
query(buys('17567')).
query(buys('62772')).
query(buys('8889')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('9952','5594').
0.1::trusts('3936','5594').
0.1::trusts('2345','5594').
0.19::trusts('5594','9952').
0.468559::trusts('30017','9952').
0.1::trusts('5594','3936').
0.19::trusts('15440','3936').
0.1::trusts('5594','2345').
0.271::trusts('45256','2345').
0.1::trusts('19702','2345').
0.271::trusts('15440','7948').
0.271::trusts('7948','15440').
0.1::trusts('3936','15440').
0.68618940391::trusts('28867','15440').
0.19::trusts('26958','15440').
0.56953279::trusts('9952','30017').
0.3439::trusts('30410','30017').
0.19::trusts('2345','19702').
0.3439::trusts('30017','30410').
0.56953279::trusts('15440','28867').
0.19::trusts('25749','28867').
0.1::trusts('28867','25749').
0.19::trusts('15440','26958').
0.1::trusts('30017','30408').
0.1::trusts('5594','3344').
0.1::trusts('15440','50323').
0.1::trusts('19702','60032').
0.1::trusts('28867','35239').
0.1::trusts('5594','31640').
0.1::trusts('5594','31646').

person('5594').
person('9952').
person('3936').
person('2345').
person('7948').
person('15440').
person('30017').
person('45256').
person('19702').
person('30410').
person('28867').
person('25749').
person('26958').
person('30408').
person('3344').
person('50323').
person('60032').
person('35239').
person('31640').
person('31646').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5594')).
query(buys('9952')).
query(buys('3936')).
query(buys('2345')).
query(buys('7948')).
query(buys('15440')).
query(buys('30017')).
query(buys('45256')).
query(buys('19702')).
query(buys('30410')).
query(buys('28867')).
query(buys('25749')).
query(buys('26958')).
query(buys('30408')).
query(buys('3344')).
query(buys('50323')).
query(buys('60032')).
query(buys('35239')).
query(buys('31640')).
query(buys('31646')).

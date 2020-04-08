10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('3972','3976').
0.271::trusts('17754','3976').
0.1::trusts('2352','3976').
0.271::trusts('3976','3972').
0.1::trusts('17754','3972').
0.19::trusts('4006','3972').
0.40951::trusts('4010','3972').
0.19::trusts('4011','3972').
0.1::trusts('3995','3972').
0.3439::trusts('3976','17754').
0.19::trusts('3972','17754').
0.1::trusts('17761','17754').
0.1::trusts('3976','2352').
0.1::trusts('3976','4006').
0.1::trusts('3972','4006').
0.1::trusts('17761','4006').
0.3439::trusts('3972','4010').
0.19::trusts('12213','4010').
0.19::trusts('3972','4011').
0.271::trusts('36768','4011').
0.1::trusts('3972','3995').
0.19::trusts('17754','17761').
0.1::trusts('4006','17761').
0.3439::trusts('31463','17761').
0.1::trusts('4011','36768').
0.56953279::trusts('17761','31463').
0.19::trusts('31948','31463').
0.271::trusts('31463','31948').
0.1::trusts('31954','31948').
0.1::trusts('17754','48312').
0.1::trusts('3976','17748').
0.1::trusts('3976','17758').
0.1::trusts('3976','17762').

person('3976').
person('3972').
person('17754').
person('2352').
person('4006').
person('4010').
person('4011').
person('3995').
person('17761').
person('12213').
person('36768').
person('31463').
person('31948').
person('48312').
person('17748').
person('31954').
person('17758').
person('17762').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3976')).
query(buys('3972')).
query(buys('17754')).
query(buys('2352')).
query(buys('4006')).
query(buys('4010')).
query(buys('4011')).
query(buys('3995')).
query(buys('17761')).
query(buys('12213')).
query(buys('36768')).
query(buys('31463')).
query(buys('31948')).
query(buys('48312')).
query(buys('17748')).
query(buys('31954')).
query(buys('17758')).
query(buys('17762')).

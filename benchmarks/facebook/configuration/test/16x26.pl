10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('11347','17959').
0.19::trusts('17959','11347').
0.1::trusts('54163','11347').
0.1::trusts('38536','11347').
0.1::trusts('17474','11347').
0.1::trusts('37521','11347').
0.1::trusts('11347','17474').
0.1::trusts('26888','17474').
0.19::trusts('22012','17474').
0.1::trusts('63890','17474').
0.1::trusts('11347','37521').
0.19::trusts('35766','26888').
0.271::trusts('26888','35766').
0.19::trusts('22455','35766').
0.19::trusts('17474','22012').
0.1::trusts('17474','63890').
0.19::trusts('35766','22455').
0.1::trusts('46176','22455').
0.1::trusts('54163','56689').
0.1::trusts('11347','18976').
0.1::trusts('43392','18976').
0.19::trusts('18976','43392').
0.1::trusts('11347','54167').

person('17959').
person('11347').
person('54163').
person('38536').
person('17474').
person('37521').
person('26888').
person('35766').
person('22012').
person('63890').
person('22455').
person('46176').
person('56689').
person('18976').
person('43392').
person('54167').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17959')).
query(buys('11347')).
query(buys('54163')).
query(buys('38536')).
query(buys('17474')).
query(buys('37521')).
query(buys('26888')).
query(buys('35766')).
query(buys('22012')).
query(buys('63890')).
query(buys('22455')).
query(buys('46176')).
query(buys('56689')).
query(buys('18976')).
query(buys('43392')).
query(buys('54167')).

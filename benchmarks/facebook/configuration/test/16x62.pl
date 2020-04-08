10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21135','3454').
0.3439::trusts('22045','3454').
0.56953279::trusts('3254','3454').
0.999226445989855::trusts('24155','3454').
0.612579511::trusts('24064','3454').
0.271::trusts('24163','3454').
0.468559::trusts('3454','22045').
0.94185026299696::trusts('24155','22045').
0.999588901683294::trusts('21135','24064').
0.5217031::trusts('3454','24064').
0.56953279::trusts('3254','24064').
0.1::trusts('34427','24064').
0.3439::trusts('3454','24163').
0.1::trusts('49886','24163').
0.1::trusts('21135','30510').
0.271::trusts('24064','34427').
0.19::trusts('24163','49886').
0.1::trusts('24064','37905').
0.1::trusts('21135','33853').
0.271::trusts('24163','31629').
0.1::trusts('21135','10362').
0.19::trusts('49886','31628').
0.1::trusts('49886','51464').

person('3454').
person('21135').
person('22045').
person('3254').
person('24155').
person('24064').
person('24163').
person('30510').
person('34427').
person('49886').
person('37905').
person('33853').
person('31629').
person('10362').
person('31628').
person('51464').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3454')).
query(buys('21135')).
query(buys('22045')).
query(buys('3254')).
query(buys('24155')).
query(buys('24064')).
query(buys('24163')).
query(buys('30510')).
query(buys('34427')).
query(buys('49886')).
query(buys('37905')).
query(buys('33853')).
query(buys('31629')).
query(buys('10362')).
query(buys('31628')).
query(buys('51464')).

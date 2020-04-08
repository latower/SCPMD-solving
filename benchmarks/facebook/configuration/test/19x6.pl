10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('3277','1066').
0.468559::trusts('14826','1066').
0.271::trusts('14826','3277').
0.5217031::trusts('2423','3277').
0.271::trusts('1066','14826').
0.19::trusts('3277','14826').
0.878423345409431::trusts('24784','14826').
0.5217031::trusts('3277','2423').
0.19::trusts('20728','2423').
0.1::trusts('46715','2423').
0.814697981114816::trusts('14826','24784').
0.19::trusts('14824','24784').
0.1::trusts('11580','24784').
0.1::trusts('24859','24784').
0.468559::trusts('20728','17523').
0.1::trusts('19264','20728').
0.5217031::trusts('17523','20728').
0.19::trusts('2423','20728').
0.1::trusts('42735','20728').
0.1::trusts('2423','46715').
0.19::trusts('24784','14824').
0.1::trusts('20728','42735').
0.19::trusts('40790','42735').
0.1::trusts('24784','24859').
0.19::trusts('42735','40790').
0.271::trusts('59982','40790').
0.271::trusts('50623','40790').
0.19::trusts('40790','59982').
0.271::trusts('40790','50623').
0.271::trusts('17523','19218').
0.1::trusts('49701','19218').
0.1::trusts('49701','49340').

person('1066').
person('3277').
person('14826').
person('2423').
person('24784').
person('17523').
person('20728').
person('46715').
person('14824').
person('19264').
person('42735').
person('11580').
person('24859').
person('40790').
person('59982').
person('50623').
person('19218').
person('49701').
person('49340').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1066')).
query(buys('3277')).
query(buys('14826')).
query(buys('2423')).
query(buys('24784')).
query(buys('17523')).
query(buys('20728')).
query(buys('46715')).
query(buys('14824')).
query(buys('19264')).
query(buys('42735')).
query(buys('11580')).
query(buys('24859')).
query(buys('40790')).
query(buys('59982')).
query(buys('50623')).
query(buys('19218')).
query(buys('49701')).
query(buys('49340')).

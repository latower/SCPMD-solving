10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('24068','21381').
0.19::trusts('21383','21381').
0.1::trusts('56671','21381').
0.1::trusts('21381','24068').
0.19::trusts('21381','21383').
0.1::trusts('24154','21383').
0.1::trusts('21380','21383').
0.19::trusts('34083','21383').
0.1::trusts('18696','21383').
0.1::trusts('63856','21383').
0.1::trusts('56671','21383').
0.19::trusts('21381','56671').
0.1::trusts('21383','56671').
0.1::trusts('21383','24154').
0.271::trusts('34083','24154').
0.1::trusts('24154','34083').
0.19::trusts('21383','34083').
0.19::trusts('21383','21380').
0.19::trusts('22247','21380').
0.1::trusts('27410','21380').
0.40951::trusts('21380','22247').
0.19::trusts('21383','18696').
0.1::trusts('24154','34116').
0.1::trusts('4808','34116').
0.1::trusts('21383','34081').
0.1::trusts('21383','52160').

person('21381').
person('24068').
person('21383').
person('56671').
person('24154').
person('34083').
person('21380').
person('22247').
person('27410').
person('18696').
person('63856').
person('34116').
person('4808').
person('34081').
person('52160').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21381')).
query(buys('24068')).
query(buys('21383')).
query(buys('56671')).
query(buys('24154')).
query(buys('34083')).
query(buys('21380')).
query(buys('22247')).
query(buys('27410')).
query(buys('18696')).
query(buys('63856')).
query(buys('34116')).
query(buys('4808')).
query(buys('34081')).
query(buys('52160')).

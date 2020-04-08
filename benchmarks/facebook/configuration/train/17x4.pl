10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('9139','811').
0.1::trusts('28940','811').
0.1::trusts('13028','811').
0.271::trusts('13026','811').
0.19::trusts('8650','811').
0.19::trusts('811','9139').
0.56953279::trusts('21803','9139').
0.271::trusts('9428','9139').
0.1::trusts('9451','9139').
0.1::trusts('811','28940').
0.19::trusts('38442','28940').
0.1::trusts('811','8650').
0.468559::trusts('9139','21803').
0.928210201230815::trusts('9435','21803').
0.271::trusts('33362','21803').
0.1::trusts('9139','9428').
0.1::trusts('9139','9451').
0.19::trusts('9139','9435').
0.271::trusts('21803','9435').
0.1::trusts('39128','9435').
0.19::trusts('21803','33362').
0.271::trusts('33163','33362').
0.1::trusts('9435','39128').
0.271::trusts('33362','33163').
0.19::trusts('28940','38442').
0.1::trusts('13028','16563').
0.1::trusts('9139','9437').
0.19::trusts('39128','57395').

person('811').
person('9139').
person('28940').
person('13028').
person('13026').
person('8650').
person('21803').
person('9428').
person('9451').
person('9435').
person('33362').
person('39128').
person('33163').
person('38442').
person('16563').
person('9437').
person('57395').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('811')).
query(buys('9139')).
query(buys('28940')).
query(buys('13028')).
query(buys('13026')).
query(buys('8650')).
query(buys('21803')).
query(buys('9428')).
query(buys('9451')).
query(buys('9435')).
query(buys('33362')).
query(buys('39128')).
query(buys('33163')).
query(buys('38442')).
query(buys('16563')).
query(buys('9437')).
query(buys('57395')).

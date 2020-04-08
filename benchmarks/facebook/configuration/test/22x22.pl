10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('4424','2542').
0.1::trusts('2541','2542').
0.271::trusts('2542','4424').
0.1::trusts('8385','4424').
0.56953279::trusts('8376','4424').
0.271::trusts('8386','4424').
0.56953279::trusts('3265','4424').
0.1::trusts('7295','4424').
0.1::trusts('2542','2541').
0.19::trusts('4424','8385').
0.19::trusts('7295','8385').
0.77123207545039::trusts('4424','8376').
0.5217031::trusts('18837','8376').
0.5217031::trusts('2183','8376').
0.1::trusts('22924','8376').
0.77123207545039::trusts('8386','8376').
0.19::trusts('4424','8386').
0.794108867905351::trusts('8376','8386').
0.271::trusts('18837','8386').
0.717570463519::trusts('4424','3265').
0.468559::trusts('8376','18837').
0.1::trusts('40956','18837').
0.3439::trusts('8386','18837').
0.19::trusts('40957','18837').
0.6513215599::trusts('8376','2183').
0.1::trusts('22924','2183').
0.271::trusts('33116','2183').
0.1::trusts('31819','2183').
0.271::trusts('8376','22924').
0.56953279::trusts('2183','22924').
0.1::trusts('33754','22924').
0.1::trusts('33113','22924').
0.19::trusts('33116','22924').
0.1::trusts('18837','40956').
0.1::trusts('13301','40956').
0.1::trusts('40956','13301').
0.19::trusts('18837','40957').
0.3439::trusts('2183','33116').
0.19::trusts('22924','33116').
0.3439::trusts('2183','31819').
0.1::trusts('2183','33113').
0.1::trusts('22924','33113').
0.19::trusts('8376','28871').
0.19::trusts('13301','49215').
0.1::trusts('3265','3268').
0.1::trusts('13301','44858').

person('2542').
person('4424').
person('2541').
person('8385').
person('8376').
person('8386').
person('3265').
person('7295').
person('18837').
person('2183').
person('22924').
person('40956').
person('13301').
person('40957').
person('33116').
person('31819').
person('33754').
person('33113').
person('28871').
person('49215').
person('3268').
person('44858').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2542')).
query(buys('4424')).
query(buys('2541')).
query(buys('8385')).
query(buys('8376')).
query(buys('8386')).
query(buys('3265')).
query(buys('7295')).
query(buys('18837')).
query(buys('2183')).
query(buys('22924')).
query(buys('40956')).
query(buys('13301')).
query(buys('40957')).
query(buys('33116')).
query(buys('31819')).
query(buys('33754')).
query(buys('33113')).
query(buys('28871')).
query(buys('49215')).
query(buys('3268')).
query(buys('44858')).

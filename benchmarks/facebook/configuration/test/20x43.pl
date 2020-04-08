10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12753','17430').
0.19::trusts('926','17430').
0.1::trusts('31179','17430').
0.1::trusts('17357','17430').
0.1::trusts('19968','17430').
0.271::trusts('17347','17430').
0.19::trusts('12753','926').
0.271::trusts('17430','926').
0.1::trusts('39893','926').
0.1::trusts('17430','31179').
0.1::trusts('33563','31179').
0.1::trusts('17430','17357').
0.1::trusts('19968','17357').
0.1::trusts('17347','17357').
0.19::trusts('9998','17357').
0.1::trusts('17357','19968').
0.1::trusts('38133','19968').
0.1::trusts('17430','17347').
0.1::trusts('17357','17347').
0.19::trusts('13019','17347').
0.1::trusts('926','39893').
0.19::trusts('6708','39893').
0.1::trusts('17357','9998').
0.19::trusts('19968','38133').
0.3439::trusts('17347','13019').
0.19::trusts('39893','6708').
0.1::trusts('9998','18800').
0.3439::trusts('13740','18800').
0.271::trusts('33230','18800').
0.1::trusts('18800','13740').
0.1::trusts('33230','13740').
0.1::trusts('13739','26322').
0.1::trusts('16371','26322').
0.1::trusts('9998','26322').
0.1::trusts('13740','26322').
0.1::trusts('12753','17128').

person('17430').
person('12753').
person('926').
person('31179').
person('17357').
person('19968').
person('17347').
person('39893').
person('33563').
person('9998').
person('38133').
person('13019').
person('6708').
person('18800').
person('13740').
person('33230').
person('26322').
person('13739').
person('16371').
person('17128').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17430')).
query(buys('12753')).
query(buys('926')).
query(buys('31179')).
query(buys('17357')).
query(buys('19968')).
query(buys('17347')).
query(buys('39893')).
query(buys('33563')).
query(buys('9998')).
query(buys('38133')).
query(buys('13019')).
query(buys('6708')).
query(buys('18800')).
query(buys('13740')).
query(buys('33230')).
query(buys('26322')).
query(buys('13739')).
query(buys('16371')).
query(buys('17128')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('22056','39887').
0.1::trusts('39384','39887').
0.3439::trusts('39887','22056').
0.1::trusts('61838','22056').
0.3439::trusts('46218','22056').
0.1::trusts('53357','22056').
0.1::trusts('39383','39384').
0.1::trusts('47920','39384').
0.19::trusts('46218','46213').
0.1::trusts('38403','46213').
0.19::trusts('46213','46218').
0.271::trusts('22056','46218').
0.19::trusts('41742','46218').
0.19::trusts('46213','38403').
0.1::trusts('22056','61838').
0.1::trusts('22056','53357').
0.19::trusts('46218','41742').
0.1::trusts('39384','39383').
0.3439::trusts('39379','39383').
0.1::trusts('39381','39383').
0.271::trusts('39383','39379').
0.1::trusts('39887','39381').
0.1::trusts('39383','39381').
0.1::trusts('39384','39381').
0.1::trusts('47920','39381').
0.1::trusts('33277','39381').
0.1::trusts('38403','51873').
0.1::trusts('39381','33277').
0.1::trusts('39379','39382').
0.1::trusts('38403','51874').
0.1::trusts('39383','42703').
0.1::trusts('47920','60181').

person('39887').
person('22056').
person('39384').
person('46213').
person('46218').
person('38403').
person('61838').
person('53357').
person('41742').
person('39383').
person('39379').
person('39381').
person('51873').
person('47920').
person('33277').
person('39382').
person('51874').
person('42703').
person('60181').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('39887')).
query(buys('22056')).
query(buys('39384')).
query(buys('46213')).
query(buys('46218')).
query(buys('38403')).
query(buys('61838')).
query(buys('53357')).
query(buys('41742')).
query(buys('39383')).
query(buys('39379')).
query(buys('39381')).
query(buys('51873')).
query(buys('47920')).
query(buys('33277')).
query(buys('39382')).
query(buys('51874')).
query(buys('42703')).
query(buys('60181')).

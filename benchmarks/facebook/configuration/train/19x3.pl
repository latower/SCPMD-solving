10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('27979','6930').
0.5217031::trusts('8928','6930').
0.1::trusts('35021','6930').
0.271::trusts('10094','6930').
0.5217031::trusts('47082','6930').
0.19::trusts('11311','6930').
0.1::trusts('6460','6930').
0.271::trusts('6930','27979').
0.1::trusts('28771','27979').
0.3439::trusts('6930','8928').
0.1::trusts('31425','8928').
0.19::trusts('6930','35021').
0.271::trusts('6930','10094').
0.6513215599::trusts('6930','47082').
0.271::trusts('50944','47082').
0.1::trusts('6930','6460').
0.1::trusts('58063','6460').
0.1::trusts('53340','6460').
0.271::trusts('27979','28771').
0.1::trusts('38421','28771').
0.1::trusts('8928','31425').
0.40951::trusts('47082','50944').
0.19::trusts('23207','50944').
0.1::trusts('31383','50944').
0.1::trusts('6460','58063').
0.19::trusts('50944','31383').
0.19::trusts('50944','18505').
0.5217031::trusts('23207','18505').
0.1::trusts('23207','22844').
0.1::trusts('47082','50945').

person('6930').
person('27979').
person('8928').
person('35021').
person('10094').
person('47082').
person('11311').
person('6460').
person('28771').
person('31425').
person('50944').
person('58063').
person('53340').
person('23207').
person('31383').
person('38421').
person('18505').
person('22844').
person('50945').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6930')).
query(buys('27979')).
query(buys('8928')).
query(buys('35021')).
query(buys('10094')).
query(buys('47082')).
query(buys('11311')).
query(buys('6460')).
query(buys('28771')).
query(buys('31425')).
query(buys('50944')).
query(buys('58063')).
query(buys('53340')).
query(buys('23207')).
query(buys('31383')).
query(buys('38421')).
query(buys('18505')).
query(buys('22844')).
query(buys('50945')).

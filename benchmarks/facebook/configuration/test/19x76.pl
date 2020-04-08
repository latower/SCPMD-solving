10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('23615','20637').
0.19::trusts('32753','20637').
0.1::trusts('32752','20637').
0.1::trusts('20637','32753').
0.40951::trusts('23615','32753').
0.19::trusts('32752','32753').
0.19::trusts('32753','32752').
0.1::trusts('32751','32752').
0.1::trusts('51840','32752').
0.1::trusts('7885','32752').
0.1::trusts('13404','46492').
0.1::trusts('51113','46492').
0.1::trusts('46492','13404').
0.1::trusts('23615','13404').
0.1::trusts('7885','13404').
0.1::trusts('23615','32751').
0.1::trusts('32752','32751').
0.1::trusts('32752','51840').
0.19::trusts('31924','51840').
0.1::trusts('32752','7885').
0.1::trusts('13404','7885').
0.19::trusts('35017','7885').
0.1::trusts('51840','31924').
0.19::trusts('13592','31924').
0.1::trusts('32824','31924').
0.1::trusts('58437','31924').
0.40951::trusts('51839','31924').
0.1::trusts('7885','35017').
0.612579511::trusts('31924','13592').
0.1::trusts('31924','32824').
0.19::trusts('31924','58437').
0.56953279::trusts('31924','51839').
0.1::trusts('31924','20553').
0.1::trusts('35017','12744').
0.1::trusts('7885','12922').
0.1::trusts('35017','12922').

person('20637').
person('23615').
person('32753').
person('32752').
person('46492').
person('13404').
person('51113').
person('32751').
person('51840').
person('7885').
person('31924').
person('35017').
person('13592').
person('32824').
person('58437').
person('51839').
person('20553').
person('12744').
person('12922').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20637')).
query(buys('23615')).
query(buys('32753')).
query(buys('32752')).
query(buys('46492')).
query(buys('13404')).
query(buys('51113')).
query(buys('32751')).
query(buys('51840')).
query(buys('7885')).
query(buys('31924')).
query(buys('35017')).
query(buys('13592')).
query(buys('32824')).
query(buys('58437')).
query(buys('51839')).
query(buys('20553')).
query(buys('12744')).
query(buys('12922')).

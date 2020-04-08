10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('23','2445').
0.19::trusts('2445','23').
0.1::trusts('18491','23').
0.1::trusts('3094','23').
0.271::trusts('1874','23').
0.19::trusts('38517','23').
0.19::trusts('30235','23').
0.1::trusts('23','18491').
0.1::trusts('23','3094').
0.468559::trusts('23','1874').
0.1::trusts('17545','38517').
0.19::trusts('30235','38517').
0.1::trusts('30239','38517').
0.1::trusts('23','30235').
0.1::trusts('17545','30235').
0.271::trusts('38517','30235').
0.1::trusts('30239','30235').
0.1::trusts('38517','17545').
0.1::trusts('17545','30239').
0.1::trusts('38517','30239').
0.1::trusts('42224','30239').
0.1::trusts('30235','22125').
0.19::trusts('18010','22125').
0.19::trusts('22122','22125').
0.3439::trusts('22125','22122').
0.1::trusts('17545','1107').
0.1::trusts('38517','15069').
0.1::trusts('38517','43759').
0.1::trusts('30239','43759').
0.1::trusts('17545','5765').
0.1::trusts('15069','38520').

person('2445').
person('23').
person('18491').
person('3094').
person('1874').
person('38517').
person('30235').
person('17545').
person('30239').
person('22125').
person('18010').
person('22122').
person('42224').
person('1107').
person('15069').
person('43759').
person('5765').
person('38520').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2445')).
query(buys('23')).
query(buys('18491')).
query(buys('3094')).
query(buys('1874')).
query(buys('38517')).
query(buys('30235')).
query(buys('17545')).
query(buys('30239')).
query(buys('22125')).
query(buys('18010')).
query(buys('22122')).
query(buys('42224')).
query(buys('1107')).
query(buys('15069')).
query(buys('43759')).
query(buys('5765')).
query(buys('38520')).

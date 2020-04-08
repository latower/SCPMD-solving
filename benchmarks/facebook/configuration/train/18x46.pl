10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('1837','15689').
0.40951::trusts('15622','15689').
0.19::trusts('28293','15689').
0.1::trusts('28291','15689').
0.271::trusts('15689','15622').
0.1::trusts('42959','15622').
0.40951::trusts('18608','15622').
0.271::trusts('15689','28293').
0.1::trusts('15689','28291').
0.1::trusts('37443','28291').
0.19::trusts('37449','28291').
0.19::trusts('15622','42959').
0.40951::trusts('15622','18608').
0.1::trusts('37449','37443').
0.19::trusts('28291','37449').
0.1::trusts('37443','37449').
0.271::trusts('13369','37449').
0.19::trusts('15622','9064').
0.271::trusts('37449','13369').
0.468559::trusts('15622','43538').
0.271::trusts('54922','43538').
0.1::trusts('43538','54922').
0.1::trusts('15622','56856').
0.19::trusts('15689','28295').
0.19::trusts('15622','56858').
0.1::trusts('37449','54108').
0.1::trusts('59588','54108').

person('15689').
person('1837').
person('15622').
person('28293').
person('28291').
person('42959').
person('18608').
person('37443').
person('37449').
person('9064').
person('13369').
person('43538').
person('54922').
person('56856').
person('28295').
person('56858').
person('54108').
person('59588').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15689')).
query(buys('1837')).
query(buys('15622')).
query(buys('28293')).
query(buys('28291')).
query(buys('42959')).
query(buys('18608')).
query(buys('37443')).
query(buys('37449')).
query(buys('9064')).
query(buys('13369')).
query(buys('43538')).
query(buys('54922')).
query(buys('56856')).
query(buys('28295')).
query(buys('56858')).
query(buys('54108')).
query(buys('59588')).

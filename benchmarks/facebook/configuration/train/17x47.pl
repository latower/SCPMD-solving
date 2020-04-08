10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('6260','4682').
0.1::trusts('7274','4682').
0.19::trusts('7276','4682').
0.19::trusts('4682','6260').
0.1::trusts('7274','6260').
0.19::trusts('4682','7274').
0.1::trusts('6260','7274').
0.1::trusts('7276','7274').
0.19::trusts('4682','7276').
0.1::trusts('7274','7276').
0.19::trusts('15122','7276').
0.3439::trusts('35022','7276').
0.1::trusts('9819','7276').
0.1::trusts('7276','15122').
0.1::trusts('7242','15122').
0.1::trusts('25946','15122').
0.1::trusts('55429','15122').
0.271::trusts('15122','7242').
0.19::trusts('18329','7242').
0.1::trusts('51346','7242').
0.1::trusts('15122','25946').
0.19::trusts('15122','55429').
0.1::trusts('7276','35022').
0.1::trusts('15122','9819').
0.19::trusts('7276','9819').
0.1::trusts('7242','18329').
0.1::trusts('7242','51346').
0.1::trusts('53649','51346').
0.1::trusts('63013','51346').
0.1::trusts('51346','53649').
0.19::trusts('51346','63013').
0.1::trusts('51346','62995').
0.1::trusts('53649','57638').
0.1::trusts('51346','57638').
0.19::trusts('55429','57606').

person('4682').
person('6260').
person('7274').
person('7276').
person('15122').
person('7242').
person('25946').
person('55429').
person('35022').
person('9819').
person('18329').
person('51346').
person('53649').
person('63013').
person('62995').
person('57638').
person('57606').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4682')).
query(buys('6260')).
query(buys('7274')).
query(buys('7276')).
query(buys('15122')).
query(buys('7242')).
query(buys('25946')).
query(buys('55429')).
query(buys('35022')).
query(buys('9819')).
query(buys('18329')).
query(buys('51346')).
query(buys('53649')).
query(buys('63013')).
query(buys('62995')).
query(buys('57638')).
query(buys('57606')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4990','18596').
0.1::trusts('7687','18596').
0.1::trusts('23649','4990').
0.1::trusts('12209','4990').
0.19::trusts('4990','23649').
0.271::trusts('23648','23649').
0.1::trusts('47049','23649').
0.19::trusts('57788','23649').
0.19::trusts('4990','12209').
0.1::trusts('45854','12209').
0.19::trusts('9755','23648').
0.19::trusts('23649','23648').
0.19::trusts('51353','23648').
0.271::trusts('23649','47049').
0.1::trusts('63574','45854').
0.1::trusts('23648','51353').
0.1::trusts('4990','52729').
0.1::trusts('4990','38992').
0.1::trusts('51353','45754').

person('18596').
person('4990').
person('7687').
person('23649').
person('12209').
person('23648').
person('47049').
person('57788').
person('45854').
person('9755').
person('51353').
person('63574').
person('52729').
person('38992').
person('45754').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18596')).
query(buys('4990')).
query(buys('7687')).
query(buys('23649')).
query(buys('12209')).
query(buys('23648')).
query(buys('47049')).
query(buys('57788')).
query(buys('45854')).
query(buys('9755')).
query(buys('51353')).
query(buys('63574')).
query(buys('52729')).
query(buys('38992')).
query(buys('45754')).

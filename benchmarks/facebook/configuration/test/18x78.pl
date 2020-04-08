10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.717570463519::trusts('4149','4139').
0.468559::trusts('12244','4139').
0.19::trusts('19294','4139').
0.7458134171671::trusts('4139','4149').
0.19::trusts('12244','4149').
0.612579511::trusts('19294','4149').
0.1::trusts('30669','4149').
0.1::trusts('28840','4149').
0.40951::trusts('4139','12244').
0.19::trusts('4149','12244').
0.1::trusts('4139','19294').
0.40951::trusts('4149','19294').
0.19::trusts('30669','19294').
0.19::trusts('30671','19294').
0.19::trusts('21673','19294').
0.1::trusts('30673','19294').
0.19::trusts('45874','19294').
0.1::trusts('4149','30669').
0.40951::trusts('19294','30669').
0.3439::trusts('19294','30671').
0.19::trusts('19294','21673').
0.271::trusts('19294','30673').
0.1::trusts('19294','45874').
0.1::trusts('18692','45874').
0.1::trusts('45874','18692').
0.19::trusts('23277','57511').
0.1::trusts('18624','57511').
0.1::trusts('21673','23277').
0.3439::trusts('57511','23277').
0.1::trusts('21673','22179').
0.1::trusts('45874','42995').
0.1::trusts('42995','56211').
0.1::trusts('45874','52392').

person('4139').
person('4149').
person('12244').
person('19294').
person('30669').
person('28840').
person('30671').
person('21673').
person('30673').
person('45874').
person('18692').
person('57511').
person('23277').
person('18624').
person('22179').
person('42995').
person('56211').
person('52392').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4139')).
query(buys('4149')).
query(buys('12244')).
query(buys('19294')).
query(buys('30669')).
query(buys('28840')).
query(buys('30671')).
query(buys('21673')).
query(buys('30673')).
query(buys('45874')).
query(buys('18692')).
query(buys('57511')).
query(buys('23277')).
query(buys('18624')).
query(buys('22179')).
query(buys('42995')).
query(buys('56211')).
query(buys('52392')).

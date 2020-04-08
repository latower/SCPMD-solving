10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('8162','11455').
0.1::trusts('12382','11455').
0.271::trusts('45192','11455').
0.1::trusts('11455','8162').
0.19::trusts('11455','12382').
0.19::trusts('49125','12382').
0.1::trusts('11455','45192').
0.1::trusts('11455','49125').
0.19::trusts('12382','49125').
0.19::trusts('56044','49125').
0.19::trusts('49125','56044').
0.1::trusts('12382','3276').
0.3439::trusts('3278','3276').
0.1::trusts('1423','3276').
0.6513215599::trusts('3276','3278').
0.1::trusts('3276','12389').
0.1::trusts('12382','12391').
0.1::trusts('11455','45191').
0.1::trusts('19097','45191').
0.1::trusts('8162','9492').
0.1::trusts('12382','55511').

person('11455').
person('8162').
person('12382').
person('45192').
person('49125').
person('56044').
person('3276').
person('3278').
person('1423').
person('12389').
person('12391').
person('45191').
person('19097').
person('9492').
person('55511').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11455')).
query(buys('8162')).
query(buys('12382')).
query(buys('45192')).
query(buys('49125')).
query(buys('56044')).
query(buys('3276')).
query(buys('3278')).
query(buys('1423')).
query(buys('12389')).
query(buys('12391')).
query(buys('45191')).
query(buys('19097')).
query(buys('9492')).
query(buys('55511')).

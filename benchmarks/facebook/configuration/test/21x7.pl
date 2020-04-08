10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('46775','26267').
0.19::trusts('52452','26267').
0.1::trusts('47090','26267').
0.1::trusts('26267','46775').
0.19::trusts('42005','46775').
0.1::trusts('55487','46775').
0.271::trusts('58493','46775').
0.3439::trusts('53395','46775').
0.19::trusts('26267','52452').
0.1::trusts('25699','52452').
0.1::trusts('26267','47090').
0.1::trusts('54721','47090').
0.1::trusts('35004','47090').
0.19::trusts('46775','42005').
0.1::trusts('55487','42005').
0.1::trusts('26267','55487').
0.1::trusts('42005','55487').
0.1::trusts('58493','55487').
0.271::trusts('46775','58493').
0.1::trusts('55487','58493').
0.1::trusts('54721','51515').
0.19::trusts('51517','51515').
0.1::trusts('51515','51517').
0.1::trusts('52452','25699').
0.1::trusts('47090','35004').
0.19::trusts('54721','35004').
0.19::trusts('55564','35004').
0.271::trusts('11703','35004').
0.271::trusts('35004','55564').
0.19::trusts('52850','55564').
0.19::trusts('55564','52850').
0.1::trusts('41072','52850').
0.1::trusts('35004','61108').
0.1::trusts('35004','61411').
0.1::trusts('55564','49362').
0.1::trusts('26267','49425').

person('26267').
person('46775').
person('52452').
person('47090').
person('42005').
person('55487').
person('58493').
person('53395').
person('51515').
person('54721').
person('51517').
person('25699').
person('35004').
person('55564').
person('11703').
person('52850').
person('41072').
person('61108').
person('61411').
person('49362').
person('49425').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('26267')).
query(buys('46775')).
query(buys('52452')).
query(buys('47090')).
query(buys('42005')).
query(buys('55487')).
query(buys('58493')).
query(buys('53395')).
query(buys('51515')).
query(buys('54721')).
query(buys('51517')).
query(buys('25699')).
query(buys('35004')).
query(buys('55564')).
query(buys('11703')).
query(buys('52850')).
query(buys('41072')).
query(buys('61108')).
query(buys('61411')).
query(buys('49362')).
query(buys('49425')).

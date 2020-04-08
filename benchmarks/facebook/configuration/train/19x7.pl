10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5353','8379').
0.1::trusts('33251','8379').
0.40951::trusts('33252','8379').
0.19::trusts('8379','33251').
0.19::trusts('33114','33251').
0.3439::trusts('22996','33251').
0.1::trusts('33368','33251').
0.468559::trusts('8379','33252').
0.19::trusts('5655','11721').
0.468559::trusts('33114','11721').
0.19::trusts('7040','11721').
0.1::trusts('11721','5655').
0.40951::trusts('11721','33114').
0.1::trusts('33251','33114').
0.1::trusts('57992','33114').
0.19::trusts('11721','7040').
0.271::trusts('42385','7040').
0.1::trusts('13451','7040').
0.40951::trusts('33251','22996').
0.19::trusts('33251','33368').
0.1::trusts('7040','42385').
0.40951::trusts('4132','42385').
0.19::trusts('7040','13451').
0.1::trusts('12217','13451').
0.1::trusts('17986','13451').
0.1::trusts('13451','12217').
0.40951::trusts('42385','4132').
0.271::trusts('42386','4132').
0.19::trusts('23536','4132').
0.19::trusts('42385','42386').
0.5217031::trusts('4132','42386').
0.1::trusts('4132','23536').
0.1::trusts('8379','59461').

person('8379').
person('5353').
person('33251').
person('33252').
person('11721').
person('5655').
person('33114').
person('7040').
person('57992').
person('22996').
person('33368').
person('42385').
person('13451').
person('12217').
person('4132').
person('17986').
person('42386').
person('23536').
person('59461').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8379')).
query(buys('5353')).
query(buys('33251')).
query(buys('33252')).
query(buys('11721')).
query(buys('5655')).
query(buys('33114')).
query(buys('7040')).
query(buys('57992')).
query(buys('22996')).
query(buys('33368')).
query(buys('42385')).
query(buys('13451')).
query(buys('12217')).
query(buys('4132')).
query(buys('17986')).
query(buys('42386')).
query(buys('23536')).
query(buys('59461')).

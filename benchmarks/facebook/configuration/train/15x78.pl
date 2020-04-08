10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('17408','17406').
0.19::trusts('40131','17406').
0.40951::trusts('30651','17406').
0.1::trusts('30126','17406').
0.1::trusts('17406','17408').
0.271::trusts('17406','40131').
0.19::trusts('19568','40131').
0.19::trusts('17406','30651').
0.19::trusts('17406','30126').
0.1::trusts('32422','30126').
0.40951::trusts('19568','19516').
0.1::trusts('39222','19516').
0.3439::trusts('36924','19516').
0.3439::trusts('19516','19568').
0.1::trusts('40131','19568').
0.1::trusts('25271','19568').
0.19::trusts('19516','36924').
0.19::trusts('40766','36924').
0.1::trusts('40230','25271').
0.468559::trusts('40131','25271').
0.1::trusts('19568','25271').
0.1::trusts('12218','25271').
0.19::trusts('36924','40766').
0.1::trusts('19568','36399').

person('17406').
person('17408').
person('40131').
person('30651').
person('30126').
person('19516').
person('19568').
person('39222').
person('36924').
person('32422').
person('25271').
person('40766').
person('40230').
person('12218').
person('36399').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17406')).
query(buys('17408')).
query(buys('40131')).
query(buys('30651')).
query(buys('30126')).
query(buys('19516')).
query(buys('19568')).
query(buys('39222')).
query(buys('36924')).
query(buys('32422')).
query(buys('25271')).
query(buys('40766')).
query(buys('40230')).
query(buys('12218')).
query(buys('36399')).

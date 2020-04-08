10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('50736','2738').
0.1::trusts('8791','2738').
0.1::trusts('18400','2738').
0.1::trusts('2738','50736').
0.1::trusts('44447','50736').
0.1::trusts('2738','8791').
0.1::trusts('8777','8791').
0.1::trusts('8812','8791').
0.1::trusts('2738','18400').
0.1::trusts('8812','8777').
0.1::trusts('8806','8777').
0.1::trusts('8777','8806').
0.19::trusts('8812','8806').
0.1::trusts('50736','44447').
0.1::trusts('60362','44447').
0.1::trusts('8777','21839').
0.1::trusts('8777','29021').
0.1::trusts('8777','27420').
0.1::trusts('2738','28221').
0.1::trusts('8791','8816').
0.1::trusts('8791','57927').

person('2738').
person('50736').
person('8791').
person('18400').
person('8777').
person('8812').
person('8806').
person('44447').
person('21839').
person('60362').
person('29021').
person('27420').
person('28221').
person('8816').
person('57927').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2738')).
query(buys('50736')).
query(buys('8791')).
query(buys('18400')).
query(buys('8777')).
query(buys('8812')).
query(buys('8806')).
query(buys('44447')).
query(buys('21839')).
query(buys('60362')).
query(buys('29021')).
query(buys('27420')).
query(buys('28221')).
query(buys('8816')).
query(buys('57927')).

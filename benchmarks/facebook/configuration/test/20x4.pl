10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('23485','23483').
0.1::trusts('8780','23483').
0.19::trusts('49550','23483').
0.3439::trusts('23483','23485').
0.1::trusts('42888','23485').
0.1::trusts('27065','23485').
0.1::trusts('23480','23485').
0.1::trusts('23483','8780').
0.19::trusts('15760','8780').
0.1::trusts('23483','49550').
0.271::trusts('44367','15760').
0.1::trusts('8780','15760').
0.19::trusts('15760','44367').
0.19::trusts('4878','44367').
0.271::trusts('14405','4878').
0.1::trusts('15256','4878').
0.19::trusts('44367','4878').
0.1::trusts('4878','14405').
0.271::trusts('15256','14405').
0.1::trusts('19659','14405').
0.1::trusts('4878','15256').
0.19::trusts('14405','15256').
0.19::trusts('49182','15256').
0.19::trusts('23485','42888').
0.271::trusts('23485','27065').
0.1::trusts('23485','23480').
0.1::trusts('61251','23480').
0.1::trusts('14405','19659').
0.19::trusts('15256','49182').
0.19::trusts('49183','49182').
0.271::trusts('49182','49183').
0.19::trusts('15760','1054').
0.1::trusts('1051','1054').
0.1::trusts('19659','25115').
0.1::trusts('23485','63409').

person('23483').
person('23485').
person('8780').
person('49550').
person('15760').
person('44367').
person('4878').
person('14405').
person('15256').
person('42888').
person('27065').
person('23480').
person('19659').
person('49182').
person('61251').
person('49183').
person('1054').
person('1051').
person('25115').
person('63409').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23483')).
query(buys('23485')).
query(buys('8780')).
query(buys('49550')).
query(buys('15760')).
query(buys('44367')).
query(buys('4878')).
query(buys('14405')).
query(buys('15256')).
query(buys('42888')).
query(buys('27065')).
query(buys('23480')).
query(buys('19659')).
query(buys('49182')).
query(buys('61251')).
query(buys('49183')).
query(buys('1054')).
query(buys('1051')).
query(buys('25115')).
query(buys('63409')).

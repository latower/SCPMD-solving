10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('29303','3548').
0.1::trusts('3548','29303').
0.1::trusts('52924','29303').
0.3439::trusts('55957','46206').
0.19::trusts('60280','46206').
0.271::trusts('46206','55957').
0.1::trusts('41375','55957').
0.1::trusts('58519','55957').
0.1::trusts('56275','55957').
0.1::trusts('46206','60280').
0.1::trusts('61147','60280').
0.1::trusts('29303','52924').
0.19::trusts('41474','52924').
0.1::trusts('18159','52924').
0.1::trusts('41375','39652').
0.19::trusts('39652','41375').
0.1::trusts('55957','41375').
0.1::trusts('41478','41375').
0.19::trusts('41376','41375').
0.1::trusts('41482','41375').
0.19::trusts('55957','58519').
0.1::trusts('60353','58519').
0.1::trusts('55957','56275').
0.1::trusts('41474','41478').
0.1::trusts('41376','41478').
0.1::trusts('41478','41474').
0.19::trusts('52924','41474').
0.1::trusts('41473','41474').
0.1::trusts('55770','41474').
0.1::trusts('58519','60353').
0.1::trusts('41474','41473').
0.271::trusts('60280','61147').
0.1::trusts('55957','39658').

person('3548').
person('29303').
person('46206').
person('55957').
person('60280').
person('52924').
person('39652').
person('41375').
person('58519').
person('56275').
person('41478').
person('41474').
person('41376').
person('18159').
person('41482').
person('60353').
person('41473').
person('55770').
person('61147').
person('39658').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3548')).
query(buys('29303')).
query(buys('46206')).
query(buys('55957')).
query(buys('60280')).
query(buys('52924')).
query(buys('39652')).
query(buys('41375')).
query(buys('58519')).
query(buys('56275')).
query(buys('41478')).
query(buys('41474')).
query(buys('41376')).
query(buys('18159')).
query(buys('41482')).
query(buys('60353')).
query(buys('41473')).
query(buys('55770')).
query(buys('61147')).
query(buys('39658')).

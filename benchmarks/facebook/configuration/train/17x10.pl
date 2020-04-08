10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('18531','18539').
0.19::trusts('18541','18539').
0.19::trusts('13453','18539').
0.271::trusts('18539','18531').
0.3439::trusts('18541','18531').
0.1::trusts('18540','18531').
0.19::trusts('13453','18531').
0.1::trusts('20434','18531').
0.612579511::trusts('18531','18541').
0.1::trusts('18539','13453').
0.271::trusts('18531','13453').
0.1::trusts('25898','13453').
0.1::trusts('18545','13453').
0.1::trusts('53415','13453').
0.1::trusts('18079','13453').
0.19::trusts('18531','20434').
0.1::trusts('27675','23739').
0.19::trusts('17892','27675').
0.1::trusts('16292','27675').
0.717570463519::trusts('13453','25898').
0.19::trusts('27675','17892').
0.19::trusts('18545','17892').
0.19::trusts('17892','18545').
0.1::trusts('13453','18545').
0.1::trusts('23739','16292').
0.19::trusts('13453','53415').
0.1::trusts('13453','18079').
0.1::trusts('27675','32068').
0.1::trusts('18539','58415').
0.1::trusts('13453','50657').

person('18539').
person('18531').
person('18541').
person('13453').
person('18540').
person('20434').
person('23739').
person('27675').
person('25898').
person('17892').
person('18545').
person('16292').
person('53415').
person('18079').
person('32068').
person('58415').
person('50657').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18539')).
query(buys('18531')).
query(buys('18541')).
query(buys('13453')).
query(buys('18540')).
query(buys('20434')).
query(buys('23739')).
query(buys('27675')).
query(buys('25898')).
query(buys('17892')).
query(buys('18545')).
query(buys('16292')).
query(buys('53415')).
query(buys('18079')).
query(buys('32068')).
query(buys('58415')).
query(buys('50657')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('46041','5631').
0.1::trusts('46591','5631').
0.271::trusts('47145','5631').
0.1::trusts('47147','5631').
0.1::trusts('46089','5631').
0.271::trusts('5631','46041').
0.1::trusts('15495','46591').
0.19::trusts('11933','46591').
0.1::trusts('48491','46591').
0.271::trusts('5631','47145').
0.1::trusts('11183','47145').
0.1::trusts('5631','46089').
0.1::trusts('46088','46089').
0.1::trusts('5631','15495').
0.19::trusts('45898','15495').
0.19::trusts('47144','15495').
0.1::trusts('46041','15495').
0.271::trusts('46591','15495').
0.1::trusts('15495','45898').
0.1::trusts('45900','45898').
0.1::trusts('45899','45898').
0.1::trusts('15495','47144').
0.1::trusts('45898','45900').
0.271::trusts('45898','45899').
0.19::trusts('46591','11933').
0.1::trusts('48488','11933').
0.1::trusts('42981','11933').
0.1::trusts('46591','48491').
0.1::trusts('47145','11183').
0.468559::trusts('11933','48488').
0.1::trusts('5631','47148').
0.1::trusts('47144','48489').
0.1::trusts('42981','62123').
0.1::trusts('48491','60603').

person('5631').
person('46041').
person('46591').
person('47145').
person('47147').
person('46089').
person('15495').
person('45898').
person('47144').
person('45900').
person('45899').
person('11933').
person('48491').
person('11183').
person('46088').
person('48488').
person('42981').
person('47148').
person('48489').
person('62123').
person('60603').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5631')).
query(buys('46041')).
query(buys('46591')).
query(buys('47145')).
query(buys('47147')).
query(buys('46089')).
query(buys('15495')).
query(buys('45898')).
query(buys('47144')).
query(buys('45900')).
query(buys('45899')).
query(buys('11933')).
query(buys('48491')).
query(buys('11183')).
query(buys('46088')).
query(buys('48488')).
query(buys('42981')).
query(buys('47148')).
query(buys('48489')).
query(buys('62123')).
query(buys('60603')).

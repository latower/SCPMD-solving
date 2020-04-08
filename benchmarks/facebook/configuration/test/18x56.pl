10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('27489','19756').
0.3439::trusts('27466','19756').
0.3439::trusts('24126','19756').
0.1::trusts('34499','19756').
0.271::trusts('32374','19756').
0.1::trusts('34500','19756').
0.3439::trusts('19756','27489').
0.19::trusts('27466','27489').
0.1::trusts('24126','27489').
0.468559::trusts('19756','27466').
0.19::trusts('24126','27466').
0.1::trusts('27484','27466').
0.19::trusts('32784','27466').
0.1::trusts('37187','27466').
0.1::trusts('19756','24126').
0.271::trusts('27466','24126').
0.1::trusts('32374','24126').
0.1::trusts('27484','24126').
0.19::trusts('30137','24126').
0.19::trusts('19756','32374').
0.1::trusts('36392','32374').
0.271::trusts('41073','32374').
0.1::trusts('19756','27484').
0.271::trusts('27466','27484').
0.1::trusts('24126','30137').
0.1::trusts('45225','30137').
0.1::trusts('32374','36392').
0.271::trusts('32374','41073').
0.1::trusts('30137','45225').
0.19::trusts('45226','45225').
0.19::trusts('45225','45226').
0.1::trusts('32784','37027').
0.1::trusts('27466','42323').
0.1::trusts('27484','42323').
0.19::trusts('27466','37605').

person('19756').
person('27489').
person('27466').
person('24126').
person('34499').
person('32374').
person('34500').
person('27484').
person('32784').
person('37187').
person('30137').
person('36392').
person('41073').
person('45225').
person('45226').
person('37027').
person('42323').
person('37605').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19756')).
query(buys('27489')).
query(buys('27466')).
query(buys('24126')).
query(buys('34499')).
query(buys('32374')).
query(buys('34500')).
query(buys('27484')).
query(buys('32784')).
query(buys('37187')).
query(buys('30137')).
query(buys('36392')).
query(buys('41073')).
query(buys('45225')).
query(buys('45226')).
query(buys('37027')).
query(buys('42323')).
query(buys('37605')).

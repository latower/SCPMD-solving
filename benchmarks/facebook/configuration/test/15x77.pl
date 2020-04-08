10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('13127','5226').
0.271::trusts('5218','5226').
0.1::trusts('5222','5226').
0.19::trusts('5226','13127').
0.1::trusts('5218','13127').
0.1::trusts('11751','13127').
0.19::trusts('5222','5218').
0.19::trusts('5226','5222').
0.794108867905351::trusts('21777','5222').
0.1::trusts('5218','5222').
0.1::trusts('13770','5222').
0.19::trusts('13127','11751').
0.717570463519::trusts('5222','21777').
0.19::trusts('51715','21777').
0.1::trusts('38109','21777').
0.40951::trusts('45042','21777').
0.1::trusts('21777','51715').
0.19::trusts('38109','51715').
0.19::trusts('21777','38109').
0.3439::trusts('51715','38109').
0.1::trusts('21777','45042').
0.1::trusts('5222','13770').
0.1::trusts('21777','27932').
0.19::trusts('5222','27932').
0.1::trusts('13127','18609').
0.1::trusts('11751','54293').
0.1::trusts('5222','13768').
0.1::trusts('45042','45043').

person('5226').
person('13127').
person('5218').
person('5222').
person('11751').
person('21777').
person('51715').
person('38109').
person('45042').
person('13770').
person('27932').
person('18609').
person('54293').
person('13768').
person('45043').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5226')).
query(buys('13127')).
query(buys('5218')).
query(buys('5222')).
query(buys('11751')).
query(buys('21777')).
query(buys('51715')).
query(buys('38109')).
query(buys('45042')).
query(buys('13770')).
query(buys('27932')).
query(buys('18609')).
query(buys('54293')).
query(buys('13768')).
query(buys('45043')).

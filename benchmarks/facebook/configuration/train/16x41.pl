10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21317','21420').
0.1::trusts('62768','21420').
0.1::trusts('36375','21420').
0.1::trusts('21420','21317').
0.271::trusts('9760','21317').
0.3439::trusts('21420','36375').
0.271::trusts('38440','36375').
0.1::trusts('9757','9760').
0.3439::trusts('21317','9760').
0.1::trusts('25600','9760').
0.19::trusts('23948','9760').
0.1::trusts('9760','9757').
0.19::trusts('9760','25600').
0.1::trusts('9760','23948').
0.1::trusts('51086','13648').
0.19::trusts('17773','13648').
0.19::trusts('38440','13648').
0.3439::trusts('13648','38440').
0.1::trusts('36375','38440').
0.1::trusts('9760','23368').
0.1::trusts('21312','23368').
0.1::trusts('9760','31365').
0.1::trusts('13648','42571').

person('21420').
person('21317').
person('62768').
person('36375').
person('9760').
person('9757').
person('25600').
person('23948').
person('13648').
person('51086').
person('17773').
person('38440').
person('23368').
person('21312').
person('31365').
person('42571').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21420')).
query(buys('21317')).
query(buys('62768')).
query(buys('36375')).
query(buys('9760')).
query(buys('9757')).
query(buys('25600')).
query(buys('23948')).
query(buys('13648')).
query(buys('51086')).
query(buys('17773')).
query(buys('38440')).
query(buys('23368')).
query(buys('21312')).
query(buys('31365')).
query(buys('42571')).

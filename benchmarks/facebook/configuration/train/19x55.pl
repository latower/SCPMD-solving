10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('15500','18487').
0.271::trusts('58110','18487').
0.271::trusts('38933','18487').
0.271::trusts('18487','15500').
0.468559::trusts('58110','15500').
0.1::trusts('38933','15500').
0.19::trusts('27243','15500').
0.3439::trusts('18487','58110').
0.3439::trusts('15500','58110').
0.19::trusts('38933','58110').
0.1::trusts('58109','58110').
0.271::trusts('18487','38933').
0.1::trusts('15500','38933').
0.19::trusts('58110','38933').
0.271::trusts('15500','27243').
0.19::trusts('34469','27243').
0.19::trusts('24574','27243').
0.1::trusts('58110','58109').
0.3439::trusts('27243','34469').
0.19::trusts('34468','34469').
0.1::trusts('27243','24574').
0.1::trusts('34469','34468').
0.1::trusts('15500','22531').
0.19::trusts('15505','22531').
0.19::trusts('15500','15505').
0.1::trusts('22531','15505').
0.19::trusts('15500','53430').
0.1::trusts('53955','53429').
0.1::trusts('47127','53429').
0.19::trusts('53429','53955').
0.1::trusts('15500','47127').
0.1::trusts('53429','47127').
0.1::trusts('15500','47126').
0.1::trusts('47127','47126').
0.1::trusts('15500','47128').
0.1::trusts('15500','23258').
0.1::trusts('15500','40237').

person('18487').
person('15500').
person('58110').
person('38933').
person('27243').
person('58109').
person('34469').
person('24574').
person('34468').
person('22531').
person('15505').
person('53430').
person('53429').
person('53955').
person('47127').
person('47126').
person('47128').
person('23258').
person('40237').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18487')).
query(buys('15500')).
query(buys('58110')).
query(buys('38933')).
query(buys('27243')).
query(buys('58109')).
query(buys('34469')).
query(buys('24574')).
query(buys('34468')).
query(buys('22531')).
query(buys('15505')).
query(buys('53430')).
query(buys('53429')).
query(buys('53955')).
query(buys('47127')).
query(buys('47126')).
query(buys('47128')).
query(buys('23258')).
query(buys('40237')).

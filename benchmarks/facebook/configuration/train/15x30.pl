10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('25026','18739').
0.271::trusts('18739','25026').
0.1::trusts('18428','25026').
0.1::trusts('58084','25026').
0.19::trusts('54489','25026').
0.3439::trusts('25026','18428').
0.1::trusts('25026','58084').
0.1::trusts('25026','54489').
0.612579511::trusts('42986','54454').
0.40951::trusts('54454','42986').
0.1::trusts('26492','42986').
0.19::trusts('18739','26492').
0.19::trusts('25026','26492').
0.19::trusts('18739','26493').
0.1::trusts('25026','47780').
0.19::trusts('25026','34163').
0.19::trusts('18739','26496').
0.19::trusts('63214','63215').
0.1::trusts('18739','26498').
0.1::trusts('63215','26498').

person('18739').
person('25026').
person('18428').
person('58084').
person('54489').
person('54454').
person('42986').
person('26492').
person('26493').
person('47780').
person('34163').
person('26496').
person('63215').
person('63214').
person('26498').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18739')).
query(buys('25026')).
query(buys('18428')).
query(buys('58084')).
query(buys('54489')).
query(buys('54454')).
query(buys('42986')).
query(buys('26492')).
query(buys('26493')).
query(buys('47780')).
query(buys('34163')).
query(buys('26496')).
query(buys('63215')).
query(buys('63214')).
query(buys('26498')).

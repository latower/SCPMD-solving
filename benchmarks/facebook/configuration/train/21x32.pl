10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('26591','13975').
0.1::trusts('25687','13975').
0.19::trusts('13975','26591').
0.1::trusts('28009','26591').
0.3439::trusts('25687','26591').
0.40951::trusts('28011','28009').
0.468559::trusts('28010','28009').
0.3439::trusts('48725','28009').
0.468559::trusts('9600','28009').
0.1::trusts('26591','28009').
0.5217031::trusts('28009','28011').
0.717570463519::trusts('28009','28010').
0.1::trusts('28011','28010').
0.468559::trusts('28009','48725').
0.5217031::trusts('28009','9600').
0.1::trusts('28010','9600').
0.1::trusts('26591','9600').
0.19::trusts('23515','9600').
0.40951::trusts('25687','9600').
0.1::trusts('45292','9600').
0.19::trusts('36478','9600').
0.1::trusts('34775','9600').
0.19::trusts('39129','9600').
0.1::trusts('40278','37427').
0.19::trusts('23515','37427').
0.1::trusts('37427','40278').
0.19::trusts('45292','40278').
0.1::trusts('40285','40278').
0.1::trusts('28009','23515').
0.19::trusts('37427','23515').
0.271::trusts('9600','23515').
0.1::trusts('9600','45292').
0.1::trusts('40278','45292').
0.1::trusts('40285','45292').
0.19::trusts('9600','36478').
0.19::trusts('30725','36478').
0.1::trusts('16616','34775').
0.1::trusts('9600','39129').
0.1::trusts('34775','16616').
0.1::trusts('36478','30725').
0.1::trusts('9600','40282').
0.1::trusts('23515','40282').
0.1::trusts('36478','58508').
0.1::trusts('36478','40288').

person('13975').
person('26591').
person('25687').
person('28009').
person('28011').
person('28010').
person('48725').
person('9600').
person('37427').
person('40278').
person('23515').
person('45292').
person('36478').
person('34775').
person('39129').
person('16616').
person('40285').
person('30725').
person('40282').
person('58508').
person('40288').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13975')).
query(buys('26591')).
query(buys('25687')).
query(buys('28009')).
query(buys('28011')).
query(buys('28010')).
query(buys('48725')).
query(buys('9600')).
query(buys('37427')).
query(buys('40278')).
query(buys('23515')).
query(buys('45292')).
query(buys('36478')).
query(buys('34775')).
query(buys('39129')).
query(buys('16616')).
query(buys('40285')).
query(buys('30725')).
query(buys('40282')).
query(buys('58508')).
query(buys('40288')).

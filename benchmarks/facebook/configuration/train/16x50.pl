10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.612579511::trusts('7','16').
0.19::trusts('2056','16').
0.19::trusts('6','16').
0.56953279::trusts('27982','16').
0.1::trusts('16','2056').
0.1::trusts('7','2056').
0.1::trusts('6','2056').
0.19::trusts('2908','2056').
0.19::trusts('16','6').
0.5217031::trusts('7','6').
0.19::trusts('2056','6').
0.19::trusts('13320','6').
0.271::trusts('13322','6').
0.271::trusts('2056','2908').
0.1::trusts('15357','24415').
0.1::trusts('43617','24415').
0.1::trusts('24415','15357').
0.271::trusts('13320','15357').
0.1::trusts('24415','43617').
0.19::trusts('7','13320').
0.1::trusts('6','13320').
0.19::trusts('15357','13320').
0.1::trusts('6','13322').
0.1::trusts('66','13322').
0.1::trusts('6515','13322').
0.1::trusts('13320','66').
0.19::trusts('13322','66').
0.1::trusts('13322','6515').
0.19::trusts('7','5304').
0.19::trusts('14763','5304').
0.1::trusts('52','5304').
0.1::trusts('7','14763').
0.271::trusts('5304','14763').

person('16').
person('7').
person('2056').
person('6').
person('27982').
person('2908').
person('24415').
person('15357').
person('43617').
person('13320').
person('13322').
person('66').
person('6515').
person('5304').
person('14763').
person('52').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16')).
query(buys('7')).
query(buys('2056')).
query(buys('6')).
query(buys('27982')).
query(buys('2908')).
query(buys('24415')).
query(buys('15357')).
query(buys('43617')).
query(buys('13320')).
query(buys('13322')).
query(buys('66')).
query(buys('6515')).
query(buys('5304')).
query(buys('14763')).
query(buys('52')).

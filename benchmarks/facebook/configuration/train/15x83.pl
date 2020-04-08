10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('17','5351').
0.19::trusts('5351','17').
0.271::trusts('10691','17').
0.271::trusts('1192','17').
0.271::trusts('10691','50191').
0.271::trusts('50191','10691').
0.19::trusts('17','10691').
0.1::trusts('25213','10691').
0.1::trusts('679','61').
0.5217031::trusts('702','61').
0.1::trusts('710','61').
0.1::trusts('61','679').
0.1::trusts('5244','679').
0.271::trusts('6259','679').
0.974968444950068::trusts('6258','679').
0.40951::trusts('61','702').
0.1::trusts('679','702').
0.1::trusts('1192','702').
0.1::trusts('61','710').
0.1::trusts('679','5244').
0.19::trusts('679','6259').
0.985219117058565::trusts('679','6258').
0.271::trusts('17','1192').
0.1::trusts('702','1192').
0.1::trusts('10691','15862').
0.271::trusts('710','62380').

person('5351').
person('17').
person('50191').
person('10691').
person('61').
person('679').
person('702').
person('710').
person('5244').
person('6259').
person('6258').
person('1192').
person('25213').
person('15862').
person('62380').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5351')).
query(buys('17')).
query(buys('50191')).
query(buys('10691')).
query(buys('61')).
query(buys('679')).
query(buys('702')).
query(buys('710')).
query(buys('5244')).
query(buys('6259')).
query(buys('6258')).
query(buys('1192')).
query(buys('25213')).
query(buys('15862')).
query(buys('62380')).

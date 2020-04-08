10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18551','1848').
0.19::trusts('40544','1848').
0.1::trusts('1848','18551').
0.271::trusts('40544','18551').
0.271::trusts('56718','18551').
0.19::trusts('18551','40544').
0.3439::trusts('37088','40544').
0.19::trusts('43258','40544').
0.1::trusts('18551','56718').
0.271::trusts('40544','37088').
0.19::trusts('43258','37088').
0.19::trusts('43250','37088').
0.1::trusts('43247','37088').
0.1::trusts('43237','37088').
0.19::trusts('43261','37088').
0.1::trusts('43242','37088').
0.19::trusts('40544','43258').
0.271::trusts('37088','43258').
0.1::trusts('43250','43258').
0.19::trusts('37088','43250').
0.1::trusts('43258','43250').
0.19::trusts('43239','43250').
0.68618940391::trusts('34394','43250').
0.19::trusts('37088','43237').
0.5217031::trusts('37088','43261').
0.1::trusts('37088','43242').
0.1::trusts('43250','43242').
0.1::trusts('37088','43239').
0.1::trusts('43250','43239').
0.19::trusts('43250','34394').
0.1::trusts('43251','34394').
0.19::trusts('34394','62702').
0.1::trusts('37088','43234').
0.1::trusts('34394','61355').
0.1::trusts('37088','43238').
0.271::trusts('43264','43238').
0.19::trusts('43238','43264').

person('1848').
person('18551').
person('40544').
person('56718').
person('37088').
person('43258').
person('43250').
person('43247').
person('43237').
person('43261').
person('43242').
person('43239').
person('34394').
person('43251').
person('62702').
person('43234').
person('61355').
person('43238').
person('43264').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1848')).
query(buys('18551')).
query(buys('40544')).
query(buys('56718')).
query(buys('37088')).
query(buys('43258')).
query(buys('43250')).
query(buys('43247')).
query(buys('43237')).
query(buys('43261')).
query(buys('43242')).
query(buys('43239')).
query(buys('34394')).
query(buys('43251')).
query(buys('62702')).
query(buys('43234')).
query(buys('61355')).
query(buys('43238')).
query(buys('43264')).

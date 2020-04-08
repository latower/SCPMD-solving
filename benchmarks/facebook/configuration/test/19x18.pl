10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('2745','1231').
0.1::trusts('23820','1231').
0.1::trusts('3471','2745').
0.271::trusts('1231','2745').
0.1::trusts('2747','2745').
0.1::trusts('1231','23820').
0.3439::trusts('16921','3483').
0.1::trusts('22775','3483').
0.1::trusts('22174','3483').
0.271::trusts('3483','16921').
0.1::trusts('21573','16921').
0.1::trusts('3483','22775').
0.3439::trusts('18247','22775').
0.1::trusts('3483','22174').
0.19::trusts('3471','2747').
0.1::trusts('3471','21573').
0.1::trusts('21031','21573').
0.271::trusts('16921','21573').
0.19::trusts('2747','21573').
0.1::trusts('22775','18247').
0.3439::trusts('3483','22773').
0.3439::trusts('3471','2739').
0.3439::trusts('3483','2739').
0.5217031::trusts('21031','2739').
0.1::trusts('2747','2739').
0.3439::trusts('21031','33333').
0.1::trusts('16921','37354').
0.1::trusts('1231','23535').
0.19::trusts('33333','20924').
0.1::trusts('55708','20924').

person('1231').
person('2745').
person('23820').
person('3483').
person('16921').
person('22775').
person('22174').
person('3471').
person('2747').
person('21573').
person('18247').
person('22773').
person('21031').
person('2739').
person('33333').
person('37354').
person('23535').
person('20924').
person('55708').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1231')).
query(buys('2745')).
query(buys('23820')).
query(buys('3483')).
query(buys('16921')).
query(buys('22775')).
query(buys('22174')).
query(buys('3471')).
query(buys('2747')).
query(buys('21573')).
query(buys('18247')).
query(buys('22773')).
query(buys('21031')).
query(buys('2739')).
query(buys('33333')).
query(buys('37354')).
query(buys('23535')).
query(buys('20924')).
query(buys('55708')).

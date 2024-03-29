10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('18735','4468').
0.3439::trusts('4466','4468').
0.468559::trusts('4462','4468').
0.271::trusts('34238','4468').
0.1::trusts('55341','4468').
0.1::trusts('7792','18735').
0.1::trusts('34238','18735').
0.19::trusts('9391','18735').
0.1::trusts('54053','18735').
0.1::trusts('54345','18735').
0.1::trusts('4469','18735').
0.3439::trusts('4468','4466').
0.19::trusts('4469','4466').
0.1::trusts('3864','4466').
0.6513215599::trusts('4468','4462').
0.1::trusts('4469','4462').
0.1::trusts('4468','34238').
0.1::trusts('13340','34238').
0.1::trusts('4469','34238').
0.19::trusts('59678','34238').
0.1::trusts('35819','34238').
0.1::trusts('4468','55341').
0.1::trusts('18735','55341').
0.1::trusts('52228','55341').
0.1::trusts('13623','55341').
0.19::trusts('18735','7792').
0.1::trusts('4466','7792').
0.19::trusts('60333','7792').
0.19::trusts('18735','9391').
0.1::trusts('18735','54053').
0.19::trusts('18735','54345').
0.1::trusts('54347','54345').
0.1::trusts('18735','4469').
0.3439::trusts('4466','4469').
0.271::trusts('4466','3864').
0.19::trusts('34238','13340').
0.1::trusts('41143','13340').
0.19::trusts('7792','60333').
0.271::trusts('34238','59678').
0.1::trusts('34238','35819').
0.1::trusts('55341','52228').
0.1::trusts('4468','13623').
0.1::trusts('34238','13623').
0.1::trusts('4468','55338').
0.1::trusts('18735','50403').
0.19::trusts('4466','41932').
0.1::trusts('9391','62463').
0.1::trusts('34238','58215').
0.1::trusts('34238','55590').
0.1::trusts('60333','41996').
0.1::trusts('18735','41933').
0.1::trusts('55341','55694').

person('4468').
person('18735').
person('4466').
person('4462').
person('34238').
person('55341').
person('7792').
person('9391').
person('54053').
person('54345').
person('4469').
person('3864').
person('13340').
person('41143').
person('60333').
person('59678').
person('35819').
person('52228').
person('13623').
person('54347').
person('55338').
person('50403').
person('41932').
person('62463').
person('58215').
person('55590').
person('41996').
person('41933').
person('55694').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4468')).
query(buys('18735')).
query(buys('4466')).
query(buys('4462')).
query(buys('34238')).
query(buys('55341')).
query(buys('7792')).
query(buys('9391')).
query(buys('54053')).
query(buys('54345')).
query(buys('4469')).
query(buys('3864')).
query(buys('13340')).
query(buys('41143')).
query(buys('60333')).
query(buys('59678')).
query(buys('35819')).
query(buys('52228')).
query(buys('13623')).
query(buys('54347')).
query(buys('55338')).
query(buys('50403')).
query(buys('41932')).
query(buys('62463')).
query(buys('58215')).
query(buys('55590')).
query(buys('41996')).
query(buys('41933')).
query(buys('55694')).

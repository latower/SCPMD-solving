10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('35523','29423').
0.1::trusts('60130','29423').
0.271::trusts('29423','35523').
0.19::trusts('12278','35523').
0.19::trusts('29423','60130').
0.19::trusts('37339','60130').
0.468559::trusts('37333','21286').
0.468559::trusts('37337','21286').
0.1::trusts('37339','21286').
0.6513215599::trusts('21286','37333').
0.68618940391::trusts('21286','37337').
0.271::trusts('21286','37339').
0.271::trusts('60130','37339').
0.19::trusts('35523','12278').
0.5217031::trusts('20355','12278').
0.1::trusts('30459','12278').
0.1::trusts('37333','36178').
0.40951::trusts('12278','20355').
0.271::trusts('29423','20565').
0.1::trusts('21286','37338').
0.1::trusts('37334','37338').
0.1::trusts('21286','37334').
0.1::trusts('29423','35517').
0.1::trusts('30459','53715').
0.19::trusts('60130','58982').
0.1::trusts('39445','11640').

person('29423').
person('35523').
person('60130').
person('21286').
person('37333').
person('37337').
person('37339').
person('12278').
person('36178').
person('20355').
person('30459').
person('20565').
person('37338').
person('37334').
person('35517').
person('53715').
person('58982').
person('11640').
person('39445').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29423')).
query(buys('35523')).
query(buys('60130')).
query(buys('21286')).
query(buys('37333')).
query(buys('37337')).
query(buys('37339')).
query(buys('12278')).
query(buys('36178')).
query(buys('20355')).
query(buys('30459')).
query(buys('20565')).
query(buys('37338')).
query(buys('37334')).
query(buys('35517')).
query(buys('53715')).
query(buys('58982')).
query(buys('11640')).
query(buys('39445')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2051','2014').
0.1::trusts('2037','2014').
0.1::trusts('2014','2051').
0.19::trusts('17596','2051').
0.1::trusts('2045','2051').
0.1::trusts('2037','2051').
0.1::trusts('2051','17596').
0.1::trusts('2051','2045').
0.271::trusts('21931','2045').
0.1::trusts('2045','21931').
0.468559::trusts('21250','21931').
0.1::trusts('25610','21931').
0.271::trusts('21931','21250').
0.19::trusts('20745','21250').
0.1::trusts('21931','25610').
0.1::trusts('2946','20745').
0.19::trusts('21250','20745').
0.878423345409431::trusts('20588','20745').
0.19::trusts('20128','20745').
0.935389181107733::trusts('20745','20588').
0.3439::trusts('38985','20588').
0.19::trusts('47271','20588').
0.1::trusts('20745','20128').
0.6513215599::trusts('20588','38985').
0.1::trusts('25568','47271').
0.40951::trusts('20588','47271').
0.3439::trusts('20745','46529').
0.1::trusts('20128','47325').
0.1::trusts('2037','17662').

person('2014').
person('2051').
person('2037').
person('17596').
person('2045').
person('21931').
person('21250').
person('25610').
person('20745').
person('2946').
person('20588').
person('20128').
person('38985').
person('47271').
person('25568').
person('46529').
person('47325').
person('17662').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2014')).
query(buys('2051')).
query(buys('2037')).
query(buys('17596')).
query(buys('2045')).
query(buys('21931')).
query(buys('21250')).
query(buys('25610')).
query(buys('20745')).
query(buys('2946')).
query(buys('20588')).
query(buys('20128')).
query(buys('38985')).
query(buys('47271')).
query(buys('25568')).
query(buys('46529')).
query(buys('47325')).
query(buys('17662')).

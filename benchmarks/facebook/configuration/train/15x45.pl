10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('7102','1739').
0.1::trusts('29156','1739').
0.19::trusts('30240','1739').
0.1::trusts('48848','1739').
0.1::trusts('1739','7102').
0.271::trusts('29587','7102').
0.3439::trusts('32529','7102').
0.1::trusts('1739','29156').
0.1::trusts('1739','30240').
0.19::trusts('38703','30240').
0.19::trusts('7102','29587').
0.1::trusts('37755','29587').
0.1::trusts('63572','29587').
0.1::trusts('29587','37755').
0.19::trusts('29587','63572').
0.3439::trusts('30240','38703').
0.1::trusts('30240','54497').
0.1::trusts('32529','59333').
0.1::trusts('47938','59333').
0.1::trusts('59333','47938').
0.271::trusts('29587','39936').
0.1::trusts('1739','35310').

person('1739').
person('7102').
person('29156').
person('30240').
person('48848').
person('29587').
person('37755').
person('63572').
person('32529').
person('38703').
person('54497').
person('59333').
person('47938').
person('39936').
person('35310').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1739')).
query(buys('7102')).
query(buys('29156')).
query(buys('30240')).
query(buys('48848')).
query(buys('29587')).
query(buys('37755')).
query(buys('63572')).
query(buys('32529')).
query(buys('38703')).
query(buys('54497')).
query(buys('59333')).
query(buys('47938')).
query(buys('39936')).
query(buys('35310')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('1283','17196').
0.1::trusts('59703','17196').
0.1::trusts('22359','17196').
0.19::trusts('17196','1283').
0.271::trusts('20703','1283').
0.1::trusts('17196','59703').
0.1::trusts('17196','22359').
0.19::trusts('34919','22359').
0.1::trusts('44777','22359').
0.19::trusts('22359','34919').
0.40951::trusts('48900','34919').
0.19::trusts('53397','34919').
0.1::trusts('36080','34919').
0.1::trusts('20548','34919').
0.3439::trusts('34919','53397').
0.271::trusts('34919','36080').
0.1::trusts('57422','36080').
0.271::trusts('34919','20548').
0.19::trusts('1283','20703').
0.1::trusts('34919','44777').
0.1::trusts('1283','1280').
0.1::trusts('59703','41902').
0.1::trusts('17196','23611').
0.19::trusts('34919','41231').
0.1::trusts('48900','59782').
0.19::trusts('34919','53398').
0.1::trusts('53398','61050').
0.1::trusts('17196','52513').

person('17196').
person('1283').
person('59703').
person('22359').
person('34919').
person('48900').
person('53397').
person('36080').
person('20548').
person('20703').
person('44777').
person('1280').
person('57422').
person('41902').
person('23611').
person('41231').
person('59782').
person('53398').
person('61050').
person('52513').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17196')).
query(buys('1283')).
query(buys('59703')).
query(buys('22359')).
query(buys('34919')).
query(buys('48900')).
query(buys('53397')).
query(buys('36080')).
query(buys('20548')).
query(buys('20703')).
query(buys('44777')).
query(buys('1280')).
query(buys('57422')).
query(buys('41902')).
query(buys('23611')).
query(buys('41231')).
query(buys('59782')).
query(buys('53398')).
query(buys('61050')).
query(buys('52513')).

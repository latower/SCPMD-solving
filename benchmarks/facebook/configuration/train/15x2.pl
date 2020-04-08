10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('1062','38538').
0.1::trusts('38547','38538').
0.271::trusts('38538','1062').
0.1::trusts('38538','38547').
0.19::trusts('7938','38547').
0.19::trusts('17287','16995').
0.271::trusts('16995','17287').
0.1::trusts('5537','17287').
0.1::trusts('49349','17287').
0.1::trusts('7938','5537').
0.1::trusts('5537','7938').
0.19::trusts('38547','7938').
0.1::trusts('51410','7938').
0.40951::trusts('14148','7938').
0.1::trusts('51412','7938').
0.1::trusts('7938','51410').
0.3439::trusts('7938','14148').
0.1::trusts('52478','14148').
0.1::trusts('7938','51412').
0.1::trusts('14148','52478').
0.19::trusts('49349','17988').
0.1::trusts('38538','38659').
0.1::trusts('38538','47606').

person('38538').
person('1062').
person('38547').
person('16995').
person('17287').
person('5537').
person('49349').
person('7938').
person('51410').
person('14148').
person('51412').
person('52478').
person('17988').
person('38659').
person('47606').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('38538')).
query(buys('1062')).
query(buys('38547')).
query(buys('16995')).
query(buys('17287')).
query(buys('5537')).
query(buys('49349')).
query(buys('7938')).
query(buys('51410')).
query(buys('14148')).
query(buys('51412')).
query(buys('52478')).
query(buys('17988')).
query(buys('38659')).
query(buys('47606')).

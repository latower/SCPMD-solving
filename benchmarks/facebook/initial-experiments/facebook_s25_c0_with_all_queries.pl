?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('27167','21094').
0.40951::trusts('38817','21094').
0.40951::trusts('39461','21094').
0.1::trusts('34578','21094').
0.19::trusts('39969','21094').
0.1::trusts('21094','27167').
0.612579511::trusts('21094','38817').
0.1::trusts('29073','38817').
0.928210201230815::trusts('37262','38817').
0.19::trusts('32104','38817').
0.19::trusts('32294','38817').
0.40951::trusts('21094','39461').
0.1::trusts('29073','34578').
0.19::trusts('38316','34578').
0.1::trusts('33187','34578').
0.1::trusts('21094','39969').
0.271::trusts('127','29073').
0.19::trusts('38817','29073').
0.1::trusts('34578','29073').
0.271::trusts('37262','29073').
0.1::trusts('586','29073').
0.1::trusts('25842','29073').
0.1::trusts('21094','37262').
0.3439::trusts('29073','37262').
0.977471600455061::trusts('38817','37262').
0.40951::trusts('32104','37262').
0.19::trusts('127','586').
0.271::trusts('29073','586').
0.19::trusts('29073','25842').
0.271::trusts('38817','32104').
0.911370618803475::trusts('37262','32104').
0.19::trusts('38817','32294').
0.271::trusts('38120','32294').
0.1::trusts('32485','32294').
0.1::trusts('34578','38316').
0.3439::trusts('33212','38316').
0.1::trusts('38315','38316').
0.19::trusts('38316','33212').
0.1::trusts('32294','38120').
0.19::trusts('44383','38120').
0.1::trusts('32294','32485').
0.40951::trusts('127','24246').
0.19::trusts('38120','44383').
0.1::trusts('21094','12256').
0.19::trusts('38315','38317').
0.1::trusts('27167','27168').
0.19::trusts('33212','38429').

person('21094').
person('27167').
person('38817').
person('39461').
person('34578').
person('39969').
person('29073').
person('127').
person('37262').
person('586').
person('25842').
person('32104').
person('32294').
person('38316').
person('33187').
person('33212').
person('38315').
person('38120').
person('32485').
person('24246').
person('44383').
person('12256').
person('38317').
person('27168').
person('38429').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21094')).
query(buys('27167')).
query(buys('38817')).
query(buys('39461')).
query(buys('34578')).
query(buys('39969')).
query(buys('29073')).
query(buys('127')).
query(buys('37262')).
query(buys('586')).
query(buys('25842')).
query(buys('32104')).
query(buys('32294')).
query(buys('38316')).
query(buys('33187')).
query(buys('33212')).
query(buys('38315')).
query(buys('38120')).
query(buys('32485')).
query(buys('24246')).
query(buys('44383')).
query(buys('12256')).
query(buys('38317')).
query(buys('27168')).
query(buys('38429')).
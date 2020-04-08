10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('40165','25872').
0.271::trusts('1090','25872').
0.19::trusts('17638','25872').
0.1::trusts('8846','25872').
0.1::trusts('45338','25872').
0.1::trusts('17638','40165').
0.1::trusts('41825','40165').
0.1::trusts('51398','40165').
0.1::trusts('56118','40165').
0.19::trusts('25872','17638').
0.5217031::trusts('40165','17638').
0.19::trusts('25872','8846').
0.1::trusts('1090','8846').
0.1::trusts('25872','45338').
0.40951::trusts('40165','41825').
0.3439::trusts('40291','41825').
0.19::trusts('40165','51398').
0.1::trusts('25872','1100').
0.1::trusts('1090','1100').
0.271::trusts('25872','8787').
0.1::trusts('17638','8787').
0.1::trusts('8817','8787').
0.1::trusts('8787','8817').
0.1::trusts('8818','8817').
0.3439::trusts('41825','40291').
0.1::trusts('25872','43001').
0.1::trusts('25872','17703').
0.1::trusts('17638','17703').
0.1::trusts('17638','29331').
0.1::trusts('8787','17353').
0.1::trusts('8787','46227').

person('25872').
person('40165').
person('1090').
person('17638').
person('8846').
person('45338').
person('41825').
person('51398').
person('56118').
person('1100').
person('8787').
person('8817').
person('40291').
person('8818').
person('43001').
person('17703').
person('29331').
person('17353').
person('46227').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25872')).
query(buys('40165')).
query(buys('1090')).
query(buys('17638')).
query(buys('8846')).
query(buys('45338')).
query(buys('41825')).
query(buys('51398')).
query(buys('56118')).
query(buys('1100')).
query(buys('8787')).
query(buys('8817')).
query(buys('40291')).
query(buys('8818')).
query(buys('43001')).
query(buys('17703')).
query(buys('29331')).
query(buys('17353')).
query(buys('46227')).

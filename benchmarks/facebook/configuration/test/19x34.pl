10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('1099','1112').
0.271::trusts('24808','1112').
0.40951::trusts('17190','1112').
0.468559::trusts('30995','1112').
0.1::trusts('1112','1099').
0.271::trusts('1114','1099').
0.1::trusts('29121','1099').
0.1::trusts('29123','1099').
0.19::trusts('1112','24808').
0.5217031::trusts('1112','17190').
0.1::trusts('29111','17190').
0.1::trusts('29123','17190').
0.1::trusts('17188','17190').
0.40951::trusts('1112','30995').
0.19::trusts('1112','1114').
0.19::trusts('1099','1114').
0.1::trusts('1099','29121').
0.1::trusts('1099','29123').
0.1::trusts('16000','29123').
0.1::trusts('17190','29123').
0.271::trusts('47390','29123').
0.1::trusts('16000','47392').
0.1::trusts('47387','47392').
0.1::trusts('1099','16000').
0.1::trusts('47386','16000').
0.1::trusts('47392','47387').
0.1::trusts('16000','47386').
0.1::trusts('29111','42029').
0.1::trusts('29121','42029').
0.1::trusts('17190','17188').
0.19::trusts('29123','47390').
0.1::trusts('42029','57541').
0.1::trusts('17190','48383').
0.1::trusts('16000','47393').

person('1112').
person('1099').
person('24808').
person('17190').
person('30995').
person('1114').
person('29121').
person('29123').
person('47392').
person('16000').
person('47387').
person('47386').
person('42029').
person('29111').
person('17188').
person('47390').
person('57541').
person('48383').
person('47393').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1112')).
query(buys('1099')).
query(buys('24808')).
query(buys('17190')).
query(buys('30995')).
query(buys('1114')).
query(buys('29121')).
query(buys('29123')).
query(buys('47392')).
query(buys('16000')).
query(buys('47387')).
query(buys('47386')).
query(buys('42029')).
query(buys('29111')).
query(buys('17188')).
query(buys('47390')).
query(buys('57541')).
query(buys('48383')).
query(buys('47393')).

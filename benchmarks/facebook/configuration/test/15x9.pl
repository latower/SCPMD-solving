10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('36315','36317').
0.271::trusts('36317','36315').
0.1::trusts('14934','36315').
0.1::trusts('10696','36315').
0.1::trusts('21569','25054').
0.271::trusts('30612','25054').
0.40951::trusts('25054','30612').
0.19::trusts('44467','30612').
0.271::trusts('17976','17684').
0.1::trusts('25054','17976').
0.1::trusts('21569','17976').
0.271::trusts('17684','17976').
0.1::trusts('30612','44467').
0.1::trusts('14934','44467').
0.1::trusts('40105','44467').
0.1::trusts('36315','14934').
0.1::trusts('44467','14934').
0.1::trusts('36315','10696').
0.5217031::trusts('41431','34524').
0.1::trusts('25054','41431').
0.271::trusts('34524','41431').
0.1::trusts('44467','40105').
0.1::trusts('34524','41353').
0.1::trusts('34524','41351').

person('36317').
person('36315').
person('25054').
person('21569').
person('30612').
person('17684').
person('17976').
person('44467').
person('14934').
person('10696').
person('34524').
person('41431').
person('40105').
person('41353').
person('41351').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('36317')).
query(buys('36315')).
query(buys('25054')).
query(buys('21569')).
query(buys('30612')).
query(buys('17684')).
query(buys('17976')).
query(buys('44467')).
query(buys('14934')).
query(buys('10696')).
query(buys('34524')).
query(buys('41431')).
query(buys('40105')).
query(buys('41353')).
query(buys('41351')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('24280','21185').
0.1::trusts('21185','24280').
0.1::trusts('8039','24280').
0.1::trusts('52054','24280').
0.1::trusts('8986','15453').
0.1::trusts('51652','15453').
0.19::trusts('15453','8986').
0.1::trusts('17813','8986').
0.19::trusts('15453','51652').
0.1::trusts('24280','8039').
0.1::trusts('24280','52054').
0.1::trusts('42974','52054').
0.1::trusts('8986','17813').
0.1::trusts('33513','17813').
0.1::trusts('42974','17813').
0.1::trusts('34204','17813').
0.19::trusts('33512','33513').
0.1::trusts('17813','33513').
0.1::trusts('24280','33512').
0.19::trusts('33513','33512').
0.1::trusts('33518','33512').
0.1::trusts('54795','33512').
0.271::trusts('52054','42974').
0.1::trusts('17813','42974').
0.1::trusts('1851','42974').
0.1::trusts('33518','33510').
0.19::trusts('33510','33518').
0.1::trusts('33512','33518').
0.1::trusts('49636','33518').
0.1::trusts('24280','54795').
0.19::trusts('33512','54795').
0.1::trusts('17813','34204').
0.1::trusts('42974','1851').
0.1::trusts('24280','33552').
0.19::trusts('33518','49636').
0.19::trusts('54795','61547').
0.1::trusts('8986','8987').

person('21185').
person('24280').
person('15453').
person('8986').
person('51652').
person('8039').
person('52054').
person('17813').
person('33513').
person('33512').
person('42974').
person('33510').
person('33518').
person('54795').
person('34204').
person('1851').
person('33552').
person('49636').
person('61547').
person('8987').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21185')).
query(buys('24280')).
query(buys('15453')).
query(buys('8986')).
query(buys('51652')).
query(buys('8039')).
query(buys('52054')).
query(buys('17813')).
query(buys('33513')).
query(buys('33512')).
query(buys('42974')).
query(buys('33510')).
query(buys('33518')).
query(buys('54795')).
query(buys('34204')).
query(buys('1851')).
query(buys('33552')).
query(buys('49636')).
query(buys('61547')).
query(buys('8987')).

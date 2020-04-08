10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.983576796731739::trusts('14785','14961').
0.986697205352709::trusts('15380','14961').
0.901522909781639::trusts('7523','14961').
0.19::trusts('25196','14961').
0.1::trusts('25386','14961').
0.995825442082071::trusts('14961','14785').
0.1::trusts('15380','14785').
0.1::trusts('15384','14785').
0.1::trusts('37261','14785').
0.999967208149521::trusts('14961','15380').
0.1::trusts('14785','15380').
0.3439::trusts('7531','15380').
0.1::trusts('7535','15380').
0.68618940391::trusts('7523','15380').
0.19::trusts('25196','15380').
0.1::trusts('11812','15380').
0.1::trusts('25351','15380').
0.814697981114816::trusts('14961','7523').
0.5217031::trusts('21584','7523').
0.3439::trusts('15380','7523').
0.271::trusts('31411','7523').
0.1::trusts('7563','7523').
0.271::trusts('14961','25196').
0.5217031::trusts('7531','25196').
0.271::trusts('15380','25196').
0.271::trusts('32418','25196').
0.1::trusts('14961','25386').
0.1::trusts('7531','21584').
0.612579511::trusts('7523','21584').
0.19::trusts('21584','7531').
0.947665236697264::trusts('7532','7531').
0.19::trusts('36858','7531').
0.468559::trusts('15380','7531').
0.19::trusts('7523','7531').
0.6513215599::trusts('25196','7531').
0.1::trusts('31411','7531').
0.1::trusts('9914','7531').
0.901522909781639::trusts('7531','7532').
0.68618940391::trusts('4301','7532').
0.19::trusts('3378','7532').
0.1::trusts('36858','7532').
0.1::trusts('18035','7532').
0.1::trusts('36892','7532').
0.19::trusts('7532','36858').
0.3439::trusts('7531','36858').
0.19::trusts('7532','18035').
0.1::trusts('7532','36892').
0.19::trusts('14785','37261').
0.1::trusts('7523','31411').
0.19::trusts('7531','9914').
0.19::trusts('14961','7535').
0.1::trusts('15380','7535').
0.19::trusts('7523','7535').
0.1::trusts('15380','11812').
0.1::trusts('15380','25351').
0.1::trusts('36233','25351').
0.1::trusts('7523','7563').
0.56953279::trusts('25196','32418').
0.1::trusts('14961','14969').
0.1::trusts('15380','14969').
0.271::trusts('7523','14969').
0.1::trusts('25351','36233').
0.19::trusts('14961','25350').
0.19::trusts('7523','25350').
0.1::trusts('25351','22383').
0.1::trusts('7532','27860').
0.1::trusts('4301','19913').
0.1::trusts('7523','41002').

person('14961').
person('14785').
person('15380').
person('7523').
person('25196').
person('25386').
person('21584').
person('7531').
person('7532').
person('4301').
person('3378').
person('36858').
person('18035').
person('36892').
person('15384').
person('37261').
person('31411').
person('9914').
person('7535').
person('11812').
person('25351').
person('7563').
person('32418').
person('14969').
person('36233').
person('25350').
person('22383').
person('27860').
person('19913').
person('41002').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('14961')).
query(buys('14785')).
query(buys('15380')).
query(buys('7523')).
query(buys('25196')).
query(buys('25386')).
query(buys('21584')).
query(buys('7531')).
query(buys('7532')).
query(buys('4301')).
query(buys('3378')).
query(buys('36858')).
query(buys('18035')).
query(buys('36892')).
query(buys('15384')).
query(buys('37261')).
query(buys('31411')).
query(buys('9914')).
query(buys('7535')).
query(buys('11812')).
query(buys('25351')).
query(buys('7563')).
query(buys('32418')).
query(buys('14969')).
query(buys('36233')).
query(buys('25350')).
query(buys('22383')).
query(buys('27860')).
query(buys('19913')).
query(buys('41002')).

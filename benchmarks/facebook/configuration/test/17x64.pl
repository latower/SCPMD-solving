10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('1042','1159').
0.271::trusts('1349','1042').
0.1::trusts('1159','1042').
0.1::trusts('1039','1042').
0.952898713027537::trusts('1044','1042').
0.1::trusts('1035','1042').
0.1::trusts('2621','1042').
0.1::trusts('1349','1039').
0.1::trusts('1042','1039').
0.920233556923127::trusts('1042','1044').
0.1::trusts('1035','1044').
0.1::trusts('281','1044').
0.1::trusts('1042','1035').
0.1::trusts('1041','1035').
0.468559::trusts('1038','1035').
0.1::trusts('281','1035').
0.1::trusts('1044','281').
0.1::trusts('1038','281').
0.19::trusts('1048','281').
0.1::trusts('1159','1041').
0.1::trusts('1044','1041').
0.1::trusts('1035','1041').
0.1::trusts('1038','1041').
0.271::trusts('1035','1038').
0.19::trusts('1041','1038').
0.1::trusts('3886','1038').
0.19::trusts('281','1038').
0.1::trusts('1349','3780').
0.1::trusts('1159','3780').
0.1::trusts('1042','3780').
0.19::trusts('5723','3780').
0.19::trusts('1038','3886').
0.1::trusts('1035','1048').
0.19::trusts('281','1048').
0.19::trusts('1038','4326').
0.1::trusts('1038','6137').
0.1::trusts('1044','10578').

person('1159').
person('1042').
person('1039').
person('1349').
person('1044').
person('1035').
person('2621').
person('281').
person('1041').
person('1038').
person('3780').
person('5723').
person('3886').
person('1048').
person('4326').
person('6137').
person('10578').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1159')).
query(buys('1042')).
query(buys('1039')).
query(buys('1349')).
query(buys('1044')).
query(buys('1035')).
query(buys('2621')).
query(buys('281')).
query(buys('1041')).
query(buys('1038')).
query(buys('3780')).
query(buys('5723')).
query(buys('3886')).
query(buys('1048')).
query(buys('4326')).
query(buys('6137')).
query(buys('10578')).

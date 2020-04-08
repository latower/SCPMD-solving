10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('35066','21690').
0.271::trusts('21690','35066').
0.271::trusts('55276','35066').
0.1::trusts('62176','35066').
0.19::trusts('33417','27041').
0.717570463519::trusts('55276','27041').
0.19::trusts('27041','33417').
0.5217031::trusts('27041','55276').
0.1::trusts('36118','55276').
0.19::trusts('35066','55276').
0.271::trusts('23162','55276').
0.1::trusts('27041','36118').
0.3439::trusts('12345','36118').
0.19::trusts('55276','36118').
0.19::trusts('58078','36118').
0.19::trusts('5933','12345').
0.271::trusts('36118','12345').
0.1::trusts('13530','12345').
0.1::trusts('36118','58078').
0.1::trusts('5933','13530').
0.1::trusts('12345','13530').
0.40951::trusts('55276','23162').
0.19::trusts('19844','23162').
0.19::trusts('23162','19844').
0.1::trusts('12345','5504').
0.1::trusts('36118','10796').
0.1::trusts('55276','36042').
0.19::trusts('30973','55999').
0.1::trusts('62176','30973').
0.1::trusts('55999','30973').
0.1::trusts('58078','58077').

person('21690').
person('35066').
person('27041').
person('33417').
person('55276').
person('36118').
person('12345').
person('58078').
person('5933').
person('13530').
person('62176').
person('23162').
person('19844').
person('5504').
person('10796').
person('36042').
person('55999').
person('30973').
person('58077').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21690')).
query(buys('35066')).
query(buys('27041')).
query(buys('33417')).
query(buys('55276')).
query(buys('36118')).
query(buys('12345')).
query(buys('58078')).
query(buys('5933')).
query(buys('13530')).
query(buys('62176')).
query(buys('23162')).
query(buys('19844')).
query(buys('5504')).
query(buys('10796')).
query(buys('36042')).
query(buys('55999')).
query(buys('30973')).
query(buys('58077')).

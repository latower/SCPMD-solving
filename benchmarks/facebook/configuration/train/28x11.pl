10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.6513215599::trusts('6401','6402').
0.19::trusts('4527','6402').
0.911370618803475::trusts('6404','6402').
0.979724440409555::trusts('6409','6402').
0.5217031::trusts('6413','6402').
0.1::trusts('9513','6402').
0.1::trusts('17654','6402').
0.1::trusts('6402','6401').
0.1::trusts('6409','6401').
0.40951::trusts('6414','6401').
0.5217031::trusts('12524','6401').
0.19::trusts('12530','6401').
0.468559::trusts('6402','4527').
0.928210201230815::trusts('6402','6404').
0.612579511::trusts('6409','6404').
0.1::trusts('6414','6404').
0.961847957552305::trusts('6402','6409').
0.468559::trusts('6404','6409').
0.814697981114816::trusts('6413','6409').
0.56953279::trusts('9513','6409').
0.1::trusts('17654','6409').
0.19::trusts('10799','6409').
0.1::trusts('6414','6409').
0.1::trusts('17646','6409').
0.3439::trusts('6402','6413').
0.68618940391::trusts('6409','6413').
0.1::trusts('6414','6413').
0.1::trusts('17645','6413').
0.1::trusts('6402','9513').
0.612579511::trusts('6409','9513').
0.1::trusts('17654','9513').
0.1::trusts('6402','17654').
0.1::trusts('6409','17654').
0.271::trusts('6401','6414').
0.1::trusts('6404','6414').
0.19::trusts('6409','6414').
0.19::trusts('6413','6414').
0.19::trusts('46626','6414').
0.1::trusts('23995','6414').
0.5217031::trusts('6401','12524').
0.19::trusts('12531','12524').
0.19::trusts('6401','12530').
0.1::trusts('6409','10799').
0.1::trusts('9647','10799').
0.271::trusts('46626','10799').
0.1::trusts('14321','10799').
0.68618940391::trusts('26060','10799').
0.19::trusts('52673','10799').
0.1::trusts('6409','17646').
0.19::trusts('6413','17646').
0.1::trusts('6409','17645').
0.19::trusts('6413','17645').
0.271::trusts('10799','46626').
0.19::trusts('6414','46626').
0.40951::trusts('10799','26060').
0.19::trusts('44232','26060').
0.19::trusts('10799','52673').
0.1::trusts('26060','52673').
0.1::trusts('9647','23995').
0.1::trusts('10799','23995').
0.1::trusts('6414','23995').
0.19::trusts('12524','12531').
0.271::trusts('26060','44232').
0.19::trusts('12530','21431').
0.1::trusts('12530','52200').
0.1::trusts('6409','22928').
0.1::trusts('9513','22928').
0.1::trusts('46626','13077').
0.1::trusts('12530','44040').
0.1::trusts('9647','63240').

person('6402').
person('6401').
person('4527').
person('6404').
person('6409').
person('6413').
person('9513').
person('17654').
person('6414').
person('12524').
person('12530').
person('10799').
person('17646').
person('17645').
person('9647').
person('46626').
person('14321').
person('26060').
person('52673').
person('23995').
person('12531').
person('44232').
person('21431').
person('52200').
person('22928').
person('13077').
person('44040').
person('63240').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6402')).
query(buys('6401')).
query(buys('4527')).
query(buys('6404')).
query(buys('6409')).
query(buys('6413')).
query(buys('9513')).
query(buys('17654')).
query(buys('6414')).
query(buys('12524')).
query(buys('12530')).
query(buys('10799')).
query(buys('17646')).
query(buys('17645')).
query(buys('9647')).
query(buys('46626')).
query(buys('14321')).
query(buys('26060')).
query(buys('52673')).
query(buys('23995')).
query(buys('12531')).
query(buys('44232')).
query(buys('21431')).
query(buys('52200')).
query(buys('22928')).
query(buys('13077')).
query(buys('44040')).
query(buys('63240')).
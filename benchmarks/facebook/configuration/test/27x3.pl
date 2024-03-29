10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19846','31367').
0.1::trusts('31367','19846').
0.271::trusts('25097','19846').
0.56953279::trusts('24187','19846').
0.1::trusts('31641','19846').
0.1::trusts('23301','19846').
0.1::trusts('58265','19846').
0.1::trusts('24107','18613').
0.1::trusts('17937','18613').
0.19::trusts('7202','18613').
0.1::trusts('10858','18613').
0.19::trusts('18613','24107').
0.271::trusts('7202','24107').
0.56953279::trusts('2199','24107').
0.1::trusts('24106','24107').
0.271::trusts('18613','17937').
0.1::trusts('7202','17937').
0.878423345409431::trusts('18613','7202').
0.271::trusts('24107','7202').
0.901522909781639::trusts('2199','7202').
0.1::trusts('24106','7202').
0.1::trusts('18613','10858').
0.3439::trusts('24187','10858').
0.19::trusts('10862','10858').
0.1::trusts('24186','10858').
0.19::trusts('19846','25097').
0.1::trusts('31641','25097').
0.3439::trusts('25097','31641').
0.1::trusts('19846','31641').
0.1::trusts('24107','24106').
0.1::trusts('7202','24106').
0.56953279::trusts('2199','24106').
0.271::trusts('10858','24187').
0.56953279::trusts('19846','24187').
0.1::trusts('24186','24187').
0.1::trusts('58265','24187').
0.1::trusts('7400','24187').
0.19::trusts('10858','10862').
0.1::trusts('7846','10862').
0.1::trusts('16972','10862').
0.1::trusts('55713','10862').
0.1::trusts('10858','24186').
0.19::trusts('24187','24186').
0.1::trusts('24187','58265').
0.19::trusts('19846','58265').
0.1::trusts('24187','7400').
0.1::trusts('51133','7846').
0.1::trusts('10862','16972').
0.1::trusts('24187','43753').
0.1::trusts('25097','23337').
0.1::trusts('24187','24108').
0.1::trusts('2199','31177').
0.1::trusts('19846','40283').
0.1::trusts('23301','27894').

person('31367').
person('19846').
person('18613').
person('24107').
person('17937').
person('7202').
person('10858').
person('25097').
person('31641').
person('2199').
person('24106').
person('24187').
person('10862').
person('24186').
person('58265').
person('7400').
person('23301').
person('7846').
person('16972').
person('55713').
person('51133').
person('43753').
person('23337').
person('24108').
person('31177').
person('40283').
person('27894').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('31367')).
query(buys('19846')).
query(buys('18613')).
query(buys('24107')).
query(buys('17937')).
query(buys('7202')).
query(buys('10858')).
query(buys('25097')).
query(buys('31641')).
query(buys('2199')).
query(buys('24106')).
query(buys('24187')).
query(buys('10862')).
query(buys('24186')).
query(buys('58265')).
query(buys('7400')).
query(buys('23301')).
query(buys('7846')).
query(buys('16972')).
query(buys('55713')).
query(buys('51133')).
query(buys('43753')).
query(buys('23337')).
query(buys('24108')).
query(buys('31177')).
query(buys('40283')).
query(buys('27894')).

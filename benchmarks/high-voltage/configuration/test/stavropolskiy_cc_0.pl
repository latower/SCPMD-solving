33

line('51000', '60603').
line('17014', '60327').
line('60603', '26955').
line('50996', '50998').
line('18064', '56095').
line('8950', '67182').
line('8950', '34101').
line('11915', '50395').
line('51785', '17014').
line('8950', '26387').
line('17104', '17108').
line('50998', '51003').
line('50835', '60482').
line('41840', '50395').
line('18343', '22178').
line('66856', '54056').
line('66694', '48360').
line('51423', '56095').
line('66471', '41840').
line('51623', '22178').
line('16285', '51003').
line('67182', '63259').
line('10458', '22178').
line('8950', '26386').
line('50835', '51015').
line('51152', '51179').
line('16415', '66471').
line('11915', '50349').
line('14377', '26955').
line('10458', '16340').
line('66856', '41840').
line('19938', '27127').
line('26387', '63287').
line('10386', '16340').
line('48221', '17108').
line('8950', '63287').
line('51515', '26955').
line('8950', '63259').
line('60482', '60603').
line('17914', '66856').
line('26387', '63259').
line('50349', '18343').
line('50349', '62293').
line('50913', '17110').
line('26386', '60327').
line('48360', '51179').
line('16285', '16985').
line('50996', '17086').
line('50913', '56095').
line('17110', '66694').
line('14377', '17104').
line('16415', '66471').
line('48360', '60482').
line('60327', '51179').
line('14377', '50996').
line('8950', '63287').
line('48221', '51015').
line('17109', '66694').
line('17014', '50395').
line('17894', '27127').
line('62293', '50345').
line('17894', '52242').
line('10386', '62293').
line('63259', '67182').
line('51423', '27127').
line('15020', '17109').
line('41840', '16174').

station('50345').
station('11915').
station('14377').
station('16340').
station('10386').
station('41840').
station('15020').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('8950')).
query(connected('50395')).
query(connected('51179')).
query(connected('50996')).
query(connected('50349')).
query(connected('17014')).
query(connected('48360')).
query(connected('50998')).
query(connected('48221')).
query(connected('50835')).
query(connected('10458')).
query(connected('16285')).
query(connected('51003')).
query(connected('17894')).
query(connected('17104')).
query(connected('17109')).
query(connected('17110')).
query(connected('17108')).
query(connected('51423')).
query(connected('51015')).
query(connected('18343')).
query(connected('50913')).
query(connected('51515')).
query(connected('16415')).
query(connected('51785')).
query(connected('16985')).
query(connected('17086')).
query(connected('51152')).
query(connected('51623')).
query(connected('52242')).
query(connected('16174')).
query(connected('18064')).
query(connected('51000')).
query(connected('17914')).
query(connected('19938')).

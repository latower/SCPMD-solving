34

line('13477', '13478').
line('5227', '8746').
line('8746', '56187').
line('42953', '47401').
line('42953', '47399').
line('5227', '21650').
line('8901', '21650').
line('8903', '13476').
line('5227', '8903').
line('65302', '59189').
line('41675', '47394').
line('65301', '65302').
line('13474', '47400').
line('41675', '42407').
line('13477', '62366').
line('42953', '21627').
line('15246', '54698').
line('13477', '16004').
line('31305', '25298').
line('13477', '13478').
line('47402', '47403').
line('13477', '65302').
line('25298', '65300').
line('13476', '47401').
line('13578', '31305').
line('42953', '47409').
line('8903', '47402').
line('65301', '62366').
line('8903', '44876').
line('13477', '59189').
line('47409', '13488').
line('41675', '42953').
line('51841', '21631').
line('41675', '8901').
line('42953', '56187').
line('19597', '56187').
line('41675', '21908').
line('54698', '15246').
line('41675', '21627').
line('59022', '28307').
line('13477', '65300').
line('47399', '13474').
line('59022', '28307').
line('13489', '59022').
line('47402', '47403').
line('12001', '47408').
line('42853', '59022').
line('13477', '47402').
line('47409', '13489').
line('65300', '13477').
line('8903', '44876').
line('8903', '47402').
line('47400', '51841').
line('21471', '28307').
line('13477', '13478').
line('62366', '13477').
line('21627', '56187').
line('21627', '15246').
line('19843', '19844').
line('13477', '47402').
line('13488', '13489').
line('47408', '19844').
line('5227', '12001').
line('13477', '25298').
line('5227', '8901').
line('47402', '59189').
line('47402', '65301').
line('44874', '16004').
line('42953', '47603').

station('42853').
station('12001').
station('16004').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('13477')).
query(connected('42953')).
query(connected('41675')).
query(connected('5227')).
query(connected('47402')).
query(connected('8903')).
query(connected('47409')).
query(connected('8901')).
query(connected('13489')).
query(connected('13488')).
query(connected('47399')).
query(connected('13476')).
query(connected('15246')).
query(connected('13474')).
query(connected('47400')).
query(connected('47408')).
query(connected('47401')).
query(connected('51841')).
query(connected('8746')).
query(connected('19844')).
query(connected('19597')).
query(connected('42407')).
query(connected('47403')).
query(connected('47394')).
query(connected('44876')).
query(connected('47603')).
query(connected('13578')).
query(connected('13478')).
query(connected('44874')).
query(connected('19843')).

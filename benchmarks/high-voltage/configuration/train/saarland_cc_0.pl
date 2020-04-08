41

line('4807', '22399').
line('6735', '21044').
line('5961', '34683').
line('5053', '23409').
line('64073', '21532').
line('63756', '5961').
line('10568', '57509').
line('67991', '57126').
line('5053', '22409').
line('57271', '57617').
line('20881', '63756').
line('6012', '5569').
line('22785', '57617').
line('6735', '21044').
line('5569', '29491').
line('30202', '30204').
line('28993', '62965').
line('62158', '22410').
line('29478', '21044').
line('28993', '62965').
line('62158', '5053').
line('6735', '21044').
line('58126', '30724').
line('27841', '57617').
line('20881', '56692').
line('57271', '23412').
line('18934', '63984').
line('56692', '58126').
line('64073', '57126').
line('37066', '63621').
line('23412', '54921').
line('5053', '22372').
line('5961', '29491').
line('23119', '57509').
line('40638', '6737').
line('44870', '58126').
line('20881', '28993').
line('40638', '22409').
line('29478', '22410').
line('62158', '22372').
line('62627', '39151').
line('44871', '30724').
line('20411', '4807').
line('63984', '63986').
line('5053', '27841').
line('10781', '30704').
line('5053', '22410').
line('21532', '20411').
line('67965', '21532').
line('9731', '54921').
line('63986', '30704').
line('27841', '23409').
line('10568', '23119').
line('10782', '30704').
line('22372', '22785').
line('21617', '5569').
line('34683', '22399').
line('5053', '29478').
line('41214', '63621').
line('9731', '54921').
line('5961', '63449').
line('5961', '22829').
line('23412', '54921').
line('57509', '9731').
line('63449', '63756').
line('40042', '33750').
line('22829', '64073').
line('37066', '40638').
line('63984', '23119').
line('22785', '57271').
line('62627', '39151').
line('41199', '56692').
line('22829', '57126').
line('62965', '7201').
line('22409', '22410').
line('6735', '21044').
line('62627', '40042').
line('30204', '23409').
line('5569', '63449').
line('5961', '29491').
line('37066', '33750').
line('67991', '22399').
line('5053', '67991').

station('4807').
station('7201').
station('40638').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('5053')).
query(connected('5961')).
query(connected('5569')).
query(connected('37066')).
query(connected('10568')).
query(connected('40042')).
query(connected('34683')).
query(connected('9731')).
query(connected('10781')).
query(connected('41214')).
query(connected('6012')).
query(connected('44871')).
query(connected('41199')).
query(connected('18934')).
query(connected('6735')).
query(connected('44870')).
query(connected('39151')).
query(connected('6737')).
query(connected('10782')).

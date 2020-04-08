27

line('65267', '54509').
line('28405', '39543').
line('54510', '50089').
line('55496', '28452').
line('54912', '31270').
line('25253', '28983').
line('47305', '62738').
line('47433', '55496').
line('31272', '54509').
line('25227', '59118').
line('59117', '21088').
line('54510', '62738').
line('7131', '29920').
line('37399', '31281').
line('62737', '31269').
line('31283', '54901').
line('47305', '62737').
line('28983', '28405').
line('28453', '39481').
line('13581', '25250').
line('13581', '59133').
line('13610', '54510').
line('47453', '54510').
line('31280', '54510').
line('31284', '28452').
line('25227', '31269').
line('47453', '54510').
line('29920', '29918').
line('54510', '31280').
line('28452', '28453').
line('55496', '62869').
line('31272', '59117').
line('7131', '39543').
line('37399', '47453').
line('31283', '7131').
line('21880', '21921').
line('59133', '25250').
line('31280', '21921').
line('39481', '31281').
line('7131', '29918').
line('47220', '25227').
line('62869', '6723').
line('31272', '54509').
line('31284', '28453').
line('31281', '59133').
line('31270', '31269').
line('55496', '62869').
line('31284', '52944').
line('31270', '47203').
line('25253', '54510').
line('54510', '21921').
line('39481', '54510').
line('59117', '59118').
line('59118', '55202').

plant('13610').
plant('7131').
station('50089').
station('47220').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('39481')).
query(connected('13581')).
query(connected('39543')).
query(connected('47305')).
query(connected('47453')).
query(connected('37399')).
query(connected('47203')).
query(connected('47433')).
query(connected('6723')).
query(connected('52944')).

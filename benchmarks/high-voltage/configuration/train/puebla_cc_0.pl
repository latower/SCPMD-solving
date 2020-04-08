43

line('21322', '29266').
line('3106', '4135').
line('3091', '21321').
line('4104', '21312').
line('4129', '20589').
line('21329', '30248').
line('33', '30185').
line('3131', '4064').
line('20589', '21376').
line('21322', '30207').
line('29266', '30248').
line('2980', '21324').
line('21326', '21327').
line('20836', '21332').
line('3090', '21329').
line('3130', '20596').
line('3106', '28164').
line('21325', '21332').
line('33', '21376').
line('3265', '20582').
line('33', '31320').
line('3091', '3090').
line('21320', '29266').
line('2980', '21319').
line('4029', '4074').
line('3106', '20582').
line('21324', '29715').
line('3106', '4136').
line('3106', '33').
line('4146', '29715').
line('21331', '29266').
line('3132', '20596').
line('4130', '29266').
line('33', '4060').
line('3131', '21336').
line('4059', '4064').
line('20596', '21264').
line('20835', '20836').
line('20524', '31320').
line('3806', '20835').
line('33', '21322').
line('4060', '4061').
line('2942', '20524').
line('3266', '20582').
line('3090', '20836').
line('3401', '20835').
line('4061', '4187').
line('21323', '28474').
line('29715', '4064').
line('33', '21320').
line('3106', '33').
line('21312', '20589').
line('4133', '21327').
line('4146', '21336').
line('3090', '3091').
line('3806', '21332').
line('4137', '21330').
line('21326', '21328').
line('4253', '21376').
line('4060', '4062').
line('2980', '3130').
line('21321', '29266').
line('2980', '21323').
line('4131', '29266').
line('21319', '21325').
line('21330', '21331').
line('21327', '21328').
line('21324', '21325').
line('4132', '21323').
line('21319', '29266').
line('4062', '21326').
line('21331', '30248').
line('19229', '21325').
line('30207', '21321').
line('19229', '29266').
line('3106', '21328').
line('4133', '28474').
line('4106', '21312').
line('4065', '21264').
line('33', '21264').
line('4106', '4107').
line('21320', '30207').
line('21329', '21330').
line('4029', '21336').
line('30185', '31320').
line('3106', '4133').

station('3091').
station('4106').
station('2980').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('33')).
query(connected('3106')).
query(connected('3090')).
query(connected('4133')).
query(connected('4060')).
query(connected('4064')).
query(connected('4146')).
query(connected('3130')).
query(connected('4062')).
query(connected('4061')).
query(connected('4029')).
query(connected('3131')).
query(connected('3806')).
query(connected('3265')).
query(connected('4104')).
query(connected('3266')).
query(connected('4131')).
query(connected('4187')).
query(connected('4129')).
query(connected('4059')).
query(connected('3401')).
query(connected('4137')).
query(connected('4253')).
query(connected('4107')).
query(connected('4130')).
query(connected('3132')).
query(connected('4132')).
query(connected('4074')).
query(connected('4065')).
query(connected('2942')).
query(connected('4136')).
query(connected('4135')).

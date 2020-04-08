line('16548', '16549').
line('27495', '16182').
line('27950', '31096').
line('16673', '31095').
line('4204', '21369').
line('3903', '21374').
line('4072', '16548').
line('16702', '21282').
line('14372', '24139').
line('4147', '28482').
line('16182', '16701').
line('14380', '31096').
line('4147', '21370').
line('14207', '14208').
line('14205', '16182').
line('14207', '14208').
line('4080', '31097').
line('21375', '3868').
line('10394', '14372').
line('10394', '16701').
line('4072', '26142').
line('4208', '21282').
line('4080', '14208').
line('4208', '16548').
line('3915', '26142').
line('14380', '27950').
line('3915', '4073').
line('31095', '31096').
line('14206', '14207').
line('21369', '4251').
line('4080', '21369').
line('4246', '21370').
line('3903', '21370').
line('16182', '16636').
line('14205', '16701').
line('14206', '14207').
line('27950', '31095').
line('4208', '26143').
line('4208', '16702').
line('26142', '26143').
line('4072', '4073').
line('4134', '4238').
line('4072', '16549').
line('31097', '16536').
line('10616', '24139').
line('16673', '27950').
line('4148', '21374').
line('10701', '14380').
line('3915', '4073').
line('4080', '21282').
line('14205', '14206').
line('21375', '28130').
line('4238', '28482').
line('14380', '27495').
line('4072', '16548').
line('4080', '14208').
line('4072', '26143').
line('14205', '14206').
line('4147', '4148').
line('3903', '3915').
line('21374', '3868').
line('10394', '16701').
line('16182', '16701').
line('3868', '4073').
line('21226', '3915').
line('10616', '16673').
line('16673', '24139').
line('4072', '4073').
line('16637', '27495').

station('3868').
station('4073').
plant('4072').
station('3915').
station('4147').
station('3903').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('16673')).
query(connected('4080')).
query(connected('14380')).
query(connected('16182')).
query(connected('4208')).
query(connected('14205')).
query(connected('16701')).
query(connected('16548')).
query(connected('14372')).
query(connected('16702')).
query(connected('4148')).
query(connected('10616')).
query(connected('14207')).

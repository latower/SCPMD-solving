33

line('55321', '21413').
line('7768', '11659').
line('20453', '36672').
line('20453', '22584').
line('11662', '11663').
line('54860', '20453').
line('60188', '41788').
line('6367', '40423').
line('38788', '21413').
line('40675', '61623').
line('62679', '11661').
line('27658', '27659').
line('36672', '22584').
line('29632', '6365').
line('20453', '6').
line('33653', '21413').
line('60188', '21403').
line('4741', '6367').
line('40834', '63602').
line('54860', '20453').
line('21403', '54534').
line('56554', '22630').
line('20453', '40438').
line('6368', '56543').
line('55321', '33653').
line('27658', '21413').
line('55321', '38817').
line('34191', '36672').
line('36672', '11663').
line('4753', '40834').
line('6367', '29645').
line('6368', '40423').
line('7768', '62679').
line('22630', '56555').
line('55321', '21413').
line('56554', '20465').
line('40834', '6368').
line('4753', '56543').
line('27658', '61623').
line('41788', '62679').
line('11662', '6364').
line('29633', '50062').
line('6368', '40423').
line('40438', '29645').
line('60188', '50062').
line('63602', '56555').
line('6363', '36672').
line('61623', '27659').
line('22584', '29633').
line('56554', '56555').
line('40834', '7768').
line('55321', '38788').
line('55321', '4740').
line('34191', '29632').
line('27659', '22630').
line('29632', '20393').
line('4740', '38817').
line('33653', '21413').
line('21413', '38788').
line('63602', '56543').
line('29645', '40440').
line('50062', '50063').
line('38788', '4741').
line('4753', '40834').
line('6', '6367').
line('20393', '29633').

plant('4753').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('36672')).
query(connected('40834')).
query(connected('6367')).
query(connected('6368')).
query(connected('50062')).
query(connected('7768')).
query(connected('38788')).
query(connected('11663')).
query(connected('34191')).
query(connected('4741')).
query(connected('40423')).
query(connected('4740')).
query(connected('40438')).
query(connected('38817')).
query(connected('6')).
query(connected('41788')).
query(connected('11662')).
query(connected('6364')).
query(connected('50063')).
query(connected('11661')).
query(connected('11659')).
query(connected('6363')).
query(connected('6365')).
query(connected('40675')).
query(connected('40440')).

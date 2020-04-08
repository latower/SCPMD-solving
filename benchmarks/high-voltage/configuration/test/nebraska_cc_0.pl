73

line('19672', '22726').
line('23079', '23081').
line('8162', '23072').
line('7434', '7435').
line('5699', '18420').
line('3760', '16303').
line('7315', '7435').
line('14203', '28120').
line('5557', '14164').
line('5557', '14164').
line('28757', '19672').
line('3477', '3486').
line('4853', '21701').
line('8609', '8611').
line('4686', '21697').
line('7424', '22720').
line('8613', '28735').
line('11553', '11554').
line('3481', '3486').
line('4686', '21693').
line('7315', '11514').
line('7315', '11514').
line('7315', '28160').
line('22719', '7426').
line('7284', '28744').
line('3849', '7434').
line('11554', '31193').
line('8947', '28429').
line('22659', '28735').
line('3849', '28160').
line('16304', '3759').
line('8627', '28419').
line('7424', '5617').
line('16304', '14228').
line('7424', '22661').
line('7194', '22658').
line('22701', '22702').
line('22682', '7284').
line('7315', '11514').
line('3755', '7674').
line('3662', '3661').
line('21713', '22701').
line('4863', '18418').
line('3849', '28160').
line('7674', '7744').
line('22658', '7191').
line('4862', '23077').
line('5617', '28587').
line('28429', '4686').
line('3661', '7284').
line('11549', '13171').
line('3486', '3661').
line('7191', '13370').
line('8201', '8947').
line('8613', '28865').
line('28419', '3486').
line('11470', '11552').
line('5555', '23075').
line('13263', '4850').
line('16303', '21043').
line('4862', '18418').
line('5697', '23212').
line('3759', '16312').
line('18417', '21713').
line('18421', '5557').
line('31193', '7315').
line('4863', '21702').
line('3760', '7674').
line('7315', '11514').
line('5083', '5702').
line('7350', '22702').
line('11469', '11470').
line('3760', '16313').
line('28744', '3486').
line('22719', '22718').
line('5617', '28587').
line('7191', '13370').
line('4853', '4890').
line('20974', '28419').
line('7191', '28744').
line('3849', '21677').
line('8162', '21236').
line('5704', '5702').
line('16303', '16312').
line('8609', '28587').
line('5617', '28587').
line('4862', '21701').
line('22726', '28757').
line('4862', '18418').
line('5697', '23075').
line('8612', '8613').
line('21236', '18421').
line('7674', '16304').
line('5696', '18421').
line('11551', '11470').
line('11395', '11406').
line('7350', '22718').
line('5699', '5696').
line('21694', '21695').
line('7191', '28735').
line('3760', '16303').
line('4679', '13263').
line('7674', '7744').
line('11549', '11552').
line('23077', '23078').
line('7315', '11552').
line('4890', '5617').
line('5083', '14203').
line('11553', '14188').
line('3662', '28419').
line('3755', '21125').
line('5697', '18420').
line('3759', '3760').
line('7744', '28429').
line('22660', '22682').
line('7324', '21697').
line('23079', '23080').
line('22658', '22659').
line('3849', '21125').
line('7191', '28735').
line('5697', '14164').
line('5555', '28587').
line('21702', '23072').
line('3662', '20974').
line('13171', '11470').
line('21693', '21694').
line('7191', '13370').
line('5696', '5704').
line('3845', '28429').
line('8612', '28587').
line('22659', '22661').
line('3845', '4679').
line('11406', '11469').
line('13689', '28419').
line('3481', '3486').
line('4853', '7324').
line('7434', '28429').
line('4853', '18417').
line('11406', '31193').
line('21677', '28757').
line('21695', '23081').
line('7191', '7424').
line('23078', '23080').
line('22720', '7426').
line('7191', '22660').
line('7315', '7324').
line('3755', '7674').

station('11553').
station('3849').
station('14228').
station('7674').
station('11552').
station('7744').
station('8947').
station('4890').
station('11514').
station('3845').
station('11395').
plant('13370').
station('11406').
station('5702').
station('3755').
station('3759').
station('16303').
station('5696').
station('5704').
station('8611').
station('4679').
station('3481').
station('11469').
station('8201').
station('4863').
station('5083').
station('8612').
station('16312').
station('3760').
station('16304').
station('11554').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('7191')).
query(connected('7315')).
query(connected('3486')).
query(connected('4853')).
query(connected('11470')).
query(connected('7424')).
query(connected('5697')).
query(connected('7324')).
query(connected('4862')).
query(connected('7284')).
query(connected('7434')).
query(connected('5617')).
query(connected('4686')).
query(connected('8613')).
query(connected('3661')).
query(connected('3662')).
query(connected('5555')).
query(connected('11549')).
query(connected('7426')).
query(connected('5699')).
query(connected('7350')).
query(connected('5557')).
query(connected('8609')).
query(connected('8162')).
query(connected('14164')).
query(connected('13263')).
query(connected('7435')).
query(connected('14203')).
query(connected('13171')).
query(connected('14188')).
query(connected('4850')).
query(connected('3477')).
query(connected('7194')).
query(connected('11551')).
query(connected('13689')).
query(connected('8627')).
query(connected('16313')).

41

line('43174', '29136').
line('5718', '24056').
line('23954', '10163').
line('55437', '68004').
line('5718', '56228').
line('20960', '42157').
line('68006', '42157').
line('39672', '5590').
line('68003', '68002').
line('9083', '24056').
line('23276', '21341').
line('5403', '63774').
line('68004', '28650').
line('57807', '21341').
line('29399', '5718').
line('23276', '57807').
line('5581', '39679').
line('33991', '33992').
line('44090', '23276').
line('21341', '39658').
line('64970', '20960').
line('7548', '52011').
line('10987', '30540').
line('21341', '29970').
line('9157', '64707').
line('21341', '28090').
line('29803', '21341').
line('30829', '33473').
line('5718', '9155').
line('5718', '54125').
line('5579', '68003').
line('56228', '24798').
line('9155', '33473').
line('5579', '28650').
line('56939', '21341').
line('29803', '7144').
line('39672', '39658').
line('29399', '54125').
line('56939', '19967').
line('55437', '41662').
line('39658', '11769').
line('64970', '43113').
line('9155', '24798').
line('24064', '24056').
line('63774', '57807').
line('5581', '68002').
line('33992', '68004').
line('33991', '68005').
line('56939', '23068').
line('29971', '55053').
line('39675', '5579').
line('21341', '39658').
line('55053', '39658').
line('7548', '29971').
line('68005', '5579').
line('39675', '39672').
line('42157', '64970').
line('56228', '39672').
line('7647', '23068').
line('42157', '43113').
line('68003', '5581').
line('21341', '29136').
line('39672', '30540').
line('5581', '33992').
line('5581', '68006').
line('28090', '64707').
line('55053', '42963').
line('63774', '7144').
line('23954', '30540').
line('10163', '15942').
line('29970', '29971').
line('5718', '29399').
line('41729', '43174').
line('29136', '43174').
line('43176', '23954').
line('21341', '5578').
line('5581', '39679').
line('68002', '28650').
line('55437', '33991').
line('5718', '39672').
line('24798', '33473').
line('39658', '52011').
line('68006', '42157').

station('5590').
station('11769').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('39672')).
query(connected('5718')).
query(connected('39658')).
query(connected('5581')).
query(connected('42157')).
query(connected('5579')).
query(connected('9155')).
query(connected('43174')).
query(connected('43113')).
query(connected('7144')).
query(connected('39675')).
query(connected('10163')).
query(connected('7548')).
query(connected('52011')).
query(connected('43176')).
query(connected('7647')).
query(connected('41662')).
query(connected('5403')).
query(connected('10987')).
query(connected('41729')).
query(connected('5578')).
query(connected('9083')).
query(connected('39679')).
query(connected('44090')).
query(connected('42963')).
query(connected('19967')).
query(connected('9157')).
query(connected('15942')).

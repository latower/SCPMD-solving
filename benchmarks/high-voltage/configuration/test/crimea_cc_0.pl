33

line('56559', '40552').
line('13334', '29159').
line('48686', '28533').
line('48994', '25900').
line('65961', '15066').
line('15003', '48929').
line('6605', '15858').
line('47261', '29159').
line('8081', '6529').
line('6529', '14416').
line('6479', '28719').
line('25901', '25902').
line('48996', '25902').
line('65937', '65961').
line('48997', '25901').
line('10466', '48999').
line('10466', '48929').
line('19876', '20037').
line('48995', '25900').
line('40552', '29661').
line('65937', '10466').
line('41302', '20037').
line('6717', '40773').
line('32188', '15066').
line('56559', '29665').
line('6784', '40773').
line('40552', '6479').
line('10466', '21740').
line('49733', '60051').
line('28719', '14416').
line('6605', '29661').
line('41302', '10466').
line('21788', '28643').
line('15068', '59774').
line('29665', '29661').
line('6717', '40773').
line('40552', '55668').
line('6529', '40552').
line('28643', '20037').
line('49714', '49733').
line('48686', '52979').
line('25902', '59774').
line('6479', '6717').
line('60057', '32188').
line('21788', '55668').
line('10466', '25903').
line('15279', '19876').
line('65937', '65961').
line('48929', '49714').
line('15279', '21740').
line('60057', '32188').
line('48999', '15745').
line('28533', '6524').
line('40773', '47261').
line('6605', '28533').
line('40773', '29159').
line('59774', '25903').
line('56559', '40762').
line('15753', '28643').
line('6529', '14416').
line('15069', '25903').
line('49724', '21740').
line('25900', '25901').
line('40773', '40552').
line('15747', '55668').
line('41302', '20037').
line('60057', '49740').

station('13334').
plant('40762').
station('48686').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('10466')).
query(connected('40552')).
query(connected('40773')).
query(connected('6529')).
query(connected('6479')).
query(connected('6605')).
query(connected('48929')).
query(connected('20037')).
query(connected('14416')).
query(connected('6717')).
query(connected('48999')).
query(connected('15066')).
query(connected('49714')).
query(connected('47261')).
query(connected('19876')).
query(connected('41302')).
query(connected('15279')).
query(connected('49733')).
query(connected('48995')).
query(connected('15747')).
query(connected('48996')).
query(connected('8081')).
query(connected('15003')).
query(connected('15068')).
query(connected('15069')).
query(connected('15858')).
query(connected('15753')).
query(connected('49740')).
query(connected('6784')).
query(connected('49724')).
query(connected('52979')).
query(connected('6524')).
query(connected('48994')).
query(connected('15745')).
query(connected('48997')).

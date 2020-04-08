36

line('26982', '26983').
line('16976', '26981').
line('4280', '26125').
line('20597', '21397').
line('3237', '4231').
line('3281', '31298').
line('4227', '4255').
line('4278', '21412').
line('16725', '27544').
line('27549', '29280').
line('21397', '21398').
line('3281', '26125').
line('15915', '27015').
line('3281', '26123').
line('27544', '28472').
line('14421', '27546').
line('31196', '31298').
line('4276', '26125').
line('15747', '27015').
line('4157', '14421').
line('14167', '26124').
line('15922', '27130').
line('20670', '26123').
line('14167', '26124').
line('15922', '26981').
line('3136', '3237').
line('20597', '21398').
line('3280', '3281').
line('4157', '26235').
line('27546', '27547').
line('4230', '4231').
line('14167', '26123').
line('31196', '31298').
line('3281', '31298').
line('26984', '27015').
line('14167', '26126').
line('27545', '27546').
line('4227', '14167').
line('4277', '21412').
line('4157', '28481').
line('4138', '27130').
line('15921', '4138').
line('26126', '31196').
line('16045', '26126').
line('27549', '31196').
line('14167', '26122').
line('26983', '26984').
line('4280', '21411').
line('14421', '16723').
line('26982', '26984').
line('4231', '20597').
line('21411', '21412').
line('27545', '27547').
line('27544', '27545').
line('26981', '26983').
line('4248', '28481').
line('4157', '27549').
line('3281', '26124').
line('3281', '20670').
line('4229', '4231').
line('13819', '26982').
line('26127', '31196').
line('26235', '14421').
line('4157', '4138').
line('4276', '20670').
line('3280', '3281').
line('21411', '4279').
line('4230', '4227').
line('15921', '15922').
line('4138', '27130').
line('4227', '4229').
line('3280', '4276').
line('4157', '28472').

station('3281').
plant('3280').
plant('4248').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('4157')).
query(connected('14167')).
query(connected('4231')).
query(connected('4227')).
query(connected('14421')).
query(connected('4276')).
query(connected('4138')).
query(connected('15922')).
query(connected('15921')).
query(connected('4230')).
query(connected('4229')).
query(connected('3237')).
query(connected('4280')).
query(connected('16976')).
query(connected('3136')).
query(connected('16723')).
query(connected('16045')).
query(connected('4255')).
query(connected('15915')).
query(connected('4278')).
query(connected('16725')).
query(connected('15747')).
query(connected('13819')).
query(connected('4277')).
query(connected('4279')).

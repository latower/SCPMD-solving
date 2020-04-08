26

line('13644', '53720').
line('21646', '50219').
line('53717', '27379').
line('44511', '44512').
line('38959', '13644').
line('53717', '19954').
line('53752', '28938').
line('21646', '53934').
line('16241', '50219').
line('67589', '50219').
line('53717', '53755').
line('56114', '22196').
line('28938', '53887').
line('44511', '44512').
line('20053', '53885').
line('53717', '19923').
line('68119', '36229').
line('54160', '62573').
line('62762', '36229').
line('62905', '51381').
line('19955', '22196').
line('44511', '44512').
line('67451', '51381').
line('13644', '16241').
line('53717', '56114').
line('67444', '53757').
line('53717', '20065').
line('21646', '67451').
line('53885', '22196').
line('67444', '62905').
line('54160', '62573').
line('53757', '19955').
line('16241', '27379').
line('50219', '53720').
line('21646', '16241').
line('44512', '53720').
line('53762', '56114').
line('53904', '67589').
line('44511', '44512').
line('33458', '33459').
line('33459', '19955').
line('62762', '62574').
line('53757', '54160').
line('20055', '27385').
line('16241', '50219').
line('53757', '27385').
line('54160', '20077').
line('19014', '53717').
line('27385', '28938').
line('53717', '19923').
line('62574', '62762').
line('62573', '62574').

plant('19923').
plant('44511').
plant('13644').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('53717')).
query(connected('50219')).
query(connected('16241')).
query(connected('53757')).
query(connected('19955')).
query(connected('53720')).
query(connected('53885')).
query(connected('51381')).
query(connected('44512')).
query(connected('36229')).
query(connected('38959')).
query(connected('53904')).
query(connected('53887')).
query(connected('53755')).
query(connected('53762')).
query(connected('53752')).
query(connected('19954')).
query(connected('20065')).
query(connected('20055')).
query(connected('20077')).
query(connected('53934')).
query(connected('20053')).
query(connected('19014')).

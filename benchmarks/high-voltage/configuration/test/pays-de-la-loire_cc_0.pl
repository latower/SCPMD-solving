37

line('38682', '56509').
line('37104', '41402').
line('6183', '56509').
line('64555', '9068').
line('22111', '56198').
line('9617', '45186').
line('8817', '46721').
line('43960', '64513').
line('39217', '56771').
line('8816', '7308').
line('43961', '6660').
line('6660', '63650').
line('40825', '62727').
line('42861', '57244').
line('43165', '10277').
line('40825', '40737').
line('41402', '41623').
line('6183', '56509').
line('36925', '26691').
line('56815', '30623').
line('38682', '29922').
line('40825', '6660').
line('41402', '29022').
line('29927', '29922').
line('39217', '6660').
line('38682', '61642').
line('63566', '29022').
line('38682', '42861').
line('9617', '6660').
line('38682', '29927').
line('41402', '7372').
line('6660', '9271').
line('9617', '64555').
line('22566', '41623').
line('41402', '41623').
line('40737', '63838').
line('39217', '30623').
line('26691', '31042').
line('9617', '45186').
line('37104', '41402').
line('26691', '31042').
line('39217', '22111').
line('41402', '57244').
line('6183', '41402').
line('43175', '7308').
line('62449', '63838').
line('9617', '43961').
line('37104', '41402').
line('31042', '41402').
line('62727', '41402').
line('6660', '22684').
line('37104', '41402').
line('56815', '38682').
line('64513', '9271').
line('6660', '56023').
line('37104', '41402').
line('43175', '30623').
line('40825', '56771').
line('62727', '22684').
line('63838', '38682').
line('22566', '56509').
line('56815', '7308').
line('22110', '22111').
line('7308', '46721').
line('61642', '57244').
line('64513', '56023').
line('8859', '63566').
line('37104', '41402').
line('40825', '56771').
line('6660', '22684').
line('38682', '29927').
line('6660', '63650').
line('38682', '61642').
line('43961', '6660').
line('64555', '10277').

plant('37104').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('6660')).
query(connected('41402')).
query(connected('38682')).
query(connected('7308')).
query(connected('40825')).
query(connected('39217')).
query(connected('9617')).
query(connected('43961')).
query(connected('9271')).
query(connected('43175')).
query(connected('41623')).
query(connected('6183')).
query(connected('42861')).
query(connected('40737')).
query(connected('46721')).
query(connected('10277')).
query(connected('8859')).
query(connected('8816')).
query(connected('7372')).
query(connected('36925')).
query(connected('9068')).
query(connected('8817')).
query(connected('43165')).
query(connected('45186')).
query(connected('43960')).

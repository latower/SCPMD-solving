70

line('10089', '41909').
line('39634', '13294').
line('37136', '21139').
line('13294', '23390').
line('5553', '64530').
line('62041', '67985').
line('41909', '9098').
line('37136', '55658').
line('62042', '55054').
line('43179', '31294').
line('67987', '62042').
line('43178', '33993').
line('43178', '63163').
line('28076', '55929').
line('13038', '13237').
line('9097', '56988').
line('46160', '65020').
line('5553', '32902').
line('29997', '63945').
line('13293', '62057').
line('21719', '55599').
line('43181', '10280').
line('39634', '21390').
line('13237', '13262').
line('33973', '33974').
line('62040', '62057').
line('20796', '5553').
line('41755', '55599').
line('7554', '48038').
line('46865', '21139').
line('13294', '30133').
line('46302', '67990').
line('13262', '13038').
line('39634', '67985').
line('41755', '21719').
line('63946', '23072').
line('43180', '23928').
line('67990', '55054').
line('45646', '48038').
line('4602', '39634').
line('6043', '21139').
line('13038', '13237').
line('15135', '64530').
line('45147', '8637').
line('4602', '63305').
line('13038', '30133').
line('64053', '21139').
line('57703', '24901').
line('13262', '23390').
line('57075', '64053').
line('46160', '24901').
line('8637', '15943').
line('65020', '24901').
line('7657', '56942').
line('13038', '13346').
line('39634', '13294').
line('21133', '33976').
line('4602', '63305').
line('7657', '63945').
line('45147', '30564').
line('13038', '63163').
line('39634', '62040').
line('31294', '45646').
line('43157', '16579').
line('67986', '33974').
line('5553', '67986').
line('43181', '23928').
line('30564', '61125').
line('67988', '55054').
line('33984', '8637').
line('4602', '39648').
line('67987', '67989').
line('41909', '56988').
line('6043', '43800').
line('57075', '57703').
line('25217', '45646').
line('23995', '61125').
line('13038', '25217').
line('13346', '25217').
line('62040', '55929').
line('64053', '39634').
line('37136', '21139').
line('37136', '21139').
line('62057', '33993').
line('5553', '16579').
line('5553', '20796').
line('63946', '41748').
line('33984', '5553').
line('56942', '63945').
line('37136', '21139').
line('33974', '39634').
line('5553', '23995').
line('15135', '64530').
line('37136', '55658').
line('43180', '30564').
line('67331', '48038').
line('29997', '67988').
line('50979', '64126').
line('39634', '21139').
line('41739', '30526').
line('45646', '33993').
line('8637', '57819').
line('13038', '13346').
line('43178', '13278').
line('4602', '28076').
line('5553', '20796').
line('23928', '30526').
line('67987', '16579').
line('39648', '67985').
line('39634', '48038').
line('30133', '12511').
line('29997', '41746').
line('62041', '67986').
line('41909', '28481').
line('20796', '5553').
line('56988', '28481').
line('64126', '42550').
line('13038', '23390').
line('13038', '13237').
line('46865', '10089').
line('55054', '41745').
line('33976', '23072').
line('57075', '21139').
line('56942', '63946').
line('39634', '55929').
line('4602', '63305').
line('41739', '32902').
line('43180', '61125').
line('28481', '67990').
line('5553', '23995').
line('55599', '33976').
line('8637', '15943').
line('43800', '50979').
line('41909', '32902').
line('67989', '62042').
line('64126', '57703').
line('5553', '33973').
line('23072', '67988').
line('5553', '62041').
line('39634', '28076').
line('39634', '21390').

plant('37136').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('39634')).
query(connected('5553')).
query(connected('13038')).
query(connected('41909')).
query(connected('48038')).
query(connected('4602')).
query(connected('45646')).
query(connected('8637')).
query(connected('43178')).
query(connected('13294')).
query(connected('43180')).
query(connected('16579')).
query(connected('13262')).
query(connected('41755')).
query(connected('10089')).
query(connected('50979')).
query(connected('13346')).
query(connected('13237')).
query(connected('39648')).
query(connected('43800')).
query(connected('6043')).
query(connected('46865')).
query(connected('41739')).
query(connected('7657')).
query(connected('46160')).
query(connected('45147')).
query(connected('43181')).
query(connected('7554')).
query(connected('46302')).
query(connected('15135')).
query(connected('12511')).
query(connected('41745')).
query(connected('43157')).
query(connected('9098')).
query(connected('42550')).
query(connected('13293')).
query(connected('10280')).
query(connected('41748')).
query(connected('41746')).
query(connected('15943')).
query(connected('9097')).
query(connected('13278')).
query(connected('43179')).

66

line('635', '28866').
line('12423', '25045').
line('8646', '12361').
line('12969', '25330').
line('8602', '8615').
line('25332', '25337').
line('12447', '25054').
line('8636', '5211').
line('5169', '25307').
line('12879', '25307').
line('2291', '29138').
line('12963', '25329').
line('12449', '12451').
line('25086', '25087').
line('8405', '23144').
line('28866', '8617').
line('7951', '22378').
line('3429', '30449').
line('5196', '5197').
line('21866', '29578').
line('8405', '4519').
line('8614', '4519').
line('5169', '29579').
line('2331', '5206').
line('8406', '23144').
line('20269', '22378').
line('12963', '12969').
line('5213', '4736').
line('5205', '5206').
line('2333', '635').
line('22381', '6274').
line('8614', '12963').
line('12355', '25021').
line('8602', '23213').
line('29578', '29579').
line('2284', '6274').
line('17748', '25337').
line('12966', '25330').
line('2291', '29138').
line('25332', '28849').
line('442', '5211').
line('21865', '21867').
line('12480', '25054').
line('12448', '25054').
line('12968', '25333').
line('7951', '29425').
line('25352', '29179').
line('28849', '29179').
line('5212', '4736').
line('12452', '12449').
line('6775', '8632').
line('7951', '29425').
line('22378', '22379').
line('25086', '12394').
line('12968', '12969').
line('12451', '25058').
line('8309', '8406').
line('12496', '25084').
line('12361', '25084').
line('7951', '29425').
line('8405', '23145').
line('8646', '25086').
line('2284', '2331').
line('8646', '25021').
line('22381', '6274').
line('12461', '12496').
line('12448', '12461').
line('635', '8602').
line('18017', '25352').
line('23172', '28849').
line('4736', '29579').
line('29138', '6274').
line('5206', '2332').
line('21866', '21867').
line('17841', '25333').
line('22379', '25044').
line('18015', '25329').
line('2291', '20269').
line('12360', '25087').
line('2291', '29138').
line('5211', '8646').
line('2333', '5185').
line('8632', '23213').
line('29578', '22990').
line('25332', '25333').
line('4736', '29579').
line('2284', '6274').
line('22990', '29425').
line('29138', '2291').
line('12424', '25044').
line('2333', '635').
line('8646', '12394').
line('23145', '23172').
line('25045', '2284').
line('25337', '29179').
line('25084', '12502').
line('5185', '5197').
line('2284', '2291').
line('5169', '29579').
line('25057', '25058').
line('2284', '2291').
line('8614', '23213').
line('12452', '25055').
line('25055', '12452').
line('5184', '8617').
line('12878', '25307').
line('12360', '25021').
line('8245', '28849').
line('2284', '8663').
line('12969', '12967').
line('29578', '5197').
line('25044', '25045').
line('30449', '8245').
line('23144', '23145').
line('8405', '12967').
line('21865', '21866').
line('2333', '8634').
line('12452', '12453').
line('25056', '25058').
line('12501', '12502').
line('25056', '25057').
line('2284', '8646').
line('25330', '25329').
line('23172', '25352').
line('8634', '442').
line('7951', '29425').
line('5185', '8645').
line('2291', '22379').
line('12424', '12480').
line('25055', '25056').
line('2333', '2332').
line('21865', '5154').
line('22381', '25057').

station('12394').
station('4736').
station('8617').
station('12878').
station('12453').
station('8602').
station('8646').
station('12451').
station('12355').
station('8636').
station('12447').
station('12448').
station('12967').
station('12496').
station('12501').
station('12879').
station('12502').
station('8634').
station('12360').
station('12452').
station('12423').
station('5169').
station('2331').
station('12449').
station('2333').
station('8645').
station('5213').
station('12966').
station('12480').
station('12461').
station('8663').
station('12361').
station('5184').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('2284')).
query(connected('2291')).
query(connected('12969')).
query(connected('8405')).
query(connected('6274')).
query(connected('5206')).
query(connected('8614')).
query(connected('635')).
query(connected('5211')).
query(connected('5197')).
query(connected('5185')).
query(connected('12963')).
query(connected('2332')).
query(connected('12968')).
query(connected('442')).
query(connected('7951')).
query(connected('8406')).
query(connected('8632')).
query(connected('8245')).
query(connected('4519')).
query(connected('12424')).
query(connected('18015')).
query(connected('8615')).
query(connected('8309')).
query(connected('5196')).
query(connected('17748')).
query(connected('5205')).
query(connected('17841')).
query(connected('5212')).
query(connected('3429')).
query(connected('18017')).
query(connected('6775')).
query(connected('5154')).

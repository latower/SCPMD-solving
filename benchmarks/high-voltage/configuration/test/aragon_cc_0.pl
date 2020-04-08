52

line('4847', '4922').
line('46337', '20041').
line('4922', '57206').
line('24081', '30635').
line('61853', '29108').
line('10516', '30628').
line('43081', '57461').
line('11983', '29124').
line('5376', '10492').
line('10517', '57376').
line('8464', '57207').
line('10512', '10514').
line('64278', '55275').
line('30635', '55250').
line('39281', '30629').
line('11982', '24835').
line('44256', '26962').
line('8464', '20966').
line('43081', '43082').
line('4922', '58430').
line('42904', '55250').
line('57376', '30258').
line('18125', '57461').
line('30627', '24081').
line('53636', '22106').
line('10516', '44535').
line('44516', '24834').
line('46337', '20042').
line('21434', '55275').
line('42903', '58430').
line('12529', '20966').
line('39281', '44533').
line('10515', '30627').
line('64614', '55250').
line('9043', '21129').
line('64614', '55190').
line('64617', '57206').
line('39281', '30628').
line('44809', '57207').
line('26961', '26962').
line('42026', '10492').
line('55190', '64278').
line('30628', '30629').
line('30629', '22078').
line('29124', '45956').
line('5186', '44533').
line('45302', '24834').
line('61853', '30628').
line('42904', '46337').
line('41542', '32911').
line('13224', '46337').
line('10517', '61853').
line('13224', '24980').
line('20987', '10499').
line('60865', '32911').
line('43081', '9052').
line('24834', '21434').
line('5040', '10499').
line('18122', '57461').
line('22106', '10499').
line('10499', '55250').
line('12350', '24979').
line('24835', '24979').
line('42024', '42026').
line('39281', '10512').
line('4922', '44531').
line('10512', '10513').
line('42903', '30627').
line('11250', '57207').
line('8471', '57206').
line('18123', '26961').
line('39281', '11250').
line('42026', '64614').
line('46337', '20042').
line('18122', '18124').
line('29108', '22078').
line('4922', '20966').
line('42903', '57376').
line('45301', '45302').
line('10527', '30635').
line('4922', '8464').
line('51932', '60865').
line('42026', '42025').
line('24081', '22078').
line('11983', '24835').
line('42026', '10492').
line('42026', '42903').
line('30258', '42904').
line('32911', '26961').
line('9043', '22106').
line('26962', '21129').
line('39281', '29108').
line('10499', '44538').
line('44532', '12529').
line('13224', '24979').
line('10512', '44533').
line('10512', '20966').
line('46335', '24980').
line('43081', '55250').
line('18122', '60865').
line('10500', '64617').
line('25380', '55250').
line('43059', '64278').
line('8464', '9900').
line('42903', '30258').

plant('42024').
plant('42025').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('39281')).
query(connected('4922')).
query(connected('42903')).
query(connected('42026')).
query(connected('10512')).
query(connected('10499')).
query(connected('8464')).
query(connected('43081')).
query(connected('46337')).
query(connected('44533')).
query(connected('18122')).
query(connected('42904')).
query(connected('13224')).
query(connected('10492')).
query(connected('10517')).
query(connected('45302')).
query(connected('12529')).
query(connected('9043')).
query(connected('11250')).
query(connected('10516')).
query(connected('11983')).
query(connected('44535')).
query(connected('44532')).
query(connected('53636')).
query(connected('44538')).
query(connected('11982')).
query(connected('12350')).
query(connected('44531')).
query(connected('45301')).
query(connected('46335')).
query(connected('9900')).
query(connected('10513')).
query(connected('18123')).
query(connected('44809')).
query(connected('10515')).
query(connected('43082')).
query(connected('51932')).
query(connected('43059')).
query(connected('18125')).
query(connected('20042')).
query(connected('9052')).
query(connected('10500')).
query(connected('5040')).
query(connected('4847')).
query(connected('18124')).
query(connected('44516')).
query(connected('5186')).
query(connected('45956')).
query(connected('5376')).
query(connected('8471')).
query(connected('41542')).
query(connected('10514')).
query(connected('10527')).
query(connected('20041')).
query(connected('44256')).

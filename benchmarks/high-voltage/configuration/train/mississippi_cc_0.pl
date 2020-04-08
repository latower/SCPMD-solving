61

line('5366', '18391').
line('5255', '5256').
line('3272', '18367').
line('13633', '13774').
line('10279', '3947').
line('23969', '10286').
line('3275', '23967').
line('5241', '21895').
line('5306', '20681').
line('10295', '3275').
line('3294', '5230').
line('11162', '18397').
line('3273', '3274').
line('11162', '18366').
line('3277', '28736').
line('21881', '21891').
line('5250', '21894').
line('5229', '5230').
line('5366', '18368').
line('10295', '15870').
line('18368', '18369').
line('5229', '5232').
line('23968', '23967').
line('13633', '15971').
line('5366', '18394').
line('10284', '10285').
line('10273', '23965').
line('5229', '5230').
line('21883', '21884').
line('11161', '18365').
line('3275', '5365').
line('7303', '10267').
line('3277', '28736').
line('23965', '23966').
line('18391', '29617').
line('3316', '28739').
line('3294', '21881').
line('5237', '5238').
line('11161', '18397').
line('5237', '5365').
line('18364', '18365').
line('5235', '21885').
line('23965', '10278').
line('3275', '23968').
line('10266', '10273').
line('22688', '10268').
line('11015', '18394').
line('5237', '5238').
line('31024', '10304').
line('10837', '15991').
line('10285', '23969').
line('10304', '23975').
line('7303', '22688').
line('5234', '21883').
line('15550', '15971').
line('3294', '20681').
line('11161', '18364').
line('10282', '23968').
line('10265', '23960').
line('28736', '29617').
line('10300', '10295').
line('5255', '21896').
line('5366', '18367').
line('10277', '10278').
line('21889', '21890').
line('3273', '3274').
line('21880', '5235').
line('5366', '18366').
line('7308', '20680').
line('3274', '3272').
line('21889', '21894').
line('5229', '5232').
line('18368', '18395').
line('10295', '15869').
line('10265', '23964').
line('5365', '7303').
line('3294', '21880').
line('5365', '20680').
line('5306', '28739').
line('3294', '5230').
line('23960', '10267').
line('18365', '18397').
line('3273', '3275').
line('3294', '5230').
line('5234', '5241').
line('3294', '3316').
line('21883', '21885').
line('10295', '13774').
line('5256', '23964').
line('10302', '23975').
line('5232', '5237').
line('10300', '23975').
line('3294', '5230').
line('10280', '23966').
line('3951', '10305').
line('10266', '23960').
line('3294', '21881').
line('5237', '5365').
line('10295', '23969').
line('5366', '18369').
line('3316', '5367').
line('10279', '23966').
line('3277', '29617').
line('10280', '10281').
line('5237', '5238').
line('10281', '23967').
line('21890', '21891').
line('3951', '31024').
line('5365', '22688').
line('5250', '21884').
line('23964', '10276').
line('3951', '10837').
line('7304', '18364').
line('20680', '3294').
line('21895', '21897').
line('7308', '10286').
line('18369', '18391').
line('18366', '18367').
line('21896', '21899').
line('21897', '21899').
line('5230', '21880').
line('18394', '18395').

station('10279').
station('10295').
station('3272').
station('10278').
station('5235').
station('10282').
station('5241').
station('5256').
station('10305').
station('3275').
station('10277').
station('10300').
station('5229').
station('10302').
station('10304').
station('10280').
station('5230').
station('10273').
station('10268').
station('5232').
station('10276').
station('5255').
station('5250').
station('5366').
station('10284').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('3294')).
query(connected('5365')).
query(connected('5237')).
query(connected('11161')).
query(connected('3316')).
query(connected('7303')).
query(connected('3951')).
query(connected('5306')).
query(connected('5234')).
query(connected('13633')).
query(connected('10281')).
query(connected('10265')).
query(connected('10267')).
query(connected('13774')).
query(connected('10266')).
query(connected('3273')).
query(connected('10286')).
query(connected('10837')).
query(connected('15971')).
query(connected('3277')).
query(connected('10285')).
query(connected('11162')).
query(connected('7308')).
query(connected('3274')).
query(connected('5367')).
query(connected('15870')).
query(connected('15550')).
query(connected('11015')).
query(connected('3947')).
query(connected('15991')).
query(connected('5238')).
query(connected('15869')).
query(connected('7304')).

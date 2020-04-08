47

line('54918', '60593').
line('23650', '57967').
line('44546', '64627').
line('23654', '57967').
line('22731', '23651').
line('23650', '59023').
line('2824', '60540').
line('23651', '57968').
line('26616', '23654').
line('36922', '22060').
line('54918', '64637').
line('32592', '2858').
line('54918', '30063').
line('64637', '37030').
line('2599', '28308').
line('26616', '57528').
line('54918', '36922').
line('64635', '30651').
line('60540', '24086').
line('36866', '46568').
line('54918', '32633').
line('37030', '30682').
line('26617', '23651').
line('36917', '32633').
line('2858', '57964').
line('36891', '64635').
line('37030', '39140').
line('2858', '62364').
line('64317', '21306').
line('33358', '36891').
line('36922', '40660').
line('64627', '37030').
line('40660', '2781').
line('44560', '24087').
line('10551', '66687').
line('2851', '63207').
line('64636', '64317').
line('30651', '2599').
line('36922', '2859').
line('36866', '32592').
line('36866', '60465').
line('28308', '59023').
line('2789', '63207').
line('60593', '36917').
line('49396', '15806').
line('57528', '57967').
line('36922', '40660').
line('2874', '39140').
line('33358', '24086').
line('57968', '64636').
line('26617', '57968').
line('40901', '29742').
line('22731', '64635').
line('60593', '37030').
line('62247', '28308').
line('1515', '57969').
line('57964', '62364').
line('54918', '66687').
line('17981', '25771').
line('51929', '30063').
line('36866', '16532').
line('18562', '32067').
line('15919', '25771').
line('856', '21306').
line('62247', '59023').
line('36891', '25771').
line('44561', '24087').
line('26616', '26617').
line('2973', '29742').
line('62364', '29742').
line('2789', '16532').
line('6801', '22731').
line('44560', '64637').
line('64636', '57969').
line('32067', '22060').
line('33358', '30651').
line('36891', '44561').
line('2762', '23654').
line('2529', '51735').
line('23650', '23651').
line('36923', '22060').
line('2762', '60465').
line('62247', '67513').
line('30682', '2781').
line('37030', '14071').
line('36866', '49396').
line('64317', '21306').
line('24087', '30682').
line('36922', '10551').
line('36891', '24086').
line('2529', '67513').
line('2762', '57528').
line('2789', '2859').
line('32592', '60593').

station('15919').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('37030')).
query(connected('36866')).
query(connected('36922')).
query(connected('36891')).
query(connected('2858')).
query(connected('2762')).
query(connected('2789')).
query(connected('36917')).
query(connected('40660')).
query(connected('10551')).
query(connected('16532')).
query(connected('39140')).
query(connected('44561')).
query(connected('44560')).
query(connected('2529')).
query(connected('2599')).
query(connected('2859')).
query(connected('2781')).
query(connected('49396')).
query(connected('2973')).
query(connected('40901')).
query(connected('6801')).
query(connected('44546')).
query(connected('51929')).
query(connected('14071')).
query(connected('51735')).
query(connected('2874')).
query(connected('15806')).
query(connected('856')).
query(connected('46568')).
query(connected('17981')).
query(connected('18562')).
query(connected('1515')).
query(connected('2824')).
query(connected('36923')).
query(connected('2851')).

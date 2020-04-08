52

line('23098', '23127').
line('54847', '64029').
line('41471', '56827').
line('45284', '23197').
line('23198', '57037').
line('10114', '10113').
line('15123', '23097').
line('63747', '63458').
line('7729', '41610').
line('45284', '5546').
line('42967', '44224').
line('5546', '23198').
line('40575', '63747').
line('57036', '61099').
line('5546', '57038').
line('8011', '42079').
line('44098', '10114').
line('10115', '54847').
line('56965', '23127').
line('42858', '56826').
line('29517', '57399').
line('56827', '28830').
line('29928', '30014').
line('10258', '54848').
line('41610', '29928').
line('45284', '28246').
line('57399', '28713').
line('63458', '5546').
line('64893', '55185').
line('5546', '63747').
line('57038', '64029').
line('8011', '57036').
line('63964', '63124').
line('8007', '23197').
line('42967', '44224').
line('56965', '23097').
line('23198', '57038').
line('61099', '54847').
line('63965', '55266').
line('30174', '57330').
line('44236', '28713').
line('23453', '30174').
line('23098', '63965').
line('63960', '41800').
line('56826', '56827').
line('40575', '41196').
line('5546', '22657').
line('8815', '57330').
line('40575', '57399').
line('45284', '62061').
line('40575', '63458').
line('24503', '54848').
line('57329', '23452').
line('56826', '57329').
line('42858', '57329').
line('8133', '5546').
line('62061', '64893').
line('30023', '54844').
line('64893', '54847').
line('44224', '54848').
line('41800', '7729').
line('10868', '28713').
line('40575', '29517').
line('63963', '20836').
line('45284', '63960').
line('28246', '41815').
line('41471', '62549').
line('45284', '41802').
line('45284', '30014').
line('41471', '20325').
line('23452', '23453').
line('30174', '28830').
line('63970', '23127').
line('15123', '54844').
line('41800', '30014').
line('30023', '41815').
line('17576', '60349').
line('54848', '5546').
line('40575', '42935').
line('10115', '54847').
line('63970', '41815').
line('44224', '24503').
line('41815', '7751').
line('41471', '28830').
line('57036', '57037').
line('10114', '10113').
line('20437', '63124').
line('23097', '63964').
line('42079', '8815').
line('40626', '22657').
line('45284', '63963').
line('60349', '61099').
line('56965', '63970').
line('30023', '23098').
line('42858', '23452').
line('63963', '63964').
line('10113', '10115').
line('8011', '42079').
line('64029', '61099').
line('10258', '24503').
line('29517', '60349').
line('44224', '10251').
line('10113', '10115').
line('23197', '57037').

station('17576').
station('10868').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('5546')).
query(connected('45284')).
query(connected('40575')).
query(connected('41471')).
query(connected('41815')).
query(connected('44224')).
query(connected('41800')).
query(connected('42858')).
query(connected('7729')).
query(connected('10113')).
query(connected('10115')).
query(connected('41610')).
query(connected('8815')).
query(connected('8011')).
query(connected('10258')).
query(connected('42079')).
query(connected('15123')).
query(connected('10114')).
query(connected('8007')).
query(connected('42935')).
query(connected('7751')).
query(connected('41802')).
query(connected('10251')).
query(connected('44236')).
query(connected('8133')).
query(connected('44098')).
query(connected('41196')).
query(connected('42967')).
query(connected('40626')).

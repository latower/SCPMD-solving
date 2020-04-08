27

line('21312', '63007').
line('20599', '10594').
line('40682', '43544').
line('20599', '24104').
line('8159', '8320').
line('7246', '63494').
line('7246', '54523').
line('42183', '29057').
line('7246', '40996').
line('10035', '63494').
line('7669', '23074').
line('40682', '8159').
line('23256', '41436').
line('40996', '7246').
line('20599', '20242').
line('28068', '28094').
line('40996', '42265').
line('42265', '57197').
line('20599', '20242').
line('32000', '24104').
line('40682', '41327').
line('41353', '40682').
line('20599', '54523').
line('5112', '57197').
line('7246', '36769').
line('42183', '2679').
line('5112', '42265').
line('7246', '21312').
line('36769', '2679').
line('40682', '41353').
line('23074', '63007').
line('36769', '20365').
line('54713', '40682').
line('32000', '14177').
line('28094', '54713').
line('36769', '36771').
line('40682', '8320').
line('36769', '2679').
line('42183', '2679').
line('7246', '63494').
line('23256', '29057').
line('8159', '8320').
line('10734', '54713').
line('36656', '32000').
line('7246', '10035').
line('36769', '43544').
line('2679', '14177').
line('20599', '45600').
line('41436', '8159').
line('42183', '29057').
line('10594', '24104').
line('41436', '8159').
line('41436', '20388').
line('42241', '23256').

plant('10035').
plant('8320').
plant('5112').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('40682')).
query(connected('7246')).
query(connected('36769')).
query(connected('2679')).
query(connected('41436')).
query(connected('42265')).
query(connected('8159')).
query(connected('40996')).
query(connected('10594')).
query(connected('42183')).
query(connected('43544')).
query(connected('14177')).
query(connected('36656')).
query(connected('10734')).
query(connected('7669')).
query(connected('41327')).
query(connected('36771')).
query(connected('45600')).
query(connected('42241')).
query(connected('41353')).

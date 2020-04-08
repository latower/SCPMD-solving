74

line('3097', '9646').
line('8619', '29612').
line('2444', '28972').
line('8621', '29612').
line('3499', '9665').
line('20488', '23671').
line('28974', '23677').
line('8722', '18050').
line('484', '30506').
line('18043', '29747').
line('9646', '15686').
line('2278', '9660').
line('9675', '9676').
line('15554', '31171').
line('31172', '31173').
line('484', '28973').
line('8619', '28809').
line('5720', '6033').
line('8064', '28807').
line('8674', '8675').
line('3499', '28972').
line('9656', '15556').
line('20672', '20673').
line('20884', '20886').
line('30305', '3499').
line('23675', '28973').
line('3097', '3436').
line('28975', '31173').
line('20312', '3289').
line('4766', '13740').
line('8077', '28809').
line('13402', '30305').
line('20865', '3460').
line('20312', '20673').
line('9656', '9645').
line('9644', '9657').
line('8618', '28809').
line('13073', '28974').
line('5149', '8722').
line('23674', '23675').
line('9666', '9667').
line('30305', '20885').
line('23672', '23673').
line('3436', '13389').
line('3436', '13389').
line('2699', '9635').
line('5150', '5155').
line('2801', '20488').
line('4977', '20866').
line('3460', '20866').
line('23672', '23673').
line('18043', '8064').
line('9668', '23678').
line('9671', '28975').
line('8017', '28807').
line('3289', '20672').
line('21862', '5149').
line('3436', '13389').
line('3499', '23670').
line('31171', '31172').
line('9656', '15556').
line('4977', '9661').
line('23676', '28973').
line('3097', '29612').
line('8621', '8618').
line('31172', '31173').
line('20884', '29676').
line('9656', '15556').
line('3436', '13389').
line('28870', '8675').
line('9678', '28975').
line('9676', '30506').
line('9668', '23678').
line('2278', '9659').
line('9644', '29612').
line('9656', '9659').
line('3460', '20673').
line('28929', '9635').
line('8674', '9678').
line('4766', '21862').
line('3109', '15686').
line('2444', '3460').
line('2604', '8077').
line('28974', '23674').
line('3097', '20865').
line('23671', '23672').
line('8706', '8707').
line('2278', '9660').
line('23676', '23677').
line('9644', '9653').
line('20885', '20886').
line('2801', '29676').
line('5944', '6033').
line('4977', '28971').
line('9675', '30507').
line('5719', '5720').
line('3499', '23670').
line('5944', '5905').
line('8706', '28556').
line('8551', '31156').
line('9644', '29612').
line('28974', '10829').
line('8618', '9681').
line('9665', '9666').
line('9667', '9676').
line('2604', '9681').
line('20672', '3499').
line('14186', '15554').
line('2444', '9671').
line('8621', '29612').
line('8675', '28870').
line('9664', '9676').
line('3436', '13389').
line('3460', '28807').
line('20885', '29676').
line('9660', '31156').
line('3028', '5149').
line('23675', '23676').
line('28974', '30507').
line('23674', '28974').
line('29747', '18043').
line('30506', '30507').
line('9653', '9645').
line('3436', '28976').
line('23677', '23678').
line('2604', '28976').
line('5151', '5155').
line('9656', '9659').
line('23670', '20886').
line('2278', '9659').
line('3097', '29612').
line('31171', '3109').
line('28807', '31156').
line('28807', '29747').
line('20488', '20884').
line('3499', '9661').
line('5149', '28556').
line('20866', '28807').
line('2278', '5905').
line('8064', '28807').
line('2604', '5150').
line('9664', '23671').
line('3097', '3436').
line('3097', '20865').
line('9665', '28971').
line('8673', '8674').
line('5151', '28556').
line('3436', '13389').
line('2699', '23673').

station('9681').
station('9671').
station('3028').
station('9667').
station('5150').
station('9657').
station('9644').
station('8707').
station('5720').
station('9653').
station('2604').
station('5149').
station('9666').
station('9664').
station('9676').
station('484').
station('9668').
station('8722').
station('8619').
plant('13389').
station('5905').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('3499')).
query(connected('3460')).
query(connected('3097')).
query(connected('4977')).
query(connected('8618')).
query(connected('2278')).
query(connected('9665')).
query(connected('3436')).
query(connected('9656')).
query(connected('2444')).
query(connected('8674')).
query(connected('2699')).
query(connected('9646')).
query(connected('9659')).
query(connected('6033')).
query(connected('9635')).
query(connected('5944')).
query(connected('9660')).
query(connected('5155')).
query(connected('9675')).
query(connected('9645')).
query(connected('4766')).
query(connected('8621')).
query(connected('8706')).
query(connected('15554')).
query(connected('9678')).
query(connected('8675')).
query(connected('3109')).
query(connected('3289')).
query(connected('2801')).
query(connected('8077')).
query(connected('8064')).
query(connected('15686')).
query(connected('5151')).
query(connected('9661')).
query(connected('8017')).
query(connected('8673')).
query(connected('8551')).
query(connected('13740')).
query(connected('13402')).
query(connected('13073')).
query(connected('15556')).
query(connected('14186')).
query(connected('5719')).
query(connected('10829')).

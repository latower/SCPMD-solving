10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('38228','22288').
0.19::trusts('10143','22288').
0.1::trusts('38018','22288').
0.1::trusts('31265','22288').
0.1::trusts('43451','22288').
0.1::trusts('22288','38228').
0.19::trusts('28672','38228').
0.1::trusts('33429','38228').
0.1::trusts('60071','38228').
0.1::trusts('22288','31265').
0.3439::trusts('43455','31265').
0.1::trusts('22288','43451').
0.1::trusts('28670','28672').
0.271::trusts('38228','28672').
0.271::trusts('28672','28670').
0.1::trusts('38228','33429').
0.19::trusts('42255','33429').
0.1::trusts('38228','60071').
0.271::trusts('33429','42255').
0.40951::trusts('31265','43455').
0.1::trusts('22288','43398').
0.1::trusts('60072','60589').
0.1::trusts('60071','60072').
0.1::trusts('43451','39512').

person('22288').
person('38228').
person('10143').
person('38018').
person('31265').
person('43451').
person('28672').
person('28670').
person('33429').
person('60071').
person('42255').
person('43455').
person('43398').
person('60589').
person('60072').
person('39512').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22288')).
query(buys('38228')).
query(buys('10143')).
query(buys('38018')).
query(buys('31265')).
query(buys('43451')).
query(buys('28672')).
query(buys('28670')).
query(buys('33429')).
query(buys('60071')).
query(buys('42255')).
query(buys('43455')).
query(buys('43398')).
query(buys('60589')).
query(buys('60072')).
query(buys('39512')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.814697981114816::trusts('21635','21017').
0.19::trusts('21938','21017').
0.1::trusts('17390','21017').
0.864914828232701::trusts('21017','21635').
0.1::trusts('12459','21635').
0.952898713027537::trusts('21947','21635').
0.1::trusts('28803','21635').
0.271::trusts('21017','21938').
0.3439::trusts('10470','21938').
0.468559::trusts('17390','21938').
0.271::trusts('21017','17390').
0.56953279::trusts('21938','17390').
0.1::trusts('21635','12459').
0.935389181107733::trusts('21635','21947').
0.19::trusts('38178','21947').
0.19::trusts('29241','21947').
0.1::trusts('12459','22456').
0.19::trusts('21947','38178').
0.1::trusts('43313','38178').
0.19::trusts('38178','43313').
0.1::trusts('21947','29241').
0.271::trusts('39425','29241').
0.40951::trusts('29241','39425').
0.271::trusts('10470','26001').
0.1::trusts('10470','54338').
0.1::trusts('10470','28912').
0.1::trusts('10470','3744').
0.1::trusts('28803','28810').

person('21017').
person('21635').
person('21938').
person('17390').
person('12459').
person('21947').
person('28803').
person('10470').
person('22456').
person('38178').
person('43313').
person('29241').
person('39425').
person('26001').
person('54338').
person('28912').
person('3744').
person('28810').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21017')).
query(buys('21635')).
query(buys('21938')).
query(buys('17390')).
query(buys('12459')).
query(buys('21947')).
query(buys('28803')).
query(buys('10470')).
query(buys('22456')).
query(buys('38178')).
query(buys('43313')).
query(buys('29241')).
query(buys('39425')).
query(buys('26001')).
query(buys('54338')).
query(buys('28912')).
query(buys('3744')).
query(buys('28810')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2233','2993').
0.56953279::trusts('2236','2993').
0.1::trusts('5199','2993').
0.19::trusts('2993','2233').
0.40951::trusts('4835','2233').
0.1::trusts('2236','2233').
0.271::trusts('5199','2233').
0.271::trusts('5193','2233').
0.612579511::trusts('2993','2236').
0.19::trusts('2235','2236').
0.1::trusts('3028','2236').
0.271::trusts('5197','2236').
0.19::trusts('2233','5199').
0.19::trusts('2236','5199').
0.468559::trusts('5197','5199').
0.1::trusts('37813','6540').
0.1::trusts('4835','6540').
0.1::trusts('20445','6540').
0.3439::trusts('38312','6540').
0.1::trusts('6540','37813').
0.19::trusts('2993','4835').
0.1::trusts('6540','4835').
0.271::trusts('2233','4835').
0.5217031::trusts('6538','4835').
0.1::trusts('6540','20445').
0.19::trusts('6540','38312').
0.468559::trusts('17651','38312').
0.1::trusts('7985','38312').
0.468559::trusts('4835','6538').
0.19::trusts('38312','7985').
0.40951::trusts('2993','2235').
0.271::trusts('2236','2235').
0.1::trusts('2233','5193').
0.271::trusts('2236','3028').
0.3439::trusts('2236','5197').
0.794108867905351::trusts('5199','5197').
0.1::trusts('28026','5197').
0.1::trusts('5199','28026').
0.1::trusts('5197','28026').
0.1::trusts('38312','43599').

person('2993').
person('2233').
person('2236').
person('5199').
person('6540').
person('37813').
person('4835').
person('20445').
person('38312').
person('6538').
person('17651').
person('7985').
person('2235').
person('5193').
person('3028').
person('5197').
person('28026').
person('43599').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2993')).
query(buys('2233')).
query(buys('2236')).
query(buys('5199')).
query(buys('6540')).
query(buys('37813')).
query(buys('4835')).
query(buys('20445')).
query(buys('38312')).
query(buys('6538')).
query(buys('17651')).
query(buys('7985')).
query(buys('2235')).
query(buys('5193')).
query(buys('3028')).
query(buys('5197')).
query(buys('28026')).
query(buys('43599')).

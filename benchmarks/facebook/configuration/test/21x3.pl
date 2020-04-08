10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('39940','10193').
0.271::trusts('10193','39940').
0.19::trusts('39947','39940').
0.1::trusts('39940','39947').
0.1::trusts('39942','39947').
0.1::trusts('39951','39947').
0.271::trusts('28063','46462').
0.3439::trusts('35077','46462').
0.271::trusts('26120','46462').
0.271::trusts('46462','28063').
0.612579511::trusts('45205','28063').
0.19::trusts('40511','28063').
0.3439::trusts('46462','35077').
0.5217031::trusts('47848','35077').
0.468559::trusts('46462','26120').
0.468559::trusts('28063','45205').
0.920233556923127::trusts('40511','40810').
0.920233556923127::trusts('40810','40511').
0.19::trusts('28063','40511').
0.56953279::trusts('50075','40511').
0.271::trusts('39947','39942').
0.1::trusts('30551','39942').
0.19::trusts('40810','46026').
0.1::trusts('40810','50075').
0.56953279::trusts('40511','50075').
0.40951::trusts('35077','47848').
0.19::trusts('57197','47848').
0.1::trusts('39947','57197').
0.19::trusts('47848','57197').
0.1::trusts('47848','18109').
0.1::trusts('40810','52179').
0.1::trusts('39947','34540').
0.1::trusts('35077','34540').
0.1::trusts('10193','10204').

person('10193').
person('39940').
person('39947').
person('46462').
person('28063').
person('35077').
person('26120').
person('45205').
person('40810').
person('40511').
person('39942').
person('39951').
person('30551').
person('46026').
person('50075').
person('47848').
person('57197').
person('18109').
person('52179').
person('34540').
person('10204').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('10193')).
query(buys('39940')).
query(buys('39947')).
query(buys('46462')).
query(buys('28063')).
query(buys('35077')).
query(buys('26120')).
query(buys('45205')).
query(buys('40810')).
query(buys('40511')).
query(buys('39942')).
query(buys('39951')).
query(buys('30551')).
query(buys('46026')).
query(buys('50075')).
query(buys('47848')).
query(buys('57197')).
query(buys('18109')).
query(buys('52179')).
query(buys('34540')).
query(buys('10204')).

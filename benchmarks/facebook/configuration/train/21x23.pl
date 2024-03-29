10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('25139','28141').
0.271::trusts('25142','28141').
0.1::trusts('370','28141').
0.1::trusts('25143','28141').
0.1::trusts('6388','28141').
0.19::trusts('22547','28141').
0.19::trusts('38729','28141').
0.1::trusts('25144','28141').
0.1::trusts('28141','25139').
0.19::trusts('25142','25139').
0.19::trusts('10738','25139').
0.19::trusts('25143','25139').
0.1::trusts('48645','25139').
0.5217031::trusts('28141','25142').
0.271::trusts('25139','25142').
0.1::trusts('24352','25142').
0.1::trusts('22547','25142').
0.40951::trusts('28141','370').
0.3439::trusts('28141','25143').
0.1::trusts('25138','25143').
0.1::trusts('44786','25143').
0.1::trusts('28141','6388').
0.1::trusts('28141','22547').
0.1::trusts('25142','22547').
0.19::trusts('28141','38729').
0.1::trusts('28141','25144').
0.3439::trusts('24352','26672').
0.19::trusts('26672','24352').
0.1::trusts('25142','24352').
0.3439::trusts('25139','10738').
0.1::trusts('25141','10738').
0.1::trusts('25143','10738').
0.19::trusts('25138','10738').
0.1::trusts('25147','10738').
0.19::trusts('25139','48645').
0.1::trusts('33182','25138').
0.19::trusts('10738','25138').
0.19::trusts('25147','25138').
0.1::trusts('25143','44786').
0.1::trusts('25139','25146').
0.1::trusts('25139','48646').
0.1::trusts('22547','59777').

person('28141').
person('25139').
person('25142').
person('370').
person('25143').
person('6388').
person('22547').
person('38729').
person('25144').
person('26672').
person('24352').
person('10738').
person('48645').
person('25141').
person('25138').
person('25147').
person('44786').
person('33182').
person('25146').
person('48646').
person('59777').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('28141')).
query(buys('25139')).
query(buys('25142')).
query(buys('370')).
query(buys('25143')).
query(buys('6388')).
query(buys('22547')).
query(buys('38729')).
query(buys('25144')).
query(buys('26672')).
query(buys('24352')).
query(buys('10738')).
query(buys('48645')).
query(buys('25141')).
query(buys('25138')).
query(buys('25147')).
query(buys('44786')).
query(buys('33182')).
query(buys('25146')).
query(buys('48646')).
query(buys('59777')).

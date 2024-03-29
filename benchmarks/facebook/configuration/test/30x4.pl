10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.56953279::trusts('53668','3112').
0.1::trusts('7619','3112').
0.19::trusts('3112','53668').
0.1::trusts('3112','7619').
0.1::trusts('4610','7619').
0.1::trusts('38035','7619').
0.1::trusts('1943','7619').
0.1::trusts('31571','7619').
0.1::trusts('18862','7619').
0.19::trusts('45979','7619').
0.19::trusts('38681','4610').
0.19::trusts('11211','4610').
0.19::trusts('38035','4610').
0.1::trusts('11935','4610').
0.19::trusts('4610','38681').
0.1::trusts('11205','38681').
0.1::trusts('38035','38681').
0.1::trusts('58326','38681').
0.1::trusts('4610','11211').
0.1::trusts('11205','11211').
0.468559::trusts('28000','11211').
0.56953279::trusts('51060','11211').
0.1::trusts('19270','11211').
0.40951::trusts('11344','11211').
0.1::trusts('26494','11211').
0.1::trusts('4610','38035').
0.1::trusts('38681','38035').
0.19::trusts('11205','38035').
0.1::trusts('45728','38035').
0.1::trusts('31571','38035').
0.1::trusts('42992','38035').
0.271::trusts('4610','11935').
0.1::trusts('11211','11205').
0.271::trusts('38035','11205').
0.1::trusts('7619','11205').
0.1::trusts('45728','11205').
0.1::trusts('11213','11205').
0.19::trusts('31571','11205').
0.1::trusts('11205','45728').
0.19::trusts('38035','45728').
0.1::trusts('11205','11213').
0.19::trusts('11205','31571').
0.1::trusts('38484','31571').
0.3439::trusts('11211','28000').
0.3439::trusts('11211','51060').
0.1::trusts('11211','19270').
0.1::trusts('45908','19270').
0.271::trusts('11211','11344').
0.1::trusts('49540','11344').
0.271::trusts('11211','26494').
0.19::trusts('19270','45908').
0.1::trusts('11344','49540').
0.1::trusts('38035','42992').
0.19::trusts('1943','22837').
0.1::trusts('11205','1943').
0.1::trusts('22837','1943').
0.1::trusts('7619','1943').
0.19::trusts('7619','45979').
0.1::trusts('31571','38484').
0.1::trusts('38483','38484').
0.1::trusts('22837','61312').
0.1::trusts('11213','49413').
0.1::trusts('4610','51841').

person('3112').
person('53668').
person('7619').
person('4610').
person('38681').
person('11211').
person('38035').
person('11935').
person('11205').
person('58326').
person('45728').
person('11213').
person('31571').
person('28000').
person('51060').
person('19270').
person('11344').
person('26494').
person('45908').
person('49540').
person('42992').
person('22837').
person('1943').
person('18862').
person('45979').
person('38484').
person('38483').
person('61312').
person('49413').
person('51841').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3112')).
query(buys('53668')).
query(buys('7619')).
query(buys('4610')).
query(buys('38681')).
query(buys('11211')).
query(buys('38035')).
query(buys('11935')).
query(buys('11205')).
query(buys('58326')).
query(buys('45728')).
query(buys('11213')).
query(buys('31571')).
query(buys('28000')).
query(buys('51060')).
query(buys('19270')).
query(buys('11344')).
query(buys('26494')).
query(buys('45908')).
query(buys('49540')).
query(buys('42992')).
query(buys('22837')).
query(buys('1943')).
query(buys('18862')).
query(buys('45979')).
query(buys('38484')).
query(buys('38483')).
query(buys('61312')).
query(buys('49413')).
query(buys('51841')).

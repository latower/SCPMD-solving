10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.68618940391::trusts('6635','3465').
0.612579511::trusts('6636','3465').
0.1::trusts('635','3465').
0.7458134171671::trusts('3465','6635').
0.1::trusts('10313','6635').
0.271::trusts('15519','6635').
0.1::trusts('635','6635').
0.271::trusts('14427','6635').
0.1::trusts('19607','6635').
0.901522909781639::trusts('3465','6636').
0.1::trusts('3465','635').
0.271::trusts('6635','635').
0.19::trusts('6635','10313').
0.19::trusts('6635','15519').
0.1::trusts('23405','15519').
0.19::trusts('15540','15519').
0.1::trusts('6635','14427').
0.1::trusts('11392','14427').
0.19::trusts('15519','23405').
0.19::trusts('22062','23405').
0.271::trusts('25686','23405').
0.19::trusts('23405','25686').
0.19::trusts('22062','25686').
0.19::trusts('22062','8898').
0.3439::trusts('15519','15540').
0.19::trusts('14427','11392').
0.1::trusts('25686','38134').
0.19::trusts('33213','38134').
0.1::trusts('14427','50410').
0.1::trusts('10313','44327').

person('3465').
person('6635').
person('6636').
person('635').
person('10313').
person('15519').
person('14427').
person('19607').
person('23405').
person('22062').
person('25686').
person('8898').
person('15540').
person('11392').
person('38134').
person('33213').
person('50410').
person('44327').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3465')).
query(buys('6635')).
query(buys('6636')).
query(buys('635')).
query(buys('10313')).
query(buys('15519')).
query(buys('14427')).
query(buys('19607')).
query(buys('23405')).
query(buys('22062')).
query(buys('25686')).
query(buys('8898')).
query(buys('15540')).
query(buys('11392')).
query(buys('38134')).
query(buys('33213')).
query(buys('50410')).
query(buys('44327')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.56953279::trusts('50178','38541').
0.1::trusts('38844','38541').
0.19::trusts('23488','38541').
0.1::trusts('32923','38541').
0.612579511::trusts('38541','50178').
0.19::trusts('10499','50178').
0.1::trusts('48572','50178').
0.19::trusts('49242','50178').
0.19::trusts('38541','38844').
0.19::trusts('38851','38844').
0.1::trusts('6068','38844').
0.3439::trusts('38541','23488').
0.271::trusts('39484','23488').
0.40951::trusts('50178','10499').
0.1::trusts('50178','48572').
0.1::trusts('26329','49242').
0.3439::trusts('50178','49242').
0.1::trusts('38844','38851').
0.1::trusts('26978','33877').
0.19::trusts('39484','33877').
0.1::trusts('33877','26978').
0.271::trusts('41865','26978').
0.1::trusts('15496','39484').
0.1::trusts('33877','39484').
0.1::trusts('23488','39484').
0.1::trusts('38844','6068').
0.271::trusts('26978','41865').
0.1::trusts('26329','29252').
0.1::trusts('50178','26559').

person('38541').
person('50178').
person('38844').
person('23488').
person('32923').
person('10499').
person('48572').
person('49242').
person('38851').
person('33877').
person('26978').
person('39484').
person('6068').
person('41865').
person('15496').
person('26329').
person('29252').
person('26559').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('38541')).
query(buys('50178')).
query(buys('38844')).
query(buys('23488')).
query(buys('32923')).
query(buys('10499')).
query(buys('48572')).
query(buys('49242')).
query(buys('38851')).
query(buys('33877')).
query(buys('26978')).
query(buys('39484')).
query(buys('6068')).
query(buys('41865')).
query(buys('15496')).
query(buys('26329')).
query(buys('29252')).
query(buys('26559')).

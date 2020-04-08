10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('11770','9601').
0.1::trusts('9601','11770').
0.19::trusts('21798','11770').
0.40951::trusts('11778','11770').
0.19::trusts('37103','11770').
0.1::trusts('25347','11770').
0.1::trusts('19172','11770').
0.1::trusts('11771','11770').
0.19::trusts('11770','21798').
0.19::trusts('11778','21798').
0.19::trusts('37103','21798').
0.1::trusts('21798','11778').
0.19::trusts('11770','11778').
0.19::trusts('11771','11778').
0.1::trusts('38701','11778').
0.19::trusts('21798','37103').
0.19::trusts('11770','37103').
0.1::trusts('11770','25347').
0.1::trusts('11770','19172').
0.19::trusts('11778','11771').
0.1::trusts('11778','38701').
0.1::trusts('60176','38701').
0.19::trusts('32445','38701').
0.1::trusts('25134','38701').
0.19::trusts('38701','60176').
0.19::trusts('38701','32445').
0.19::trusts('38701','25134').
0.1::trusts('51691','25134').
0.1::trusts('11764','22505').
0.1::trusts('11770','11764').
0.1::trusts('11778','11764').
0.1::trusts('11778','2344').
0.1::trusts('11778','7113').
0.1::trusts('28746','51691').
0.1::trusts('9601','26028').
0.1::trusts('51691','28746').
0.1::trusts('22505','49927').

person('9601').
person('11770').
person('21798').
person('11778').
person('37103').
person('25347').
person('19172').
person('11771').
person('38701').
person('60176').
person('32445').
person('25134').
person('22505').
person('11764').
person('2344').
person('7113').
person('51691').
person('26028').
person('28746').
person('49927').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9601')).
query(buys('11770')).
query(buys('21798')).
query(buys('11778')).
query(buys('37103')).
query(buys('25347')).
query(buys('19172')).
query(buys('11771')).
query(buys('38701')).
query(buys('60176')).
query(buys('32445')).
query(buys('25134')).
query(buys('22505')).
query(buys('11764')).
query(buys('2344')).
query(buys('7113')).
query(buys('51691')).
query(buys('26028')).
query(buys('28746')).
query(buys('49927')).

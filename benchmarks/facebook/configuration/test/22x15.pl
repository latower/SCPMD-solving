10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('213','4246').
0.1::trusts('982','4246').
0.19::trusts('13030','4246').
0.1::trusts('3211','4246').
0.1::trusts('4261','4246').
0.1::trusts('4265','4246').
0.271::trusts('4246','213').
0.1::trusts('2699','213').
0.19::trusts('4263','213').
0.19::trusts('25444','213').
0.19::trusts('25478','213').
0.1::trusts('943','213').
0.1::trusts('4246','982').
0.1::trusts('971','982').
0.1::trusts('4246','4261').
0.1::trusts('4263','4261').
0.1::trusts('4246','4265').
0.1::trusts('25444','4265').
0.1::trusts('213','2699').
0.1::trusts('213','4263').
0.19::trusts('4261','4263').
0.1::trusts('4265','25444').
0.1::trusts('30955','25444').
0.19::trusts('213','25478').
0.271::trusts('10965','25478').
0.1::trusts('213','943').
0.1::trusts('25444','30955').
0.271::trusts('25478','10965').
0.1::trusts('2535','10965').
0.1::trusts('7359','10965').
0.1::trusts('10965','2535').
0.1::trusts('10198','2535').
0.1::trusts('3211','4529').
0.1::trusts('10965','7359').
0.1::trusts('4246','851').
0.1::trusts('30955','57342').
0.1::trusts('25444','55329').

person('4246').
person('213').
person('982').
person('13030').
person('3211').
person('4261').
person('4265').
person('2699').
person('4263').
person('25444').
person('25478').
person('943').
person('971').
person('30955').
person('10965').
person('2535').
person('10198').
person('4529').
person('7359').
person('851').
person('57342').
person('55329').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4246')).
query(buys('213')).
query(buys('982')).
query(buys('13030')).
query(buys('3211')).
query(buys('4261')).
query(buys('4265')).
query(buys('2699')).
query(buys('4263')).
query(buys('25444')).
query(buys('25478')).
query(buys('943')).
query(buys('971')).
query(buys('30955')).
query(buys('10965')).
query(buys('2535')).
query(buys('10198')).
query(buys('4529')).
query(buys('7359')).
query(buys('851')).
query(buys('57342')).
query(buys('55329')).

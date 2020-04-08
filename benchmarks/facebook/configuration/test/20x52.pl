10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('6767','6763').
0.1::trusts('28448','6763').
0.1::trusts('28103','6763').
0.1::trusts('6763','6767').
0.271::trusts('14445','6767').
0.1::trusts('6768','6767').
0.1::trusts('6764','6767').
0.1::trusts('6763','28448').
0.1::trusts('6763','28103').
0.1::trusts('11912','14445').
0.612579511::trusts('36535','14445').
0.1::trusts('6768','14445').
0.19::trusts('12135','14445').
0.1::trusts('58671','14445').
0.271::trusts('6767','14445').
0.1::trusts('14445','11912').
0.1::trusts('50587','11912').
0.19::trusts('36535','6768').
0.19::trusts('6767','6768').
0.271::trusts('4841','6768').
0.19::trusts('4845','6768').
0.19::trusts('14445','12135').
0.1::trusts('14445','58671').
0.271::trusts('11912','50587').
0.3439::trusts('6768','4841').
0.19::trusts('4845','4841').
0.19::trusts('6768','4845').
0.1::trusts('49699','4845').
0.1::trusts('36535','38383').
0.1::trusts('36535','38382').
0.19::trusts('14445','53208').
0.1::trusts('6767','59061').
0.1::trusts('11912','53575').

person('6763').
person('6767').
person('28448').
person('28103').
person('14445').
person('11912').
person('36535').
person('6768').
person('12135').
person('58671').
person('50587').
person('4841').
person('4845').
person('6764').
person('49699').
person('38383').
person('38382').
person('53208').
person('59061').
person('53575').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6763')).
query(buys('6767')).
query(buys('28448')).
query(buys('28103')).
query(buys('14445')).
query(buys('11912')).
query(buys('36535')).
query(buys('6768')).
query(buys('12135')).
query(buys('58671')).
query(buys('50587')).
query(buys('4841')).
query(buys('4845')).
query(buys('6764')).
query(buys('49699')).
query(buys('38383')).
query(buys('38382')).
query(buys('53208')).
query(buys('59061')).
query(buys('53575')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('18384','21671').
0.1::trusts('5991','21671').
0.5217031::trusts('12198','21671').
0.3439::trusts('24084','21671').
0.1::trusts('26926','21671').
0.68618940391::trusts('21671','18384').
0.1::trusts('24084','18384').
0.271::trusts('32443','18384').
0.271::trusts('33871','18384').
0.19::trusts('21671','5991').
0.19::trusts('6014','5991').
0.1::trusts('24084','5991').
0.1::trusts('32207','5991').
0.920233556923127::trusts('21671','12198').
0.1::trusts('17783','12198').
0.468559::trusts('21671','24084').
0.19::trusts('18384','24084').
0.1::trusts('48363','24084').
0.1::trusts('12198','26926').
0.271::trusts('18384','32443').
0.271::trusts('18384','33871').
0.3439::trusts('5991','6014').
0.271::trusts('32629','6014').
0.3439::trusts('6014','32629').
0.19::trusts('5991','32207').
0.1::trusts('12198','17783').
0.1::trusts('24084','48363').
0.1::trusts('21671','15018').
0.1::trusts('6014','29085').
0.1::trusts('62487','29085').

person('21671').
person('18384').
person('5991').
person('12198').
person('24084').
person('26926').
person('32443').
person('33871').
person('6014').
person('32629').
person('32207').
person('17783').
person('48363').
person('15018').
person('29085').
person('62487').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21671')).
query(buys('18384')).
query(buys('5991')).
query(buys('12198')).
query(buys('24084')).
query(buys('26926')).
query(buys('32443')).
query(buys('33871')).
query(buys('6014')).
query(buys('32629')).
query(buys('32207')).
query(buys('17783')).
query(buys('48363')).
query(buys('15018')).
query(buys('29085')).
query(buys('62487')).

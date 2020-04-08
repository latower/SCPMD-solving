10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('16923','25040').
0.19::trusts('44587','25040').
0.1::trusts('29409','25040').
0.1::trusts('42359','16923').
0.1::trusts('44586','16923').
0.1::trusts('44587','16923').
0.1::trusts('25040','44587').
0.1::trusts('48975','44587').
0.19::trusts('16923','44587').
0.1::trusts('44588','44587').
0.1::trusts('44587','48975').
0.1::trusts('55339','48975').
0.1::trusts('31399','48975').
0.1::trusts('62039','48975').
0.19::trusts('48975','55339').
0.19::trusts('48975','31399').
0.19::trusts('16923','42359').
0.1::trusts('44586','42498').
0.19::trusts('62039','60567').
0.1::trusts('16923','44590').
0.1::trusts('16923','44581').
0.19::trusts('16923','36899').
0.1::trusts('16923','44580').
0.1::trusts('16923','44583').

person('25040').
person('16923').
person('44587').
person('29409').
person('48975').
person('55339').
person('31399').
person('62039').
person('42359').
person('44586').
person('44588').
person('42498').
person('60567').
person('44590').
person('44581').
person('36899').
person('44580').
person('44583').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25040')).
query(buys('16923')).
query(buys('44587')).
query(buys('29409')).
query(buys('48975')).
query(buys('55339')).
query(buys('31399')).
query(buys('62039')).
query(buys('42359')).
query(buys('44586')).
query(buys('44588')).
query(buys('42498')).
query(buys('60567')).
query(buys('44590')).
query(buys('44581')).
query(buys('36899')).
query(buys('44580')).
query(buys('44583')).

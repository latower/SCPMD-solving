10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('11426','30667').
0.1::trusts('40907','30667').
0.19::trusts('30667','11426').
0.1::trusts('30667','40907').
0.1::trusts('42114','40907').
0.1::trusts('59963','42114').
0.19::trusts('40907','42114').
0.1::trusts('47810','42114').
0.19::trusts('26757','42114').
0.3439::trusts('47115','42114').
0.1::trusts('42114','59963').
0.19::trusts('21517','59963').
0.1::trusts('38636','59963').
0.1::trusts('47810','59963').
0.1::trusts('61943','59963').
0.19::trusts('42114','47810').
0.3439::trusts('59963','47810').
0.1::trusts('13079','47810').
0.40951::trusts('42114','47115').
0.1::trusts('10983','47115').
0.19::trusts('59963','21517').
0.1::trusts('59963','61943').
0.1::trusts('47810','13079').
0.19::trusts('47115','10983').
0.19::trusts('53734','10983').
0.1::trusts('10983','53734').
0.1::trusts('61943','62596').
0.1::trusts('26757','42850').

person('30667').
person('11426').
person('40907').
person('42114').
person('59963').
person('47810').
person('26757').
person('47115').
person('21517').
person('38636').
person('61943').
person('13079').
person('10983').
person('53734').
person('62596').
person('42850').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30667')).
query(buys('11426')).
query(buys('40907')).
query(buys('42114')).
query(buys('59963')).
query(buys('47810')).
query(buys('26757')).
query(buys('47115')).
query(buys('21517')).
query(buys('38636')).
query(buys('61943')).
query(buys('13079')).
query(buys('10983')).
query(buys('53734')).
query(buys('62596')).
query(buys('42850')).

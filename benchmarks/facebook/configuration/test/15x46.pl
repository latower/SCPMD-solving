10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('52097','49247').
0.1::trusts('14328','49247').
0.1::trusts('46949','49247').
0.1::trusts('49247','52097').
0.3439::trusts('58927','52097').
0.1::trusts('49247','14328').
0.1::trusts('41288','14328').
0.1::trusts('46949','14328').
0.19::trusts('42220','14328').
0.19::trusts('49247','46949').
0.1::trusts('16244','46949').
0.1::trusts('14328','41288').
0.3439::trusts('52097','58927').
0.19::trusts('16244','53396').
0.1::trusts('48617','53396').
0.271::trusts('53396','16244').
0.19::trusts('46949','16244').
0.1::trusts('53396','48617').
0.19::trusts('14328','42220').
0.1::trusts('46949','59276').
0.1::trusts('53396','58488').
0.271::trusts('58927','58926').
0.1::trusts('53396','40877').
0.1::trusts('52097','12758').

person('49247').
person('52097').
person('14328').
person('46949').
person('41288').
person('58927').
person('53396').
person('16244').
person('48617').
person('42220').
person('59276').
person('58488').
person('58926').
person('40877').
person('12758').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('49247')).
query(buys('52097')).
query(buys('14328')).
query(buys('46949')).
query(buys('41288')).
query(buys('58927')).
query(buys('53396')).
query(buys('16244')).
query(buys('48617')).
query(buys('42220')).
query(buys('59276')).
query(buys('58488')).
query(buys('58926')).
query(buys('40877')).
query(buys('12758')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('28712','10885').
0.1::trusts('10945','10885').
0.1::trusts('11144','10885').
0.19::trusts('31636','10885').
0.1::trusts('32082','10885').
0.19::trusts('10885','28712').
0.1::trusts('12269','28712').
0.19::trusts('47661','28712').
0.1::trusts('47811','28712').
0.19::trusts('10885','10945').
0.1::trusts('10935','10945').
0.271::trusts('10885','11144').
0.1::trusts('10885','32082').
0.1::trusts('10885','12269').
0.1::trusts('28712','12269').
0.1::trusts('11144','12269').
0.1::trusts('31636','12269').
0.1::trusts('25378','12269').
0.1::trusts('40378','12269').
0.40951::trusts('32084','12269').
0.19::trusts('28712','47661').
0.19::trusts('27935','47661').
0.1::trusts('28712','47811').
0.1::trusts('27935','34925').
0.1::trusts('10885','27935').
0.1::trusts('34925','27935').
0.1::trusts('24410','27935').
0.19::trusts('25378','27935').
0.1::trusts('10935','27935').
0.1::trusts('47661','27935').
0.1::trusts('34925','24410').
0.19::trusts('27935','24410').
0.19::trusts('27935','25378').
0.1::trusts('36369','25378').
0.1::trusts('10885','10935').
0.1::trusts('27935','10935').
0.1::trusts('10945','10935').
0.1::trusts('10885','20345').
0.1::trusts('27935','38198').
0.19::trusts('34925','43921').
0.1::trusts('16070','43921').
0.1::trusts('10885','32084').
0.271::trusts('12269','32084').
0.1::trusts('10885','36369').
0.1::trusts('34925','36369').
0.1::trusts('27935','36369').
0.1::trusts('40498','36369').
0.1::trusts('10885','22758').
0.1::trusts('10885','29115').
0.1::trusts('34925','35054').
0.1::trusts('10885','13416').
0.19::trusts('12269','51900').
0.1::trusts('10885','32075').
0.19::trusts('31636','34041').

person('10885').
person('28712').
person('10945').
person('11144').
person('31636').
person('32082').
person('12269').
person('47661').
person('47811').
person('34925').
person('27935').
person('24410').
person('25378').
person('10935').
person('20345').
person('38198').
person('43921').
person('16070').
person('40378').
person('32084').
person('36369').
person('40498').
person('22758').
person('29115').
person('35054').
person('13416').
person('51900').
person('32075').
person('34041').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('10885')).
query(buys('28712')).
query(buys('10945')).
query(buys('11144')).
query(buys('31636')).
query(buys('32082')).
query(buys('12269')).
query(buys('47661')).
query(buys('47811')).
query(buys('34925')).
query(buys('27935')).
query(buys('24410')).
query(buys('25378')).
query(buys('10935')).
query(buys('20345')).
query(buys('38198')).
query(buys('43921')).
query(buys('16070')).
query(buys('40378')).
query(buys('32084')).
query(buys('36369')).
query(buys('40498')).
query(buys('22758')).
query(buys('29115')).
query(buys('35054')).
query(buys('13416')).
query(buys('51900')).
query(buys('32075')).
query(buys('34041')).
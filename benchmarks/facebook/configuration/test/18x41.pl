10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.6513215599::trusts('15263','12070').
0.1::trusts('14070','12070').
0.271::trusts('27642','12070').
0.19::trusts('12070','14070').
0.19::trusts('29891','14070').
0.19::trusts('27139','14070').
0.1::trusts('37106','14070').
0.271::trusts('26536','14070').
0.40951::trusts('12070','27642').
0.468559::trusts('15263','29891').
0.271::trusts('20765','29891').
0.1::trusts('27139','29891').
0.40951::trusts('37352','29891').
0.19::trusts('29891','20765').
0.1::trusts('39686','20765').
0.1::trusts('14070','27139').
0.19::trusts('32679','27139').
0.56953279::trusts('29891','37352').
0.849905364703001::trusts('15263','37352').
0.1::trusts('14070','37106').
0.1::trusts('56705','37106').
0.19::trusts('14070','26536').
0.1::trusts('16512','35609').
0.5217031::trusts('32679','35609').
0.271::trusts('35609','32679').
0.19::trusts('27139','32679').
0.19::trusts('37106','56705').
0.1::trusts('37106','35036').
0.1::trusts('14070','30755').
0.1::trusts('16512','3597').

person('12070').
person('15263').
person('14070').
person('27642').
person('29891').
person('20765').
person('27139').
person('37352').
person('37106').
person('26536').
person('39686').
person('35609').
person('16512').
person('32679').
person('56705').
person('35036').
person('30755').
person('3597').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12070')).
query(buys('15263')).
query(buys('14070')).
query(buys('27642')).
query(buys('29891')).
query(buys('20765')).
query(buys('27139')).
query(buys('37352')).
query(buys('37106')).
query(buys('26536')).
query(buys('39686')).
query(buys('35609')).
query(buys('16512')).
query(buys('32679')).
query(buys('56705')).
query(buys('35036')).
query(buys('30755')).
query(buys('3597')).

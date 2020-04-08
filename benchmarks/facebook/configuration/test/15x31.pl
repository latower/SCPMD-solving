10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.717570463519::trusts('31080','17999').
0.1::trusts('30907','17999').
0.271::trusts('54379','17999').
0.19::trusts('24304','17999').
0.3439::trusts('17695','17999').
0.68618940391::trusts('17999','31080').
0.56953279::trusts('30907','31080').
0.1::trusts('24960','31080').
0.6513215599::trusts('31080','30907').
0.271::trusts('17999','54379').
0.1::trusts('10547','54379').
0.40951::trusts('14149','54379').
0.19::trusts('17999','24304').
0.271::trusts('17999','17695').
0.1::trusts('31080','24960').
0.1::trusts('54379','10547').
0.1::trusts('4227','10547').
0.19::trusts('54379','14149').
0.1::trusts('10547','4227').
0.1::trusts('31080','49995').
0.1::trusts('10547','1255').
0.1::trusts('24960','52056').
0.1::trusts('17999','22214').
0.1::trusts('17999','32097').

person('17999').
person('31080').
person('30907').
person('54379').
person('24304').
person('17695').
person('24960').
person('10547').
person('14149').
person('4227').
person('49995').
person('1255').
person('52056').
person('22214').
person('32097').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17999')).
query(buys('31080')).
query(buys('30907')).
query(buys('54379')).
query(buys('24304')).
query(buys('17695')).
query(buys('24960')).
query(buys('10547')).
query(buys('14149')).
query(buys('4227')).
query(buys('49995')).
query(buys('1255')).
query(buys('52056')).
query(buys('22214')).
query(buys('32097')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('28250','8381').
0.19::trusts('33802','8381').
0.1::trusts('63837','8381').
0.1::trusts('22691','8381').
0.40951::trusts('8381','28250').
0.40951::trusts('12656','28250').
0.19::trusts('52960','28250').
0.19::trusts('8381','33802').
0.1::trusts('8381','63837').
0.1::trusts('8381','22691').
0.1::trusts('52957','22691').
0.1::trusts('17878','14774').
0.1::trusts('28209','14774').
0.1::trusts('31590','17878').
0.19::trusts('28209','17878').
0.19::trusts('52957','17878').
0.1::trusts('32180','17878').
0.19::trusts('17878','28209').
0.3439::trusts('17878','31590').
0.1::trusts('28209','31590').
0.19::trusts('17878','52957').
0.1::trusts('32180','52957').
0.1::trusts('22691','52957').
0.271::trusts('17878','32180').
0.1::trusts('52957','32180').
0.40951::trusts('28250','12656').
0.1::trusts('12660','12656').
0.1::trusts('12656','12660').
0.19::trusts('24162','12660').
0.271::trusts('28250','52960').
0.1::trusts('52458','52960').
0.1::trusts('12660','24162').
0.1::trusts('33802','46204').
0.1::trusts('17878','23003').
0.19::trusts('25431','23003').
0.1::trusts('24162','48070').

person('8381').
person('28250').
person('33802').
person('63837').
person('22691').
person('14774').
person('17878').
person('28209').
person('31590').
person('52957').
person('32180').
person('12656').
person('12660').
person('52960').
person('24162').
person('52458').
person('46204').
person('23003').
person('25431').
person('48070').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8381')).
query(buys('28250')).
query(buys('33802')).
query(buys('63837')).
query(buys('22691')).
query(buys('14774')).
query(buys('17878')).
query(buys('28209')).
query(buys('31590')).
query(buys('52957')).
query(buys('32180')).
query(buys('12656')).
query(buys('12660')).
query(buys('52960')).
query(buys('24162')).
query(buys('52458')).
query(buys('46204')).
query(buys('23003')).
query(buys('25431')).
query(buys('48070')).

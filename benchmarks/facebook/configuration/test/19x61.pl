10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('1203','6027').
0.1::trusts('17633','6027').
0.19::trusts('4507','6027').
0.1::trusts('17668','6027').
0.3439::trusts('17667','6027').
0.1::trusts('17671','6027').
0.271::trusts('13331','6027').
0.19::trusts('17678','6027').
0.19::trusts('6027','4507').
0.40951::trusts('11472','4507').
0.19::trusts('6027','17668').
0.1::trusts('17667','17668').
0.1::trusts('17664','17668').
0.1::trusts('17669','17667').
0.1::trusts('6027','17671').
0.468559::trusts('13331','17671').
0.271::trusts('13330','17671').
0.56953279::trusts('1203','13331').
0.1::trusts('6027','13331').
0.40951::trusts('17671','13331').
0.1::trusts('13330','13331').
0.1::trusts('6027','17678').
0.1::trusts('47591','17678').
0.19::trusts('4507','11472').
0.271::trusts('6027','17664').
0.1::trusts('17668','17664').
0.19::trusts('1203','13330').
0.19::trusts('17671','13330').
0.1::trusts('13331','13330').
0.1::trusts('4507','2425').
0.1::trusts('17671','18781').
0.19::trusts('17633','43528').
0.1::trusts('4507','11469').
0.1::trusts('1203','13328').

person('6027').
person('1203').
person('17633').
person('4507').
person('17668').
person('17667').
person('17671').
person('13331').
person('17678').
person('11472').
person('17664').
person('17669').
person('13330').
person('47591').
person('2425').
person('18781').
person('43528').
person('11469').
person('13328').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6027')).
query(buys('1203')).
query(buys('17633')).
query(buys('4507')).
query(buys('17668')).
query(buys('17667')).
query(buys('17671')).
query(buys('13331')).
query(buys('17678')).
query(buys('11472')).
query(buys('17664')).
query(buys('17669')).
query(buys('13330')).
query(buys('47591')).
query(buys('2425')).
query(buys('18781')).
query(buys('43528')).
query(buys('11469')).
query(buys('13328')).

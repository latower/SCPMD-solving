10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('9386','1287').
0.1::trusts('5828','1287').
0.1::trusts('4881','1287').
0.1::trusts('9381','1287').
0.1::trusts('1287','9386').
0.1::trusts('61222','9386').
0.1::trusts('1287','5828').
0.19::trusts('56540','5828').
0.271::trusts('9381','5828').
0.1::trusts('40458','5828').
0.271::trusts('40134','5828').
0.19::trusts('14156','5828').
0.1::trusts('31535','5828').
0.1::trusts('47410','5828').
0.19::trusts('23710','5828').
0.19::trusts('1287','4881').
0.1::trusts('1287','9381').
0.468559::trusts('5828','9381').
0.1::trusts('14156','9381').
0.19::trusts('9386','61222').
0.1::trusts('5828','56540').
0.1::trusts('5828','40458').
0.3439::trusts('5828','40134').
0.271::trusts('5828','14156').
0.1::trusts('9381','14156').
0.1::trusts('18353','14156').
0.1::trusts('5828','31535').
0.1::trusts('5828','47410').
0.1::trusts('5828','23710').
0.1::trusts('1287','9379').
0.1::trusts('5828','33169').
0.1::trusts('5828','45583').
0.1::trusts('4881','8860').

person('1287').
person('9386').
person('5828').
person('4881').
person('9381').
person('61222').
person('56540').
person('40458').
person('40134').
person('14156').
person('31535').
person('47410').
person('23710').
person('18353').
person('9379').
person('33169').
person('45583').
person('8860').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1287')).
query(buys('9386')).
query(buys('5828')).
query(buys('4881')).
query(buys('9381')).
query(buys('61222')).
query(buys('56540')).
query(buys('40458')).
query(buys('40134')).
query(buys('14156')).
query(buys('31535')).
query(buys('47410')).
query(buys('23710')).
query(buys('18353')).
query(buys('9379')).
query(buys('33169')).
query(buys('45583')).
query(buys('8860')).

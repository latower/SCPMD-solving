10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('17846','9404').
0.1::trusts('12516','9404').
0.1::trusts('35859','9404').
0.1::trusts('9404','17846').
0.1::trusts('9409','17846').
0.40951::trusts('35842','17846').
0.1::trusts('35698','17846').
0.19::trusts('9404','12516').
0.1::trusts('10243','12516').
0.1::trusts('9404','35859').
0.468559::trusts('17846','35842').
0.1::trusts('9404','35760').
0.1::trusts('12516','10243').
0.1::trusts('48345','10243').
0.271::trusts('10243','48345').
0.1::trusts('33482','48345').
0.1::trusts('48345','33482').
0.1::trusts('48347','33482').
0.1::trusts('17846','35562').
0.1::trusts('35760','44795').
0.1::trusts('33482','48347').
0.1::trusts('48347','25140').
0.19::trusts('10243','10237').

person('9404').
person('17846').
person('12516').
person('35859').
person('9409').
person('35842').
person('35698').
person('35760').
person('10243').
person('48345').
person('33482').
person('35562').
person('44795').
person('48347').
person('25140').
person('10237').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9404')).
query(buys('17846')).
query(buys('12516')).
query(buys('35859')).
query(buys('9409')).
query(buys('35842')).
query(buys('35698')).
query(buys('35760')).
query(buys('10243')).
query(buys('48345')).
query(buys('33482')).
query(buys('35562')).
query(buys('44795')).
query(buys('48347')).
query(buys('25140')).
query(buys('10237')).

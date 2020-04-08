10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('7641','18659').
0.1::trusts('44418','18659').
0.271::trusts('23466','18659').
0.271::trusts('31495','18659').
0.1::trusts('9334','18659').
0.468559::trusts('18659','7641').
0.19::trusts('33421','7641').
0.19::trusts('18659','44418').
0.1::trusts('53207','44418').
0.271::trusts('18659','23466').
0.19::trusts('18659','31495').
0.19::trusts('18659','9334').
0.1::trusts('27865','9334').
0.1::trusts('7641','33421').
0.271::trusts('44418','53207').
0.1::trusts('49803','27865').
0.1::trusts('18659','23468').
0.1::trusts('7641','29244').
0.1::trusts('27865','49803').
0.1::trusts('7641','33778').
0.19::trusts('51588','33778').
0.19::trusts('33778','51588').
0.19::trusts('33777','51588').
0.1::trusts('51588','33777').
0.1::trusts('23468','57575').

person('18659').
person('7641').
person('44418').
person('23466').
person('31495').
person('9334').
person('33421').
person('53207').
person('27865').
person('23468').
person('29244').
person('49803').
person('33778').
person('51588').
person('33777').
person('57575').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18659')).
query(buys('7641')).
query(buys('44418')).
query(buys('23466')).
query(buys('31495')).
query(buys('9334')).
query(buys('33421')).
query(buys('53207')).
query(buys('27865')).
query(buys('23468')).
query(buys('29244')).
query(buys('49803')).
query(buys('33778')).
query(buys('51588')).
query(buys('33777')).
query(buys('57575')).

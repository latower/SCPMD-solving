10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('8882','12079').
0.3439::trusts('16777','12079').
0.271::trusts('26061','12079').
0.1::trusts('23294','12079').
0.271::trusts('56696','12079').
0.1::trusts('33375','12079').
0.271::trusts('12079','8882').
0.40951::trusts('12079','16777').
0.19::trusts('56696','16777').
0.271::trusts('12079','26061').
0.19::trusts('10850','26061').
0.1::trusts('23511','26061').
0.3439::trusts('23294','26061').
0.1::trusts('31344','26061').
0.1::trusts('12079','23294').
0.1::trusts('26061','23294').
0.3439::trusts('33375','23294').
0.3439::trusts('12079','56696').
0.468559::trusts('16777','56696').
0.19::trusts('12079','33375').
0.19::trusts('23294','33375').
0.271::trusts('10850','23208').
0.19::trusts('44245','23208').
0.19::trusts('30201','23208').
0.19::trusts('23208','10850').
0.1::trusts('26061','10850').
0.1::trusts('23511','10850').
0.19::trusts('40109','10850').
0.271::trusts('18302','10850').
0.1::trusts('54914','10850').
0.1::trusts('48288','10850').
0.1::trusts('23208','44245').
0.19::trusts('10850','44245').
0.19::trusts('18302','44245').
0.1::trusts('23208','30201').
0.1::trusts('21527','30201').
0.19::trusts('48288','30201').
0.1::trusts('30201','21527').
0.1::trusts('12079','23511').
0.1::trusts('10850','23511').
0.1::trusts('26061','23511').
0.19::trusts('10850','40109').
0.19::trusts('10850','18302').
0.1::trusts('44245','18302').
0.1::trusts('10850','54914').
0.1::trusts('10850','48288').
0.1::trusts('30201','48288').
0.1::trusts('8882','39937').
0.1::trusts('8882','24345').
0.1::trusts('30002','24345').
0.19::trusts('10850','54912').
0.1::trusts('56696','41749').

person('12079').
person('8882').
person('16777').
person('26061').
person('23294').
person('56696').
person('33375').
person('23208').
person('10850').
person('44245').
person('30201').
person('21527').
person('23511').
person('40109').
person('18302').
person('54914').
person('48288').
person('31344').
person('39937').
person('24345').
person('30002').
person('54912').
person('41749').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12079')).
query(buys('8882')).
query(buys('16777')).
query(buys('26061')).
query(buys('23294')).
query(buys('56696')).
query(buys('33375')).
query(buys('23208')).
query(buys('10850')).
query(buys('44245')).
query(buys('30201')).
query(buys('21527')).
query(buys('23511')).
query(buys('40109')).
query(buys('18302')).
query(buys('54914')).
query(buys('48288')).
query(buys('31344')).
query(buys('39937')).
query(buys('24345')).
query(buys('30002')).
query(buys('54912')).
query(buys('41749')).
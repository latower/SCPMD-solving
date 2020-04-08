10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('18219','17121').
0.19::trusts('17274','17121').
0.271::trusts('29743','17121').
0.1::trusts('29668','17121').
0.3439::trusts('17121','18219').
0.3439::trusts('56607','18219').
0.3439::trusts('17121','17274').
0.1::trusts('17273','17274').
0.19::trusts('17121','29743').
0.19::trusts('22400','29743').
0.1::trusts('17121','29668').
0.1::trusts('42826','29668').
0.1::trusts('42826','23501').
0.1::trusts('23501','42826').
0.19::trusts('29668','42826').
0.1::trusts('18219','56607').
0.19::trusts('22400','27696').
0.1::trusts('27696','22400').
0.19::trusts('22764','22400').
0.19::trusts('29943','22400').
0.1::trusts('29743','22400').
0.1::trusts('36914','22400').
0.40951::trusts('22400','22764').
0.1::trusts('56102','22764').
0.1::trusts('56103','22764').
0.19::trusts('22400','29943').
0.19::trusts('22400','36914').
0.19::trusts('22764','56102').
0.1::trusts('22764','56103').
0.1::trusts('22764','36345').
0.1::trusts('27696','50939').
0.1::trusts('18219','41305').
0.19::trusts('18219','58754').

person('17121').
person('18219').
person('17274').
person('29743').
person('29668').
person('23501').
person('42826').
person('56607').
person('27696').
person('22400').
person('22764').
person('29943').
person('36914').
person('56102').
person('56103').
person('17273').
person('36345').
person('50939').
person('41305').
person('58754').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17121')).
query(buys('18219')).
query(buys('17274')).
query(buys('29743')).
query(buys('29668')).
query(buys('23501')).
query(buys('42826')).
query(buys('56607')).
query(buys('27696')).
query(buys('22400')).
query(buys('22764')).
query(buys('29943')).
query(buys('36914')).
query(buys('56102')).
query(buys('56103')).
query(buys('17273')).
query(buys('36345')).
query(buys('50939')).
query(buys('41305')).
query(buys('58754')).

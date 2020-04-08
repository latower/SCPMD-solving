10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('20462','1930').
0.3439::trusts('23299','1930').
0.1::trusts('22886','1930').
0.271::trusts('1930','20462').
0.19::trusts('1930','22886').
0.271::trusts('8132','22886').
0.19::trusts('22886','8132').
0.1::trusts('1930','28447').
0.19::trusts('45418','28447').
0.1::trusts('1930','25241').
0.19::trusts('36844','25241').
0.19::trusts('25241','36844').
0.1::trusts('1930','37809').
0.19::trusts('1930','32203').
0.1::trusts('1930','35208').
0.1::trusts('20462','36900').
0.77123207545039::trusts('23299','56682').
0.1::trusts('1930','7555').
0.1::trusts('32203','58379').

person('1930').
person('20462').
person('23299').
person('22886').
person('8132').
person('28447').
person('45418').
person('25241').
person('36844').
person('37809').
person('32203').
person('35208').
person('36900').
person('56682').
person('7555').
person('58379').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1930')).
query(buys('20462')).
query(buys('23299')).
query(buys('22886')).
query(buys('8132')).
query(buys('28447')).
query(buys('45418')).
query(buys('25241')).
query(buys('36844')).
query(buys('37809')).
query(buys('32203')).
query(buys('35208')).
query(buys('36900')).
query(buys('56682')).
query(buys('7555')).
query(buys('58379')).

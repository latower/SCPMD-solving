10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('11716','17140').
0.19::trusts('20681','17140').
0.1::trusts('10234','17140').
0.1::trusts('20685','17140').
0.40951::trusts('38072','17140').
0.468559::trusts('17140','11716').
0.271::trusts('16501','11716').
0.3439::trusts('24847','11716').
0.19::trusts('34259','11716').
0.1::trusts('17140','10234').
0.1::trusts('20681','20685').
0.5217031::trusts('20682','20685').
0.40951::trusts('17140','38072').
0.3439::trusts('11716','16501').
0.1::trusts('7559','16501').
0.1::trusts('24847','16501').
0.40951::trusts('55132','16501').
0.271::trusts('11716','24847').
0.1::trusts('17140','34259').
0.19::trusts('11716','34259').
0.19::trusts('16501','7559').
0.1::trusts('28200','7559').
0.40951::trusts('16501','55132').
0.1::trusts('20681','20682').
0.271::trusts('20685','20682').
0.1::trusts('49272','20682').
0.1::trusts('7559','28200').
0.19::trusts('49272','27954').
0.19::trusts('27954','49272').
0.1::trusts('20682','49272').
0.1::trusts('17140','27423').
0.1::trusts('11716','33604').
0.19::trusts('11716','13104').

person('17140').
person('11716').
person('20681').
person('10234').
person('20685').
person('38072').
person('16501').
person('24847').
person('34259').
person('7559').
person('55132').
person('20682').
person('28200').
person('27954').
person('49272').
person('27423').
person('33604').
person('13104').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17140')).
query(buys('11716')).
query(buys('20681')).
query(buys('10234')).
query(buys('20685')).
query(buys('38072')).
query(buys('16501')).
query(buys('24847')).
query(buys('34259')).
query(buys('7559')).
query(buys('55132')).
query(buys('20682')).
query(buys('28200')).
query(buys('27954')).
query(buys('49272')).
query(buys('27423')).
query(buys('33604')).
query(buys('13104')).

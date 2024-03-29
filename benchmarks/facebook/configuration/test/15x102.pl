10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('7440','13704').
0.40951::trusts('18156','13704').
0.19::trusts('11570','13704').
0.717570463519::trusts('18188','13704').
0.1::trusts('2365','13704').
0.1::trusts('18190','13704').
0.1::trusts('13704','7440').
0.5217031::trusts('13704','18156').
0.56953279::trusts('11570','18156').
0.19::trusts('18188','18156').
0.1::trusts('7686','18156').
0.68618940391::trusts('13704','11570').
0.468559::trusts('18156','11570').
0.468559::trusts('18188','11570').
0.1::trusts('2365','11570').
0.3439::trusts('7686','11570').
0.612579511::trusts('13704','18188').
0.1::trusts('18156','18188').
0.271::trusts('11570','18188').
0.1::trusts('2365','18188').
0.19::trusts('7686','18188').
0.468559::trusts('8952','18188').
0.19::trusts('9251','18188').
0.19::trusts('13704','2365').
0.1::trusts('18156','2365').
0.19::trusts('11570','2365').
0.1::trusts('18188','2365').
0.1::trusts('13704','18190').
0.1::trusts('7686','18190').
0.19::trusts('31739','18190').
0.271::trusts('13704','7686').
0.1::trusts('18156','7686').
0.271::trusts('11570','7686').
0.3439::trusts('18188','7686').
0.40951::trusts('18188','8952').
0.1::trusts('18190','31739').
0.1::trusts('17000','31739').
0.1::trusts('7440','17563').
0.1::trusts('17000','16997').
0.1::trusts('18156','55603').

person('13704').
person('7440').
person('18156').
person('11570').
person('18188').
person('2365').
person('18190').
person('7686').
person('8952').
person('9251').
person('31739').
person('17000').
person('17563').
person('16997').
person('55603').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13704')).
query(buys('7440')).
query(buys('18156')).
query(buys('11570')).
query(buys('18188')).
query(buys('2365')).
query(buys('18190')).
query(buys('7686')).
query(buys('8952')).
query(buys('9251')).
query(buys('31739')).
query(buys('17000')).
query(buys('17563')).
query(buys('16997')).
query(buys('55603')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('13414','13409').
0.19::trusts('22183','11576').
0.271::trusts('3537','11576').
0.1::trusts('24188','11576').
0.271::trusts('11576','22183').
0.19::trusts('11576','3537').
0.271::trusts('9216','3537').
0.19::trusts('24568','3537').
0.1::trusts('11576','24188').
0.1::trusts('29233','24188').
0.1::trusts('24185','24188').
0.271::trusts('13414','9216').
0.19::trusts('3537','9216').
0.1::trusts('29745','9216').
0.1::trusts('31133','9216').
0.1::trusts('9216','29745').
0.1::trusts('13409','31133').
0.1::trusts('9216','31133').
0.1::trusts('13409','3898').
0.19::trusts('3537','24568').
0.1::trusts('24188','29233').
0.1::trusts('3898','49172').
0.1::trusts('13409','12174').
0.1::trusts('9216','12174').
0.1::trusts('13414','12174').
0.1::trusts('13411','12174').
0.19::trusts('11576','24575').
0.1::trusts('22183','24575').
0.1::trusts('22183','30504').

person('13409').
person('13414').
person('11576').
person('22183').
person('3537').
person('24188').
person('9216').
person('29745').
person('31133').
person('3898').
person('24568').
person('29233').
person('24185').
person('49172').
person('12174').
person('13411').
person('24575').
person('30504').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13409')).
query(buys('13414')).
query(buys('11576')).
query(buys('22183')).
query(buys('3537')).
query(buys('24188')).
query(buys('9216')).
query(buys('29745')).
query(buys('31133')).
query(buys('3898')).
query(buys('24568')).
query(buys('29233')).
query(buys('24185')).
query(buys('49172')).
query(buys('12174')).
query(buys('13411')).
query(buys('24575')).
query(buys('30504')).

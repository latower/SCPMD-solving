10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('26679','19692').
0.1::trusts('17396','19692').
0.3439::trusts('25956','19692').
0.1::trusts('36477','19692').
0.271::trusts('19692','26679').
0.1::trusts('19692','17396').
0.1::trusts('31527','17396').
0.3439::trusts('19692','25956').
0.1::trusts('19547','25956').
0.19::trusts('2366','25956').
0.1::trusts('42887','25956').
0.271::trusts('19692','36477').
0.1::trusts('24139','19547').
0.1::trusts('30555','19547').
0.19::trusts('55118','19547').
0.271::trusts('32807','19547').
0.271::trusts('19547','24139').
0.19::trusts('22720','24139').
0.271::trusts('19547','30555').
0.1::trusts('25956','30555').
0.3439::trusts('19547','55118').
0.271::trusts('19547','32807').
0.1::trusts('24139','22720').
0.1::trusts('19692','2366').
0.1::trusts('25956','2366').
0.1::trusts('25956','42887').
0.1::trusts('30555','30952').

person('19692').
person('26679').
person('17396').
person('25956').
person('36477').
person('19547').
person('24139').
person('30555').
person('55118').
person('32807').
person('22720').
person('2366').
person('31527').
person('42887').
person('30952').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19692')).
query(buys('26679')).
query(buys('17396')).
query(buys('25956')).
query(buys('36477')).
query(buys('19547')).
query(buys('24139')).
query(buys('30555')).
query(buys('55118')).
query(buys('32807')).
query(buys('22720')).
query(buys('2366')).
query(buys('31527')).
query(buys('42887')).
query(buys('30952')).

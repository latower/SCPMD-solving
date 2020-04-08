10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('25352','15245').
0.19::trusts('22912','15245').
0.1::trusts('25793','15245').
0.1::trusts('15245','25352').
0.271::trusts('9807','25352').
0.19::trusts('29088','25352').
0.1::trusts('9809','25352').
0.1::trusts('7893','25352').
0.19::trusts('15245','22912').
0.612579511::trusts('37071','22912').
0.1::trusts('15245','22365').
0.1::trusts('13591','31120').
0.1::trusts('9807','31120').
0.1::trusts('29088','31120').
0.271::trusts('37247','31120').
0.468559::trusts('31120','13591').
0.271::trusts('10142','13591').
0.271::trusts('31123','13591').
0.19::trusts('31120','9807').
0.1::trusts('25352','9807').
0.19::trusts('37247','9807').
0.1::trusts('9807','29088').
0.1::trusts('25352','29088').
0.19::trusts('31120','37247').
0.1::trusts('16520','37247').
0.271::trusts('9807','37247').
0.1::trusts('9809','37247').
0.1::trusts('13591','10142').
0.3439::trusts('13591','31123').
0.19::trusts('31120','16520').
0.19::trusts('29088','16520').
0.1::trusts('37247','16520').
0.19::trusts('31120','9809').
0.19::trusts('13591','9809').
0.1::trusts('37247','9809').
0.1::trusts('25352','7893').
0.612579511::trusts('22912','37071').
0.1::trusts('25352','7565').
0.1::trusts('25352','31039').
0.1::trusts('13591','31121').

person('15245').
person('25352').
person('22912').
person('25793').
person('22365').
person('31120').
person('13591').
person('9807').
person('29088').
person('37247').
person('10142').
person('31123').
person('16520').
person('9809').
person('7893').
person('37071').
person('7565').
person('31039').
person('31121').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15245')).
query(buys('25352')).
query(buys('22912')).
query(buys('25793')).
query(buys('22365')).
query(buys('31120')).
query(buys('13591')).
query(buys('9807')).
query(buys('29088')).
query(buys('37247')).
query(buys('10142')).
query(buys('31123')).
query(buys('16520')).
query(buys('9809')).
query(buys('7893')).
query(buys('37071')).
query(buys('7565')).
query(buys('31039')).
query(buys('31121')).

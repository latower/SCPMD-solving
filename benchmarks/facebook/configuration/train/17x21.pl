10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('13152','18268').
0.1::trusts('18255','18268').
0.19::trusts('34182','18268').
0.1::trusts('34190','18268').
0.19::trusts('18268','13152').
0.19::trusts('34182','13152').
0.1::trusts('29677','18255').
0.1::trusts('18268','18255').
0.271::trusts('34182','18255').
0.1::trusts('34190','18255').
0.19::trusts('18268','34182').
0.19::trusts('13152','34182').
0.19::trusts('18255','34182').
0.1::trusts('18255','34190').
0.1::trusts('34182','34190').
0.19::trusts('54428','34190').
0.1::trusts('34190','34183').
0.1::trusts('34188','34183').
0.19::trusts('52644','34183').
0.1::trusts('60942','34183').
0.1::trusts('51347','34183').
0.1::trusts('34190','34188').
0.1::trusts('34183','34188').
0.1::trusts('29677','52644').
0.1::trusts('34182','52644').
0.271::trusts('34183','52644').
0.271::trusts('34183','60942').
0.1::trusts('53898','51347').
0.1::trusts('34183','51347').
0.1::trusts('28679','51347').
0.1::trusts('51347','28679').
0.1::trusts('34183','48155').
0.1::trusts('29677','39497').
0.19::trusts('54428','62231').

person('18268').
person('13152').
person('18255').
person('34182').
person('34190').
person('29677').
person('54428').
person('34183').
person('34188').
person('52644').
person('60942').
person('51347').
person('53898').
person('28679').
person('48155').
person('39497').
person('62231').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18268')).
query(buys('13152')).
query(buys('18255')).
query(buys('34182')).
query(buys('34190')).
query(buys('29677')).
query(buys('54428')).
query(buys('34183')).
query(buys('34188')).
query(buys('52644')).
query(buys('60942')).
query(buys('51347')).
query(buys('53898')).
query(buys('28679')).
query(buys('48155')).
query(buys('39497')).
query(buys('62231')).

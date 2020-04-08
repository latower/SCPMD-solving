10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('59645','19889').
0.1::trusts('55632','19889').
0.1::trusts('45182','19889').
0.890581010868488::trusts('61542','19889').
0.19::trusts('19889','55632').
0.19::trusts('43740','55632').
0.3439::trusts('59645','55632').
0.19::trusts('11449','55632').
0.19::trusts('19889','45182').
0.878423345409431::trusts('19889','61542').
0.19::trusts('58042','61542').
0.1::trusts('59645','59644').
0.19::trusts('55632','59644').
0.1::trusts('11449','59644').
0.1::trusts('59645','11449').
0.271::trusts('55632','11449').
0.1::trusts('39523','11449').
0.1::trusts('60852','11449').
0.1::trusts('59644','43740').
0.271::trusts('59645','43740').
0.3439::trusts('55632','43740').
0.19::trusts('11449','43740').
0.40951::trusts('59965','43740').
0.19::trusts('59645','59965').
0.1::trusts('61449','59965').
0.19::trusts('7275','39523').
0.1::trusts('11449','39523').
0.1::trusts('7275','5336').
0.19::trusts('59965','61449').
0.1::trusts('59965','61448').
0.1::trusts('43740','23750').
0.19::trusts('59644','61791').
0.1::trusts('11449','50734').

person('19889').
person('59645').
person('55632').
person('45182').
person('61542').
person('59644').
person('11449').
person('43740').
person('59965').
person('58042').
person('39523').
person('60852').
person('5336').
person('7275').
person('61449').
person('61448').
person('23750').
person('61791').
person('50734').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19889')).
query(buys('59645')).
query(buys('55632')).
query(buys('45182')).
query(buys('61542')).
query(buys('59644')).
query(buys('11449')).
query(buys('43740')).
query(buys('59965')).
query(buys('58042')).
query(buys('39523')).
query(buys('60852')).
query(buys('5336')).
query(buys('7275')).
query(buys('61449')).
query(buys('61448')).
query(buys('23750')).
query(buys('61791')).
query(buys('50734')).

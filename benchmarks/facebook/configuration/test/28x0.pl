10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4668','3247').
0.1::trusts('6418','3247').
0.40951::trusts('13718','3247').
0.19::trusts('20674','3247').
0.3439::trusts('21487','3247').
0.6513215599::trusts('4673','6418').
0.920233556923127::trusts('13718','6418').
0.1::trusts('23262','6418').
0.271::trusts('21478','6418').
0.40951::trusts('3247','13718').
0.1::trusts('13802','13718').
0.19::trusts('18674','13718').
0.19::trusts('4673','13718').
0.5217031::trusts('6418','13718').
0.1::trusts('7170','13718').
0.1::trusts('3247','20674').
0.1::trusts('26188','20674').
0.1::trusts('55700','20674').
0.40951::trusts('3247','21487').
0.1::trusts('4912','21487').
0.1::trusts('13718','13802').
0.1::trusts('6814','13802').
0.1::trusts('13802','6814').
0.19::trusts('13718','18674').
0.1::trusts('34934','18674').
0.1::trusts('18674','34934').
0.3439::trusts('6418','4673').
0.1::trusts('13718','4673').
0.1::trusts('6418','23262').
0.1::trusts('26188','23262').
0.1::trusts('4673','21478').
0.56953279::trusts('6418','21478').
0.40951::trusts('12195','21478').
0.1::trusts('13718','7170').
0.1::trusts('20674','26188').
0.1::trusts('23262','26188').
0.1::trusts('21579','26188').
0.1::trusts('25156','26188').
0.19::trusts('20674','55700').
0.1::trusts('26188','21579').
0.1::trusts('55406','21579').
0.1::trusts('25920','928').
0.1::trusts('20674','25920').
0.1::trusts('26188','37912').
0.1::trusts('13718','32779').
0.1::trusts('4673','2985').
0.1::trusts('4668','2985').
0.1::trusts('20674','13308').
0.1::trusts('3247','21497').

person('3247').
person('4668').
person('6418').
person('13718').
person('20674').
person('21487').
person('13802').
person('6814').
person('18674').
person('34934').
person('4673').
person('23262').
person('21478').
person('7170').
person('26188').
person('55700').
person('12195').
person('21579').
person('25156').
person('4912').
person('55406').
person('928').
person('25920').
person('37912').
person('32779').
person('2985').
person('13308').
person('21497').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3247')).
query(buys('4668')).
query(buys('6418')).
query(buys('13718')).
query(buys('20674')).
query(buys('21487')).
query(buys('13802')).
query(buys('6814')).
query(buys('18674')).
query(buys('34934')).
query(buys('4673')).
query(buys('23262')).
query(buys('21478')).
query(buys('7170')).
query(buys('26188')).
query(buys('55700')).
query(buys('12195')).
query(buys('21579')).
query(buys('25156')).
query(buys('4912')).
query(buys('55406')).
query(buys('928')).
query(buys('25920')).
query(buys('37912')).
query(buys('32779')).
query(buys('2985')).
query(buys('13308')).
query(buys('21497')).

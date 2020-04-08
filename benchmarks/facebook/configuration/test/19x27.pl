10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('14642','13717').
0.1::trusts('15637','13717').
0.19::trusts('12084','13717').
0.1::trusts('21665','13717').
0.1::trusts('21030','13717').
0.1::trusts('2824','13717').
0.19::trusts('10348','13717').
0.271::trusts('21494','13717').
0.19::trusts('13717','15637').
0.19::trusts('23244','15637').
0.1::trusts('27648','15637').
0.19::trusts('21665','15637').
0.1::trusts('21542','15637').
0.19::trusts('13717','12084').
0.1::trusts('21665','12084').
0.1::trusts('61067','12084').
0.1::trusts('13717','21665').
0.19::trusts('15637','21665').
0.1::trusts('12084','21665').
0.19::trusts('13717','21030').
0.19::trusts('13717','2824').
0.1::trusts('3772','2824').
0.40951::trusts('13717','10348').
0.1::trusts('10734','10348').
0.271::trusts('13717','21494').
0.19::trusts('12073','21494').
0.1::trusts('15637','23244').
0.1::trusts('15637','27648').
0.271::trusts('2163','27648').
0.1::trusts('15637','21542').
0.271::trusts('14642','10734').
0.271::trusts('13717','10734').
0.19::trusts('10348','10734').
0.5217031::trusts('27648','2163').
0.1::trusts('1688','2163').
0.19::trusts('2824','3772').
0.19::trusts('13717','12073').
0.19::trusts('21494','12073').
0.1::trusts('2163','1688').
0.1::trusts('2824','26561').

person('13717').
person('14642').
person('15637').
person('12084').
person('21665').
person('21030').
person('2824').
person('10348').
person('21494').
person('23244').
person('27648').
person('21542').
person('61067').
person('10734').
person('2163').
person('3772').
person('12073').
person('1688').
person('26561').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13717')).
query(buys('14642')).
query(buys('15637')).
query(buys('12084')).
query(buys('21665')).
query(buys('21030')).
query(buys('2824')).
query(buys('10348')).
query(buys('21494')).
query(buys('23244')).
query(buys('27648')).
query(buys('21542')).
query(buys('61067')).
query(buys('10734')).
query(buys('2163')).
query(buys('3772')).
query(buys('12073')).
query(buys('1688')).
query(buys('26561')).

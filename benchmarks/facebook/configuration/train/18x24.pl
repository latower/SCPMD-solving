10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('17532','22468').
0.1::trusts('21310','22468').
0.56953279::trusts('23279','22468').
0.1::trusts('22468','17532').
0.5217031::trusts('21307','17532').
0.1::trusts('22468','21310').
0.612579511::trusts('22468','23279').
0.3439::trusts('23524','23279').
0.271::trusts('25708','23279').
0.468559::trusts('25709','23279').
0.1::trusts('25706','23279').
0.3439::trusts('17532','21307').
0.19::trusts('25708','24020').
0.19::trusts('42307','24020').
0.1::trusts('24020','25708').
0.3439::trusts('23279','25708').
0.1::trusts('30592','25708').
0.19::trusts('24020','42307').
0.19::trusts('25716','42307').
0.3439::trusts('23279','23524').
0.40951::trusts('23279','25709').
0.1::trusts('23279','25706').
0.1::trusts('25708','30592').
0.1::trusts('25706','1680').
0.1::trusts('42307','25716').
0.1::trusts('57949','25716').
0.1::trusts('23524','21303').
0.1::trusts('51219','21303').
0.1::trusts('21303','51219').
0.19::trusts('22468','59995').

person('22468').
person('17532').
person('21310').
person('23279').
person('21307').
person('24020').
person('25708').
person('42307').
person('23524').
person('25709').
person('25706').
person('30592').
person('1680').
person('25716').
person('21303').
person('51219').
person('57949').
person('59995').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22468')).
query(buys('17532')).
query(buys('21310')).
query(buys('23279')).
query(buys('21307')).
query(buys('24020')).
query(buys('25708')).
query(buys('42307')).
query(buys('23524')).
query(buys('25709')).
query(buys('25706')).
query(buys('30592')).
query(buys('1680')).
query(buys('25716')).
query(buys('21303')).
query(buys('51219')).
query(buys('57949')).
query(buys('59995')).

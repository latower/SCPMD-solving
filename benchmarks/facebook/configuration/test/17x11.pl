10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('14144','21159').
0.1::trusts('38100','21159').
0.19::trusts('21159','14144').
0.1::trusts('22778','14144').
0.19::trusts('24039','14144').
0.1::trusts('22425','14144').
0.1::trusts('21159','38100').
0.40951::trusts('13780','7272').
0.3439::trusts('20675','7272').
0.1::trusts('23552','7272').
0.468559::trusts('7272','13780').
0.19::trusts('7409','13780').
0.271::trusts('4425','13780').
0.19::trusts('7272','20675').
0.1::trusts('22778','20675').
0.1::trusts('7272','23552').
0.1::trusts('27283','23552').
0.1::trusts('13780','7409').
0.19::trusts('5573','7409').
0.271::trusts('20569','7409').
0.56953279::trusts('20558','7409').
0.271::trusts('13780','4425').
0.19::trusts('20675','22778').
0.3439::trusts('14144','22778').
0.19::trusts('24039','22778').
0.1::trusts('23552','27283').
0.1::trusts('22778','24039').
0.468559::trusts('14144','24039').
0.1::trusts('7409','5573').
0.1::trusts('24039','22425').
0.19::trusts('7409','20569').
0.6513215599::trusts('7409','20558').
0.1::trusts('7272','23554').

person('21159').
person('14144').
person('38100').
person('7272').
person('13780').
person('20675').
person('23552').
person('7409').
person('4425').
person('22778').
person('27283').
person('24039').
person('5573').
person('22425').
person('20569').
person('20558').
person('23554').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21159')).
query(buys('14144')).
query(buys('38100')).
query(buys('7272')).
query(buys('13780')).
query(buys('20675')).
query(buys('23552')).
query(buys('7409')).
query(buys('4425')).
query(buys('22778')).
query(buys('27283')).
query(buys('24039')).
query(buys('5573')).
query(buys('22425')).
query(buys('20569')).
query(buys('20558')).
query(buys('23554')).

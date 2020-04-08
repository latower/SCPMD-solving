10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('7970','13323').
0.1::trusts('21079','13323').
0.1::trusts('21079','7970').
0.1::trusts('5311','7970').
0.7458134171671::trusts('7666','7970').
0.1::trusts('4552','7970').
0.19::trusts('13323','21079').
0.1::trusts('7970','21079').
0.1::trusts('7970','5311').
0.19::trusts('37168','5311').
0.468559::trusts('7970','7666').
0.19::trusts('21499','7666').
0.3439::trusts('7970','4552').
0.19::trusts('14166','4552').
0.271::trusts('15027','4552').
0.271::trusts('5311','37168').
0.1::trusts('7666','21499').
0.19::trusts('4552','14166').
0.19::trusts('4552','15027').
0.1::trusts('42723','15027').
0.1::trusts('15027','42723').
0.271::trusts('2642','42723').
0.1::trusts('41182','42723').
0.1::trusts('2642','31687').
0.1::trusts('31687','2642').
0.19::trusts('42723','2642').
0.1::trusts('42723','41182').
0.1::trusts('7970','13442').
0.271::trusts('7970','21100').
0.1::trusts('4552','1148').
0.1::trusts('15027','12205').

person('13323').
person('7970').
person('21079').
person('5311').
person('7666').
person('4552').
person('37168').
person('21499').
person('14166').
person('15027').
person('42723').
person('31687').
person('2642').
person('41182').
person('13442').
person('21100').
person('1148').
person('12205').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13323')).
query(buys('7970')).
query(buys('21079')).
query(buys('5311')).
query(buys('7666')).
query(buys('4552')).
query(buys('37168')).
query(buys('21499')).
query(buys('14166')).
query(buys('15027')).
query(buys('42723')).
query(buys('31687')).
query(buys('2642')).
query(buys('41182')).
query(buys('13442')).
query(buys('21100')).
query(buys('1148')).
query(buys('12205')).

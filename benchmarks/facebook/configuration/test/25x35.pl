10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('31324','4981').
0.1::trusts('31327','4981').
0.3439::trusts('31337','4981').
0.1::trusts('5230','4981').
0.271::trusts('4981','31324').
0.3439::trusts('4981','31327').
0.794108867905351::trusts('31337','31327').
0.19::trusts('22917','31327').
0.40951::trusts('4981','31337').
0.833228183003334::trusts('31327','31337').
0.3439::trusts('22917','31337').
0.1::trusts('47983','31337').
0.1::trusts('31325','31337').
0.1::trusts('38527','31337').
0.1::trusts('4981','5230').
0.1::trusts('4981','22917').
0.271::trusts('31327','22917').
0.271::trusts('31337','22917').
0.1::trusts('6932','22917').
0.19::trusts('25838','22917').
0.40951::trusts('47983','22917').
0.19::trusts('8223','22917').
0.1::trusts('47210','22917').
0.3439::trusts('31337','47983').
0.5217031::trusts('6932','47983').
0.6513215599::trusts('22917','47983').
0.271::trusts('23426','47983').
0.1::trusts('31325','47983').
0.1::trusts('8223','47983').
0.19::trusts('31337','31325').
0.271::trusts('22917','31325').
0.1::trusts('47983','31325').
0.1::trusts('31337','38527').
0.271::trusts('47983','6932').
0.1::trusts('25838','20185').
0.271::trusts('20185','25838').
0.19::trusts('22917','25838').
0.1::trusts('6932','15621').
0.271::trusts('23426','15621').
0.3439::trusts('6932','23426').
0.19::trusts('15621','23426').
0.19::trusts('47983','23426').
0.3439::trusts('22917','8223').
0.271::trusts('47983','8223').
0.19::trusts('22917','47210').
0.1::trusts('22917','54982').
0.1::trusts('4981','19885').
0.1::trusts('4981','31331').
0.1::trusts('4981','31348').
0.1::trusts('47210','48413').
0.1::trusts('4981','18556').
0.1::trusts('15621','42937').
0.1::trusts('22917','51025').
0.1::trusts('4981','31343').

person('4981').
person('31324').
person('31327').
person('31337').
person('5230').
person('22917').
person('47983').
person('31325').
person('38527').
person('6932').
person('20185').
person('25838').
person('15621').
person('23426').
person('8223').
person('47210').
person('54982').
person('19885').
person('31331').
person('31348').
person('48413').
person('18556').
person('42937').
person('51025').
person('31343').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4981')).
query(buys('31324')).
query(buys('31327')).
query(buys('31337')).
query(buys('5230')).
query(buys('22917')).
query(buys('47983')).
query(buys('31325')).
query(buys('38527')).
query(buys('6932')).
query(buys('20185')).
query(buys('25838')).
query(buys('15621')).
query(buys('23426')).
query(buys('8223')).
query(buys('47210')).
query(buys('54982')).
query(buys('19885')).
query(buys('31331')).
query(buys('31348')).
query(buys('48413')).
query(buys('18556')).
query(buys('42937')).
query(buys('51025')).
query(buys('31343')).

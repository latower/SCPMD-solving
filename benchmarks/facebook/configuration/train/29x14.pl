10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('14547','2694').
0.1::trusts('2694','14547').
0.1::trusts('7201','14547').
0.271::trusts('2587','14547').
0.271::trusts('5912','14547').
0.271::trusts('15953','14547').
0.920233556923127::trusts('16639','14547').
0.5217031::trusts('5362','21522').
0.1::trusts('9995','21522').
0.717570463519::trusts('21522','5362').
0.1::trusts('7201','5362').
0.1::trusts('8071','5362').
0.864914828232701::trusts('15953','5362').
0.3439::trusts('2181','5362').
0.271::trusts('9995','5362').
0.19::trusts('21522','9995').
0.3439::trusts('5362','9995').
0.56953279::trusts('8071','7201').
0.1::trusts('2168','7201').
0.19::trusts('14547','7201').
0.1::trusts('14556','7201').
0.19::trusts('5362','7201').
0.794108867905351::trusts('15953','7201').
0.40951::trusts('16639','7201').
0.1::trusts('1300','7201').
0.1::trusts('2181','7201').
0.1::trusts('23860','7201').
0.6513215599::trusts('7201','8071').
0.1::trusts('14547','8071').
0.19::trusts('14556','8071').
0.19::trusts('5362','8071').
0.3439::trusts('15953','8071').
0.1::trusts('22641','8071').
0.40951::trusts('2170','2168').
0.794108867905351::trusts('2169','2168').
0.1::trusts('1300','2168').
0.56953279::trusts('30536','2168').
0.271::trusts('13722','2168').
0.1::trusts('7201','14556').
0.1::trusts('8071','14556').
0.68618940391::trusts('7201','15953').
0.271::trusts('8071','15953').
0.271::trusts('14547','15953').
0.99695674727783::trusts('5362','15953').
0.6513215599::trusts('2181','15953').
0.19::trusts('1426','15953').
0.19::trusts('7201','16639').
0.271::trusts('2587','16639').
0.833228183003334::trusts('14547','16639').
0.3439::trusts('5912','16639').
0.612579511::trusts('1300','16639').
0.1::trusts('7201','1300').
0.3439::trusts('2168','1300').
0.468559::trusts('2170','1300').
0.6513215599::trusts('16639','1300').
0.40951::trusts('2173','1300').
0.1::trusts('13722','1300').
0.1::trusts('24099','1300').
0.1::trusts('7201','2181').
0.5217031::trusts('5362','2181').
0.794108867905351::trusts('15953','2181').
0.40951::trusts('1426','2181').
0.1::trusts('7201','23860').
0.1::trusts('46032','23860').
0.468559::trusts('14547','2587').
0.271::trusts('16639','2587').
0.271::trusts('2168','2170').
0.1::trusts('2169','2170').
0.271::trusts('1300','2170').
0.1::trusts('2172','2170').
0.7458134171671::trusts('2168','2169').
0.19::trusts('2170','2169').
0.1::trusts('2172','2169').
0.40951::trusts('2168','30536').
0.3439::trusts('59726','30536').
0.3439::trusts('2168','13722').
0.1::trusts('2169','2172').
0.1::trusts('2694','5912').
0.3439::trusts('14547','5912').
0.271::trusts('16639','5912').
0.1::trusts('15953','1426').
0.6513215599::trusts('2181','1426').
0.19::trusts('2170','2173').
0.1::trusts('2169','2173').
0.1::trusts('16639','2173').
0.468559::trusts('1300','2173').
0.3439::trusts('30536','59726').
0.1::trusts('2694','24881').
0.1::trusts('15953','23865').

person('2694').
person('14547').
person('21522').
person('5362').
person('9995').
person('7201').
person('8071').
person('2168').
person('14556').
person('15953').
person('16639').
person('1300').
person('2181').
person('23860').
person('2587').
person('22641').
person('2170').
person('2169').
person('30536').
person('13722').
person('2172').
person('5912').
person('1426').
person('2173').
person('24099').
person('46032').
person('59726').
person('24881').
person('23865').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2694')).
query(buys('14547')).
query(buys('21522')).
query(buys('5362')).
query(buys('9995')).
query(buys('7201')).
query(buys('8071')).
query(buys('2168')).
query(buys('14556')).
query(buys('15953')).
query(buys('16639')).
query(buys('1300')).
query(buys('2181')).
query(buys('23860')).
query(buys('2587')).
query(buys('22641')).
query(buys('2170')).
query(buys('2169')).
query(buys('30536')).
query(buys('13722')).
query(buys('2172')).
query(buys('5912')).
query(buys('1426')).
query(buys('2173')).
query(buys('24099')).
query(buys('46032')).
query(buys('59726')).
query(buys('24881')).
query(buys('23865')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19780','35196').
0.1::trusts('28191','35196').
0.1::trusts('27817','19780').
0.1::trusts('20764','19780').
0.468559::trusts('53255','19780').
0.1::trusts('46189','19780').
0.19::trusts('43168','19780').
0.1::trusts('27817','28191').
0.19::trusts('20764','28191').
0.19::trusts('28476','28191').
0.7458134171671::trusts('20781','27817').
0.19::trusts('15401','27817').
0.1::trusts('25280','27817').
0.1::trusts('28476','27817').
0.19::trusts('24870','27817').
0.1::trusts('28191','27817').
0.271::trusts('25743','27817').
0.1::trusts('19780','20764').
0.19::trusts('25093','20764').
0.1::trusts('28191','20764').
0.19::trusts('18651','20764').
0.1::trusts('33400','20764').
0.1::trusts('19780','53255').
0.1::trusts('19780','46189').
0.1::trusts('19780','43168').
0.1::trusts('37660','43168').
0.1::trusts('33400','43168').
0.40951::trusts('27817','20781').
0.1::trusts('27817','15401').
0.271::trusts('27817','28476').
0.271::trusts('28191','28476').
0.1::trusts('29243','28476').
0.1::trusts('33400','28476').
0.1::trusts('32078','28476').
0.1::trusts('27817','24870').
0.1::trusts('27788','24870').
0.19::trusts('27817','25743').
0.468559::trusts('19780','37660').
0.1::trusts('27817','37660').
0.1::trusts('43168','37660').
0.19::trusts('20764','25093').
0.1::trusts('20764','18651').
0.19::trusts('31244','18651').
0.19::trusts('20764','33400').
0.1::trusts('28476','33400').
0.19::trusts('43168','33400').
0.3439::trusts('28476','29243').
0.1::trusts('28476','32078').
0.19::trusts('20781','40314').
0.1::trusts('27817','41122').
0.1::trusts('46189','30753').
0.1::trusts('20764','25373').
0.1::trusts('53255','53256').

person('35196').
person('19780').
person('28191').
person('27817').
person('20764').
person('53255').
person('46189').
person('43168').
person('20781').
person('15401').
person('25280').
person('28476').
person('24870').
person('25743').
person('37660').
person('25093').
person('18651').
person('33400').
person('29243').
person('32078').
person('27788').
person('31244').
person('40314').
person('41122').
person('30753').
person('25373').
person('53256').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('35196')).
query(buys('19780')).
query(buys('28191')).
query(buys('27817')).
query(buys('20764')).
query(buys('53255')).
query(buys('46189')).
query(buys('43168')).
query(buys('20781')).
query(buys('15401')).
query(buys('25280')).
query(buys('28476')).
query(buys('24870')).
query(buys('25743')).
query(buys('37660')).
query(buys('25093')).
query(buys('18651')).
query(buys('33400')).
query(buys('29243')).
query(buys('32078')).
query(buys('27788')).
query(buys('31244')).
query(buys('40314')).
query(buys('41122')).
query(buys('30753')).
query(buys('25373')).
query(buys('53256')).
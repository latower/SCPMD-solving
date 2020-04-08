10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('31485','11174').
0.19::trusts('575','11174').
0.19::trusts('11330','11174').
0.1::trusts('38037','11174').
0.1::trusts('22244','11174').
0.1::trusts('59816','11174').
0.271::trusts('11174','31485').
0.1::trusts('50422','31485').
0.271::trusts('11174','575').
0.19::trusts('11174','11330').
0.1::trusts('45733','11330').
0.1::trusts('45726','11330').
0.1::trusts('11174','38037').
0.1::trusts('18401','22244').
0.19::trusts('11174','59816').
0.1::trusts('18401','28180').
0.468559::trusts('28180','18401').
0.1::trusts('38042','18401').
0.19::trusts('48673','18401').
0.1::trusts('31485','50422').
0.1::trusts('11174','45733').
0.1::trusts('11330','45733').
0.1::trusts('11174','38042').
0.1::trusts('18401','38042').
0.1::trusts('38040','38042').
0.1::trusts('18401','48673').
0.19::trusts('56739','48673').
0.1::trusts('11174','38040').
0.1::trusts('38039','38040').
0.1::trusts('11174','38039').
0.612579511::trusts('48673','56739').
0.19::trusts('48673','38553').
0.3439::trusts('48673','56142').

person('11174').
person('31485').
person('575').
person('11330').
person('38037').
person('22244').
person('59816').
person('28180').
person('18401').
person('50422').
person('45733').
person('45726').
person('38042').
person('48673').
person('38040').
person('38039').
person('56739').
person('38553').
person('56142').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11174')).
query(buys('31485')).
query(buys('575')).
query(buys('11330')).
query(buys('38037')).
query(buys('22244')).
query(buys('59816')).
query(buys('28180')).
query(buys('18401')).
query(buys('50422')).
query(buys('45733')).
query(buys('45726')).
query(buys('38042')).
query(buys('48673')).
query(buys('38040')).
query(buys('38039')).
query(buys('56739')).
query(buys('38553')).
query(buys('56142')).

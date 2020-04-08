10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18187','8999').
0.19::trusts('20499','8999').
0.1::trusts('7560','8999').
0.1::trusts('18593','8999').
0.1::trusts('8999','18187').
0.1::trusts('20437','18187').
0.1::trusts('24747','18187').
0.19::trusts('8999','20499').
0.19::trusts('50402','20499').
0.1::trusts('8999','7560').
0.1::trusts('8999','18593').
0.19::trusts('57998','25889').
0.19::trusts('25889','57998').
0.19::trusts('30866','57998').
0.1::trusts('40901','57998').
0.19::trusts('30866','20437').
0.1::trusts('9775','20437').
0.1::trusts('18187','20437').
0.19::trusts('20437','30866').
0.468559::trusts('9399','30866').
0.19::trusts('57998','30866').
0.1::trusts('53284','30866').
0.1::trusts('45902','30866').
0.1::trusts('20437','9775').
0.56953279::trusts('30866','9399').
0.1::trusts('30866','53284').
0.1::trusts('30866','45902').
0.19::trusts('57998','40901').
0.1::trusts('18187','24747').
0.1::trusts('50402','24601').
0.1::trusts('24601','50402').
0.271::trusts('20499','50402').
0.1::trusts('8999','43915').
0.1::trusts('45902','47974').

person('8999').
person('18187').
person('20499').
person('7560').
person('18593').
person('25889').
person('57998').
person('20437').
person('30866').
person('9775').
person('9399').
person('53284').
person('45902').
person('40901').
person('24747').
person('24601').
person('50402').
person('43915').
person('47974').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8999')).
query(buys('18187')).
query(buys('20499')).
query(buys('7560')).
query(buys('18593')).
query(buys('25889')).
query(buys('57998')).
query(buys('20437')).
query(buys('30866')).
query(buys('9775')).
query(buys('9399')).
query(buys('53284')).
query(buys('45902')).
query(buys('40901')).
query(buys('24747')).
query(buys('24601')).
query(buys('50402')).
query(buys('43915')).
query(buys('47974')).

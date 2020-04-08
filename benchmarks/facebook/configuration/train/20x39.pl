10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6467','8970').
0.1::trusts('9099','8970').
0.3439::trusts('8970','6467').
0.1::trusts('8970','9099').
0.1::trusts('46525','9099').
0.468559::trusts('47626','9099').
0.1::trusts('5368','9099').
0.1::trusts('28784','9099').
0.1::trusts('9099','46525').
0.1::trusts('43255','46525').
0.468559::trusts('23582','46525').
0.19::trusts('53754','46525').
0.5217031::trusts('9099','47626').
0.1::trusts('5366','47626').
0.1::trusts('9099','5368').
0.1::trusts('9099','28784').
0.271::trusts('46525','43255').
0.1::trusts('39928','43255').
0.3439::trusts('46525','23582').
0.19::trusts('58945','23582').
0.19::trusts('46525','53754').
0.19::trusts('53755','53754').
0.19::trusts('23582','58945').
0.1::trusts('9099','5366').
0.1::trusts('47626','5366').
0.1::trusts('43255','39928').
0.271::trusts('54876','39928').
0.19::trusts('39928','54876').
0.1::trusts('60338','54876').
0.1::trusts('8970','3395').
0.1::trusts('47626','26205').
0.1::trusts('8970','6471').
0.1::trusts('23582','38291').

person('8970').
person('6467').
person('9099').
person('46525').
person('47626').
person('5368').
person('28784').
person('43255').
person('23582').
person('53754').
person('58945').
person('5366').
person('39928').
person('54876').
person('60338').
person('53755').
person('3395').
person('26205').
person('6471').
person('38291').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8970')).
query(buys('6467')).
query(buys('9099')).
query(buys('46525')).
query(buys('47626')).
query(buys('5368')).
query(buys('28784')).
query(buys('43255')).
query(buys('23582')).
query(buys('53754')).
query(buys('58945')).
query(buys('5366')).
query(buys('39928')).
query(buys('54876')).
query(buys('60338')).
query(buys('53755')).
query(buys('3395')).
query(buys('26205')).
query(buys('6471')).
query(buys('38291')).

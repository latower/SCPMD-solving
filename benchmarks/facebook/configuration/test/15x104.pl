10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('31521','6370').
0.1::trusts('38715','6370').
0.1::trusts('6370','31521').
0.1::trusts('38715','31521').
0.1::trusts('11406','31521').
0.1::trusts('31521','38715').
0.1::trusts('43727','38715').
0.1::trusts('4059','38715').
0.1::trusts('7966','38715').
0.19::trusts('39650','38715').
0.19::trusts('31521','11406').
0.1::trusts('7966','18399').
0.1::trusts('18399','7966').
0.19::trusts('38715','7966').
0.1::trusts('31521','43727').
0.19::trusts('38715','43727').
0.1::trusts('6370','4059').
0.1::trusts('38715','4059').
0.271::trusts('38715','39650').
0.1::trusts('4059','39650').
0.1::trusts('51394','39650').
0.1::trusts('39650','51394').
0.19::trusts('6370','37370').
0.1::trusts('31521','37370').
0.1::trusts('6370','43728').
0.19::trusts('31521','43728').
0.1::trusts('38715','43728').
0.19::trusts('7966','43728').
0.1::trusts('37370','43728').
0.1::trusts('18399','56599').
0.1::trusts('7966','43726').
0.1::trusts('39650','54746').

person('6370').
person('31521').
person('38715').
person('11406').
person('18399').
person('7966').
person('43727').
person('4059').
person('39650').
person('51394').
person('37370').
person('43728').
person('56599').
person('43726').
person('54746').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6370')).
query(buys('31521')).
query(buys('38715')).
query(buys('11406')).
query(buys('18399')).
query(buys('7966')).
query(buys('43727')).
query(buys('4059')).
query(buys('39650')).
query(buys('51394')).
query(buys('37370')).
query(buys('43728')).
query(buys('56599')).
query(buys('43726')).
query(buys('54746')).

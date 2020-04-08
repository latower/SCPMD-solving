10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('29162','29166').
0.19::trusts('38366','29166').
0.1::trusts('13561','29166').
0.3439::trusts('29166','29162').
0.19::trusts('38366','29162').
0.1::trusts('36602','29162').
0.1::trusts('42911','29162').
0.19::trusts('29166','38366').
0.1::trusts('29162','38366').
0.1::trusts('13561','38366').
0.19::trusts('29166','13561').
0.1::trusts('36181','13561').
0.1::trusts('12726','13561').
0.1::trusts('38366','13561').
0.19::trusts('36180','36181').
0.19::trusts('36181','36180').
0.1::trusts('29162','42911').
0.1::trusts('12726','12736').
0.1::trusts('12736','12726').
0.1::trusts('13561','12726').
0.1::trusts('32733','12726').
0.77123207545039::trusts('53287','12726').
0.1::trusts('12728','12726').
0.1::trusts('12726','32733').
0.6513215599::trusts('12726','53287').
0.271::trusts('12726','12728').
0.1::trusts('12736','12725').
0.1::trusts('29166','54783').

person('29166').
person('29162').
person('38366').
person('13561').
person('36181').
person('36180').
person('36602').
person('42911').
person('12736').
person('12726').
person('32733').
person('53287').
person('12728').
person('12725').
person('54783').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29166')).
query(buys('29162')).
query(buys('38366')).
query(buys('13561')).
query(buys('36181')).
query(buys('36180')).
query(buys('36602')).
query(buys('42911')).
query(buys('12736')).
query(buys('12726')).
query(buys('32733')).
query(buys('53287')).
query(buys('12728')).
query(buys('12725')).
query(buys('54783')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('38321','8314').
0.271::trusts('8314','38321').
0.19::trusts('22606','38321').
0.40951::trusts('28693','38321').
0.1::trusts('38320','38321').
0.1::trusts('38321','22606').
0.1::trusts('29494','22606').
0.1::trusts('46363','22606').
0.19::trusts('18501','22606').
0.19::trusts('38321','28693').
0.19::trusts('46363','28693').
0.271::trusts('46363','38320').
0.40951::trusts('46366','38320').
0.19::trusts('46302','38320').
0.1::trusts('38321','29494').
0.1::trusts('5598','46363').
0.1::trusts('22606','46363').
0.1::trusts('28693','46363').
0.468559::trusts('38320','46363').
0.19::trusts('3349','46363').
0.1::trusts('22606','18501').
0.1::trusts('45329','18501').
0.40951::trusts('38320','46366').
0.1::trusts('27374','46366').
0.1::trusts('38320','46302').
0.19::trusts('46363','3349').
0.1::trusts('37321','37320').
0.1::trusts('8314','37321').
0.3439::trusts('37320','37321').
0.1::trusts('28693','46365').
0.1::trusts('38320','46365').

person('8314').
person('38321').
person('22606').
person('28693').
person('38320').
person('29494').
person('46363').
person('18501').
person('46366').
person('46302').
person('5598').
person('3349').
person('37320').
person('37321').
person('45329').
person('27374').
person('46365').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8314')).
query(buys('38321')).
query(buys('22606')).
query(buys('28693')).
query(buys('38320')).
query(buys('29494')).
query(buys('46363')).
query(buys('18501')).
query(buys('46366')).
query(buys('46302')).
query(buys('5598')).
query(buys('3349')).
query(buys('37320')).
query(buys('37321')).
query(buys('45329')).
query(buys('27374')).
query(buys('46365')).

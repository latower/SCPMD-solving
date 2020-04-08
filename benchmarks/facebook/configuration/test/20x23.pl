10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21101','38532').
0.1::trusts('57467','38532').
0.468559::trusts('59150','38532').
0.1::trusts('47309','38532').
0.1::trusts('38532','21101').
0.1::trusts('33713','21101').
0.271::trusts('26656','21101').
0.19::trusts('34592','21101').
0.40951::trusts('43868','21101').
0.271::trusts('38532','59150').
0.19::trusts('38532','47309').
0.1::trusts('39857','47309').
0.40951::trusts('38067','33711').
0.3439::trusts('33713','33711').
0.40951::trusts('33711','38067').
0.271::trusts('46372','38067').
0.1::trusts('47190','38067').
0.1::trusts('42704','38067').
0.19::trusts('33711','33713').
0.1::trusts('21101','33713').
0.19::trusts('38067','46372').
0.1::trusts('33711','47190').
0.271::trusts('38067','47190').
0.271::trusts('46372','47190').
0.1::trusts('38067','42704').
0.19::trusts('21101','26656').
0.271::trusts('15173','26656').
0.19::trusts('36053','26656').
0.6513215599::trusts('21101','43868').
0.1::trusts('21101','41941').
0.3439::trusts('26656','36053').
0.1::trusts('47309','39857').
0.1::trusts('15173','34702').
0.1::trusts('32389','34702').

person('38532').
person('21101').
person('57467').
person('59150').
person('47309').
person('33711').
person('38067').
person('33713').
person('46372').
person('47190').
person('42704').
person('26656').
person('34592').
person('43868').
person('41941').
person('15173').
person('36053').
person('39857').
person('34702').
person('32389').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('38532')).
query(buys('21101')).
query(buys('57467')).
query(buys('59150')).
query(buys('47309')).
query(buys('33711')).
query(buys('38067')).
query(buys('33713')).
query(buys('46372')).
query(buys('47190')).
query(buys('42704')).
query(buys('26656')).
query(buys('34592')).
query(buys('43868')).
query(buys('41941')).
query(buys('15173')).
query(buys('36053')).
query(buys('39857')).
query(buys('34702')).
query(buys('32389')).

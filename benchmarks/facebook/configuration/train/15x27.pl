10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('36013','22590').
0.271::trusts('34521','22590').
0.1::trusts('54993','22590').
0.3439::trusts('47252','22590').
0.1::trusts('44749','22590').
0.1::trusts('22590','36013').
0.19::trusts('22590','34521').
0.271::trusts('36013','34521').
0.1::trusts('36007','34521').
0.1::trusts('51922','34521').
0.1::trusts('49954','34521').
0.3439::trusts('22590','47252').
0.1::trusts('22590','44749').
0.1::trusts('33526','44749').
0.271::trusts('34521','36007').
0.1::trusts('34521','51922').
0.1::trusts('46378','60011').
0.1::trusts('22590','46378').
0.3439::trusts('57851','33526').
0.271::trusts('33526','57851').
0.19::trusts('34521','36011').
0.1::trusts('34521','36009').

person('22590').
person('36013').
person('34521').
person('54993').
person('47252').
person('44749').
person('36007').
person('51922').
person('49954').
person('60011').
person('46378').
person('33526').
person('57851').
person('36011').
person('36009').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22590')).
query(buys('36013')).
query(buys('34521')).
query(buys('54993')).
query(buys('47252')).
query(buys('44749')).
query(buys('36007')).
query(buys('51922')).
query(buys('49954')).
query(buys('60011')).
query(buys('46378')).
query(buys('33526')).
query(buys('57851')).
query(buys('36011')).
query(buys('36009')).

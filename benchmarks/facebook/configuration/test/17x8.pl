10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('10106','12454').
0.1::trusts('11869','12454').
0.3439::trusts('40086','12454').
0.1::trusts('42579','12454').
0.19::trusts('12454','10106').
0.1::trusts('22607','10106').
0.1::trusts('12454','11869').
0.1::trusts('40236','11869').
0.271::trusts('12454','40086').
0.40951::trusts('17785','40086').
0.19::trusts('29728','40086').
0.19::trusts('30061','40086').
0.19::trusts('12454','42579').
0.1::trusts('2195','18875').
0.1::trusts('18228','18875').
0.40951::trusts('17785','18875').
0.468559::trusts('21738','18875').
0.271::trusts('37901','18875').
0.1::trusts('18875','2195').
0.1::trusts('6703','2195').
0.468559::trusts('18875','17785').
0.468559::trusts('40086','17785').
0.40951::trusts('18875','21738').
0.19::trusts('18228','21738').
0.40951::trusts('18875','37901').
0.1::trusts('2195','6703').
0.19::trusts('10106','22607').
0.271::trusts('40086','29728').
0.19::trusts('18228','29253').

person('12454').
person('10106').
person('11869').
person('40086').
person('42579').
person('18875').
person('2195').
person('18228').
person('17785').
person('21738').
person('37901').
person('6703').
person('22607').
person('40236').
person('29728').
person('30061').
person('29253').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12454')).
query(buys('10106')).
query(buys('11869')).
query(buys('40086')).
query(buys('42579')).
query(buys('18875')).
query(buys('2195')).
query(buys('18228')).
query(buys('17785')).
query(buys('21738')).
query(buys('37901')).
query(buys('6703')).
query(buys('22607')).
query(buys('40236')).
query(buys('29728')).
query(buys('30061')).
query(buys('29253')).

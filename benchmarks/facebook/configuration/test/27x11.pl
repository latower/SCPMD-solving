10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('42730','42732').
0.19::trusts('42072','42732').
0.1::trusts('55216','42732').
0.1::trusts('42732','42730').
0.40951::trusts('38805','42730').
0.1::trusts('25534','42730').
0.1::trusts('41546','42730').
0.271::trusts('62278','42730').
0.1::trusts('42722','42730').
0.3439::trusts('57812','42730').
0.1::trusts('61288','42730').
0.19::trusts('42732','42072').
0.468559::trusts('38805','42072').
0.271::trusts('42722','42072').
0.271::trusts('42733','42072').
0.1::trusts('40777','42072').
0.19::trusts('42727','42072').
0.1::trusts('42732','55216').
0.1::trusts('42730','55216').
0.40951::trusts('42730','38805').
0.468559::trusts('42072','38805').
0.1::trusts('53114','38805').
0.1::trusts('38805','53114').
0.19::trusts('42730','25534').
0.19::trusts('62278','25534').
0.1::trusts('62759','25534').
0.3439::trusts('42730','62278').
0.1::trusts('26100','62278').
0.1::trusts('25534','62759').
0.1::trusts('42730','41546').
0.1::trusts('42065','41546').
0.271::trusts('43267','41546').
0.1::trusts('41546','42065').
0.1::trusts('42722','42065').
0.1::trusts('38746','42065').
0.56953279::trusts('41546','43267').
0.1::trusts('42730','42722').
0.3439::trusts('42072','42722').
0.19::trusts('42731','42722').
0.19::trusts('42734','42722').
0.40951::trusts('42730','57812').
0.271::trusts('42730','61288').
0.19::trusts('62278','26100').
0.1::trusts('42722','42731').
0.19::trusts('42730','42734').
0.271::trusts('42722','42734').
0.271::trusts('42072','42733').
0.1::trusts('42072','40777').
0.1::trusts('40781','40777').
0.271::trusts('42072','42727').
0.1::trusts('42732','33638').
0.1::trusts('42072','40781').
0.1::trusts('42731','55171').
0.19::trusts('38805','59900').
0.1::trusts('38805','18801').

person('42732').
person('42730').
person('42072').
person('55216').
person('38805').
person('53114').
person('25534').
person('62278').
person('62759').
person('41546').
person('42065').
person('43267').
person('42722').
person('57812').
person('61288').
person('26100').
person('38746').
person('42731').
person('42734').
person('42733').
person('40777').
person('42727').
person('33638').
person('40781').
person('55171').
person('59900').
person('18801').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('42732')).
query(buys('42730')).
query(buys('42072')).
query(buys('55216')).
query(buys('38805')).
query(buys('53114')).
query(buys('25534')).
query(buys('62278')).
query(buys('62759')).
query(buys('41546')).
query(buys('42065')).
query(buys('43267')).
query(buys('42722')).
query(buys('57812')).
query(buys('61288')).
query(buys('26100')).
query(buys('38746')).
query(buys('42731')).
query(buys('42734')).
query(buys('42733')).
query(buys('40777')).
query(buys('42727')).
query(buys('33638')).
query(buys('40781')).
query(buys('55171')).
query(buys('59900')).
query(buys('18801')).
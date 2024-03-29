10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('46848','33749').
0.1::trusts('33749','46848').
0.19::trusts('46850','46848').
0.1::trusts('46852','46848').
0.19::trusts('46849','46848').
0.1::trusts('46113','57570').
0.19::trusts('57570','46113').
0.271::trusts('46850','46113').
0.19::trusts('35664','46113').
0.19::trusts('51979','50706').
0.1::trusts('52032','50706').
0.1::trusts('50706','52032').
0.1::trusts('62537','52032').
0.1::trusts('61053','52032').
0.1::trusts('46850','52032').
0.1::trusts('46919','52032').
0.19::trusts('46848','46850').
0.1::trusts('52032','46850').
0.1::trusts('61053','46850').
0.19::trusts('46852','46850').
0.1::trusts('46853','46850').
0.1::trusts('46113','46850').
0.1::trusts('46848','46852').
0.271::trusts('46850','46852').
0.3439::trusts('46848','46849').
0.1::trusts('46851','46849').
0.1::trusts('52032','62537').
0.19::trusts('52168','62537').
0.19::trusts('52032','46919').
0.1::trusts('46848','46853').
0.3439::trusts('46850','46853').
0.19::trusts('46113','35664').
0.1::trusts('46849','46851').
0.1::trusts('38477','56526').
0.1::trusts('46848','38477').
0.1::trusts('61053','38477').
0.1::trusts('56526','38477').
0.1::trusts('46850','62938').
0.1::trusts('46850','34139').

person('33749').
person('46848').
person('57570').
person('46113').
person('50706').
person('51979').
person('52032').
person('46850').
person('46852').
person('46849').
person('62537').
person('61053').
person('46919').
person('52168').
person('46853').
person('35664').
person('46851').
person('56526').
person('38477').
person('62938').
person('34139').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('33749')).
query(buys('46848')).
query(buys('57570')).
query(buys('46113')).
query(buys('50706')).
query(buys('51979')).
query(buys('52032')).
query(buys('46850')).
query(buys('46852')).
query(buys('46849')).
query(buys('62537')).
query(buys('61053')).
query(buys('46919')).
query(buys('52168')).
query(buys('46853')).
query(buys('35664')).
query(buys('46851')).
query(buys('56526')).
query(buys('38477')).
query(buys('62938')).
query(buys('34139')).

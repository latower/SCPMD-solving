10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('41759','38924').
0.1::trusts('39038','38924').
0.19::trusts('38924','41759').
0.271::trusts('26375','41759').
0.3439::trusts('42968','41759').
0.3439::trusts('31693','41759').
0.6513215599::trusts('24868','41759').
0.19::trusts('3566','41759').
0.19::trusts('38924','39038').
0.6513215599::trusts('41759','26375').
0.1::trusts('45915','42968').
0.271::trusts('24868','42968').
0.717570463519::trusts('41759','24868').
0.68618940391::trusts('42968','24868').
0.468559::trusts('31693','24868').
0.1::trusts('58566','24868').
0.19::trusts('41759','3566').
0.271::trusts('42968','45915').
0.1::trusts('42968','61205').
0.1::trusts('31693','61205').
0.19::trusts('42968','54987').
0.1::trusts('31693','54987').
0.19::trusts('31693','38716').
0.19::trusts('31693','51784').
0.1::trusts('41759','41760').
0.1::trusts('61205','61224').
0.1::trusts('38924','60020').

person('38924').
person('41759').
person('39038').
person('26375').
person('42968').
person('31693').
person('24868').
person('3566').
person('45915').
person('61205').
person('58566').
person('54987').
person('38716').
person('51784').
person('41760').
person('61224').
person('60020').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('38924')).
query(buys('41759')).
query(buys('39038')).
query(buys('26375')).
query(buys('42968')).
query(buys('31693')).
query(buys('24868')).
query(buys('3566')).
query(buys('45915')).
query(buys('61205')).
query(buys('58566')).
query(buys('54987')).
query(buys('38716')).
query(buys('51784')).
query(buys('41760')).
query(buys('61224')).
query(buys('60020')).

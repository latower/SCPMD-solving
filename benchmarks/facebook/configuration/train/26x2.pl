10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('13621','38796').
0.1::trusts('42068','38796').
0.1::trusts('48474','38796').
0.1::trusts('38798','38796').
0.19::trusts('59921','38796').
0.19::trusts('60665','38796').
0.19::trusts('38796','13621').
0.19::trusts('38804','13621').
0.1::trusts('38796','48474').
0.40951::trusts('21964','48474').
0.3439::trusts('38796','59921').
0.1::trusts('60665','59921').
0.1::trusts('38796','60665').
0.271::trusts('38798','60665').
0.1::trusts('53706','31432').
0.3439::trusts('43750','31432').
0.3439::trusts('38803','31432').
0.1::trusts('51313','31432').
0.1::trusts('31432','53706').
0.19::trusts('49505','53706').
0.19::trusts('31432','43750').
0.6513215599::trusts('38803','43750').
0.3439::trusts('51313','43750').
0.1::trusts('51312','43750').
0.19::trusts('31432','38803').
0.1::trusts('38804','38803').
0.56953279::trusts('43750','38803').
0.19::trusts('42746','38803').
0.3439::trusts('43750','51313').
0.3439::trusts('13621','38804').
0.19::trusts('38803','38804').
0.1::trusts('38799','38804').
0.1::trusts('38804','38799').
0.1::trusts('51756','38799').
0.19::trusts('53706','49505').
0.271::trusts('21964','49505').
0.40951::trusts('48474','21964').
0.271::trusts('49505','21964').
0.1::trusts('18812','21964').
0.1::trusts('42071','21964').
0.19::trusts('43750','51312').
0.271::trusts('38803','42746').
0.1::trusts('38799','51756').
0.1::trusts('38799','57712').
0.1::trusts('21964','18812').
0.19::trusts('21964','42071').
0.1::trusts('13621','38792').
0.19::trusts('49505','19217').
0.19::trusts('38799','62415').
0.1::trusts('49505','21886').

person('38796').
person('13621').
person('42068').
person('48474').
person('38798').
person('59921').
person('60665').
person('31432').
person('53706').
person('43750').
person('38803').
person('51313').
person('38804').
person('38799').
person('49505').
person('21964').
person('51312').
person('42746').
person('51756').
person('57712').
person('18812').
person('42071').
person('38792').
person('19217').
person('62415').
person('21886').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('38796')).
query(buys('13621')).
query(buys('42068')).
query(buys('48474')).
query(buys('38798')).
query(buys('59921')).
query(buys('60665')).
query(buys('31432')).
query(buys('53706')).
query(buys('43750')).
query(buys('38803')).
query(buys('51313')).
query(buys('38804')).
query(buys('38799')).
query(buys('49505')).
query(buys('21964')).
query(buys('51312')).
query(buys('42746')).
query(buys('51756')).
query(buys('57712')).
query(buys('18812')).
query(buys('42071')).
query(buys('38792')).
query(buys('19217')).
query(buys('62415')).
query(buys('21886')).

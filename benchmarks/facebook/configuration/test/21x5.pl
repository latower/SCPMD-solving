10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('11501','8196').
0.1::trusts('385','8196').
0.1::trusts('20427','8196').
0.271::trusts('8196','11501').
0.998938883388004::trusts('385','11501').
0.1::trusts('20427','11501').
0.271::trusts('11501','20427').
0.19::trusts('385','20427').
0.19::trusts('33608','20427').
0.1::trusts('385','11515').
0.19::trusts('7190','11515').
0.1::trusts('5215','11515').
0.271::trusts('10739','11515').
0.19::trusts('11501','7190').
0.864914828232701::trusts('385','7190').
0.271::trusts('11515','7190').
0.1::trusts('11515','10739').
0.19::trusts('27239','10739').
0.999970487334569::trusts('12255','10739').
0.19::trusts('10739','27239').
0.1::trusts('33608','18126').
0.1::trusts('18126','33608').
0.1::trusts('20427','33608').
0.56953279::trusts('31106','33608').
0.612579511::trusts('46895','33608').
0.40951::trusts('33608','31106').
0.271::trusts('45783','31106').
0.3439::trusts('45784','31106').
0.468559::trusts('33608','46895').
0.999996013276521::trusts('10739','12255').
0.1::trusts('31106','45783').
0.3439::trusts('31106','45784').
0.1::trusts('8196','20429').
0.1::trusts('385','38206').
0.1::trusts('11501','21277').
0.1::trusts('33608','29771').
0.1::trusts('7190','11532').

person('8196').
person('11501').
person('385').
person('20427').
person('11515').
person('7190').
person('5215').
person('10739').
person('27239').
person('18126').
person('33608').
person('31106').
person('46895').
person('12255').
person('45783').
person('45784').
person('20429').
person('38206').
person('21277').
person('29771').
person('11532').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8196')).
query(buys('11501')).
query(buys('385')).
query(buys('20427')).
query(buys('11515')).
query(buys('7190')).
query(buys('5215')).
query(buys('10739')).
query(buys('27239')).
query(buys('18126')).
query(buys('33608')).
query(buys('31106')).
query(buys('46895')).
query(buys('12255')).
query(buys('45783')).
query(buys('45784')).
query(buys('20429')).
query(buys('38206')).
query(buys('21277')).
query(buys('29771')).
query(buys('11532')).

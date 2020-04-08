10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('42067','28761').
0.3439::trusts('54472','28761').
0.3439::trusts('28761','42067').
0.1::trusts('21969','42067').
0.1::trusts('52758','42067').
0.271::trusts('54472','42067').
0.19::trusts('51701','42067').
0.3439::trusts('49339','42067').
0.1::trusts('39241','42067').
0.1::trusts('42185','42067').
0.19::trusts('30045','42067').
0.3439::trusts('28761','54472').
0.19::trusts('42067','54472').
0.19::trusts('42067','21969').
0.1::trusts('42067','52758').
0.271::trusts('42067','51701').
0.1::trusts('60689','51701').
0.3439::trusts('42067','49339').
0.271::trusts('55929','49339').
0.19::trusts('42067','30045').
0.19::trusts('16807','30045').
0.1::trusts('28761','37822').
0.1::trusts('42067','37822').
0.1::trusts('51701','60689').
0.1::trusts('42067','59435').
0.1::trusts('37822','59435').
0.19::trusts('54472','59435').
0.1::trusts('42067','61592').
0.1::trusts('42067','11475').
0.1::trusts('51701','11475').
0.1::trusts('42067','55693').

person('28761').
person('42067').
person('54472').
person('21969').
person('52758').
person('51701').
person('49339').
person('39241').
person('42185').
person('30045').
person('37822').
person('60689').
person('55929').
person('16807').
person('59435').
person('61592').
person('11475').
person('55693').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('28761')).
query(buys('42067')).
query(buys('54472')).
query(buys('21969')).
query(buys('52758')).
query(buys('51701')).
query(buys('49339')).
query(buys('39241')).
query(buys('42185')).
query(buys('30045')).
query(buys('37822')).
query(buys('60689')).
query(buys('55929')).
query(buys('16807')).
query(buys('59435')).
query(buys('61592')).
query(buys('11475')).
query(buys('55693')).

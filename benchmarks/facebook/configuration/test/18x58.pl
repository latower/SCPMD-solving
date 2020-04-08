10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('15754','18077').
0.271::trusts('21444','18077').
0.1::trusts('11666','18077').
0.19::trusts('15747','18077').
0.1::trusts('38381','18077').
0.1::trusts('7255','18077').
0.1::trusts('7335','18077').
0.19::trusts('18077','15754').
0.1::trusts('11666','15754').
0.1::trusts('35023','15754').
0.1::trusts('18077','21444').
0.19::trusts('23472','21444').
0.1::trusts('18077','11666').
0.19::trusts('15754','11666').
0.19::trusts('18077','15747').
0.1::trusts('11666','15747').
0.1::trusts('18077','38381').
0.1::trusts('18077','7255').
0.19::trusts('21444','7255').
0.1::trusts('18077','7335').
0.19::trusts('33584','7335').
0.3439::trusts('15754','35023').
0.1::trusts('21444','23472').
0.271::trusts('33780','23472').
0.1::trusts('23472','33780').
0.1::trusts('33584','33586').
0.1::trusts('33586','33584').
0.19::trusts('7335','33584').
0.1::trusts('7335','20199').
0.1::trusts('20199','33688').
0.1::trusts('18754','33688').
0.1::trusts('33688','18754').
0.1::trusts('33780','58101').
0.1::trusts('18077','36713').
0.1::trusts('21444','36713').

person('18077').
person('15754').
person('21444').
person('11666').
person('15747').
person('38381').
person('7255').
person('7335').
person('35023').
person('23472').
person('33780').
person('33586').
person('33584').
person('20199').
person('33688').
person('18754').
person('58101').
person('36713').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18077')).
query(buys('15754')).
query(buys('21444')).
query(buys('11666')).
query(buys('15747')).
query(buys('38381')).
query(buys('7255')).
query(buys('7335')).
query(buys('35023')).
query(buys('23472')).
query(buys('33780')).
query(buys('33586')).
query(buys('33584')).
query(buys('20199')).
query(buys('33688')).
query(buys('18754')).
query(buys('58101')).
query(buys('36713')).

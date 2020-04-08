10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('37968','40240').
0.1::trusts('45750','40240').
0.3439::trusts('40240','37968').
0.1::trusts('37969','37968').
0.1::trusts('45748','37968').
0.468559::trusts('40240','45750').
0.1::trusts('44244','17857').
0.1::trusts('37969','17857').
0.1::trusts('17857','44244').
0.1::trusts('17857','37969').
0.1::trusts('18679','37969').
0.1::trusts('19457','37969').
0.1::trusts('37968','37969').
0.19::trusts('56183','37969').
0.1::trusts('37969','18679').
0.271::trusts('63074','18679').
0.1::trusts('37969','19457').
0.1::trusts('57900','19457').
0.19::trusts('37969','56183').
0.271::trusts('55740','56183').
0.271::trusts('56183','55740').
0.1::trusts('40240','45749').
0.19::trusts('55740','30308').
0.19::trusts('18996','58128').
0.19::trusts('55740','58128').
0.19::trusts('63074','63724').

person('40240').
person('37968').
person('45750').
person('17857').
person('44244').
person('37969').
person('18679').
person('63074').
person('19457').
person('57900').
person('56183').
person('45748').
person('55740').
person('45749').
person('30308').
person('58128').
person('18996').
person('63724').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('40240')).
query(buys('37968')).
query(buys('45750')).
query(buys('17857')).
query(buys('44244')).
query(buys('37969')).
query(buys('18679')).
query(buys('63074')).
query(buys('19457')).
query(buys('57900')).
query(buys('56183')).
query(buys('45748')).
query(buys('55740')).
query(buys('45749')).
query(buys('30308')).
query(buys('58128')).
query(buys('18996')).
query(buys('63724')).

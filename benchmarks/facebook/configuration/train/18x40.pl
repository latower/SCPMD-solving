10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('6743','526').
0.40951::trusts('2926','526').
0.3439::trusts('16384','526').
0.717570463519::trusts('726','526').
0.1::trusts('13438','526').
0.271::trusts('20978','526').
0.271::trusts('18191','526').
0.19::trusts('526','6743').
0.5217031::trusts('29740','6743').
0.5217031::trusts('526','2926').
0.468559::trusts('726','2926').
0.19::trusts('5930','2926').
0.271::trusts('4238','2926').
0.271::trusts('526','16384').
0.68618940391::trusts('526','726').
0.56953279::trusts('2926','726').
0.19::trusts('5930','726').
0.3439::trusts('526','20978').
0.271::trusts('38673','20978').
0.271::trusts('526','18191').
0.40951::trusts('6743','29740').
0.19::trusts('726','5930').
0.1::trusts('29364','5930').
0.19::trusts('2926','4238').
0.1::trusts('726','4238').
0.1::trusts('5930','29364').
0.19::trusts('726','2917').
0.1::trusts('17562','2917').
0.19::trusts('2926','17562').
0.1::trusts('6743','4614').
0.271::trusts('16384','33789').
0.271::trusts('35614','33789').
0.1::trusts('33789','35614').

person('526').
person('6743').
person('2926').
person('16384').
person('726').
person('13438').
person('20978').
person('18191').
person('29740').
person('5930').
person('4238').
person('38673').
person('29364').
person('2917').
person('17562').
person('4614').
person('33789').
person('35614').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('526')).
query(buys('6743')).
query(buys('2926')).
query(buys('16384')).
query(buys('726')).
query(buys('13438')).
query(buys('20978')).
query(buys('18191')).
query(buys('29740')).
query(buys('5930')).
query(buys('4238')).
query(buys('38673')).
query(buys('29364')).
query(buys('2917')).
query(buys('17562')).
query(buys('4614')).
query(buys('33789')).
query(buys('35614')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('47937','37464').
0.1::trusts('37464','47937').
0.19::trusts('47935','47937').
0.1::trusts('47936','47937').
0.19::trusts('54917','41903').
0.1::trusts('11584','41903').
0.19::trusts('41903','54917').
0.19::trusts('47935','54917').
0.1::trusts('11584','54917').
0.1::trusts('41903','11584').
0.19::trusts('47937','47935').
0.19::trusts('54917','47935').
0.1::trusts('51988','47935').
0.1::trusts('49625','47935').
0.1::trusts('47929','47935').
0.1::trusts('47935','47936').
0.271::trusts('47935','51988').
0.1::trusts('56075','51988').
0.1::trusts('41475','51988').
0.271::trusts('47935','49625').
0.1::trusts('51988','49625').
0.1::trusts('49330','49625').
0.19::trusts('47935','47929').
0.19::trusts('50379','47929').
0.19::trusts('51988','41475').
0.1::trusts('47936','58757').
0.1::trusts('52080','58757').
0.1::trusts('58757','52080').
0.19::trusts('47929','50379').
0.1::trusts('54917','47932').
0.19::trusts('47935','47932').
0.3439::trusts('56075','59207').
0.1::trusts('59207','59208').

person('37464').
person('47937').
person('41903').
person('54917').
person('11584').
person('47935').
person('47936').
person('51988').
person('49625').
person('47929').
person('56075').
person('41475').
person('58757').
person('52080').
person('49330').
person('50379').
person('47932').
person('59207').
person('59208').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('37464')).
query(buys('47937')).
query(buys('41903')).
query(buys('54917')).
query(buys('11584')).
query(buys('47935')).
query(buys('47936')).
query(buys('51988')).
query(buys('49625')).
query(buys('47929')).
query(buys('56075')).
query(buys('41475')).
query(buys('58757')).
query(buys('52080')).
query(buys('49330')).
query(buys('50379')).
query(buys('47932')).
query(buys('59207')).
query(buys('59208')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.717570463519::trusts('4870','4533').
0.3439::trusts('12740','4533').
0.19::trusts('11972','4533').
0.1::trusts('17848','4533').
0.1::trusts('23618','4533').
0.612579511::trusts('4533','4870').
0.957608841724784::trusts('12740','4870').
0.19::trusts('23618','4870').
0.5217031::trusts('4533','12740').
0.947665236697264::trusts('4870','12740').
0.1::trusts('12229','12740').
0.19::trusts('19833','12740').
0.3439::trusts('4533','11972').
0.19::trusts('17848','11972').
0.1::trusts('8471','11972').
0.1::trusts('8486','11972').
0.271::trusts('4533','17848').
0.1::trusts('4533','23618').
0.19::trusts('4870','23618').
0.1::trusts('12740','12229').
0.1::trusts('11972','8486').
0.19::trusts('44100','8486').
0.19::trusts('8486','44100').
0.1::trusts('44101','44100').
0.1::trusts('44100','44101').
0.1::trusts('8471','11975').
0.19::trusts('4533','21910').
0.1::trusts('12740','7989').
0.1::trusts('4533','22631').
0.1::trusts('12740','21515').
0.19::trusts('23617','63428').
0.1::trusts('4533','23617').
0.19::trusts('63428','23617').

person('4533').
person('4870').
person('12740').
person('11972').
person('17848').
person('23618').
person('12229').
person('19833').
person('8471').
person('8486').
person('44100').
person('44101').
person('11975').
person('21910').
person('7989').
person('22631').
person('21515').
person('63428').
person('23617').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4533')).
query(buys('4870')).
query(buys('12740')).
query(buys('11972')).
query(buys('17848')).
query(buys('23618')).
query(buys('12229')).
query(buys('19833')).
query(buys('8471')).
query(buys('8486')).
query(buys('44100')).
query(buys('44101')).
query(buys('11975')).
query(buys('21910')).
query(buys('7989')).
query(buys('22631')).
query(buys('21515')).
query(buys('63428')).
query(buys('23617')).

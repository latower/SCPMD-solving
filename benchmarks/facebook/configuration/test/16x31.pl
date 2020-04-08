10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('143','141').
0.19::trusts('31','141').
0.1::trusts('141','143').
0.1::trusts('39125','143').
0.271::trusts('31','143').
0.19::trusts('14466','143').
0.1::trusts('145','143').
0.19::trusts('43552','143').
0.1::trusts('141','31').
0.1::trusts('5826','31').
0.1::trusts('55726','31').
0.1::trusts('6797','31').
0.271::trusts('14466','31').
0.56953279::trusts('31','14466').
0.1::trusts('143','145').
0.1::trusts('41109','145').
0.1::trusts('143','43552').
0.1::trusts('31','5826').
0.1::trusts('6797','5826').
0.1::trusts('31','55726').
0.271::trusts('31','6797').
0.19::trusts('5826','6797').
0.468559::trusts('57791','6797').
0.271::trusts('6797','57791').
0.40951::trusts('11470','41109').
0.1::trusts('145','41109').
0.1::trusts('5826','4966').
0.19::trusts('145','14801').
0.1::trusts('11470','54395').

person('141').
person('143').
person('31').
person('39125').
person('14466').
person('145').
person('43552').
person('5826').
person('55726').
person('6797').
person('57791').
person('41109').
person('11470').
person('4966').
person('14801').
person('54395').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('141')).
query(buys('143')).
query(buys('31')).
query(buys('39125')).
query(buys('14466')).
query(buys('145')).
query(buys('43552')).
query(buys('5826')).
query(buys('55726')).
query(buys('6797')).
query(buys('57791')).
query(buys('41109')).
query(buys('11470')).
query(buys('4966')).
query(buys('14801')).
query(buys('54395')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('9951','7031').
0.1::trusts('5720','7031').
0.271::trusts('9957','7031').
0.3439::trusts('7031','9951').
0.1::trusts('30166','9951').
0.19::trusts('7031','5720').
0.271::trusts('28360','5720').
0.40951::trusts('7031','9957').
0.1::trusts('13074','9957').
0.1::trusts('5720','28360').
0.1::trusts('9957','13074').
0.468559::trusts('31099','13074').
0.19::trusts('23674','13074').
0.1::trusts('33188','13074').
0.19::trusts('21979','13074').
0.56953279::trusts('31099','11626').
0.5217031::trusts('23674','11626').
0.271::trusts('11626','31099').
0.999995078119162::trusts('23674','31099').
0.997261072550047::trusts('33188','31099').
0.271::trusts('13074','31099').
0.19::trusts('21979','31099').
0.1::trusts('43989','31099').
0.1::trusts('43990','31099').
0.271::trusts('11626','23674').
0.999980636740211::trusts('31099','23674').
0.794108867905351::trusts('33188','23674').
0.998938883388004::trusts('31099','33188').
0.794108867905351::trusts('23674','33188').
0.1::trusts('13074','33188').
0.271::trusts('31099','21979').
0.271::trusts('31099','43989').
0.5217031::trusts('23674','43989').
0.19::trusts('31099','43990').
0.1::trusts('33188','33441').
0.1::trusts('9957','21876').

person('7031').
person('9951').
person('5720').
person('9957').
person('30166').
person('28360').
person('13074').
person('11626').
person('31099').
person('23674').
person('33188').
person('21979').
person('43989').
person('43990').
person('33441').
person('21876').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7031')).
query(buys('9951')).
query(buys('5720')).
query(buys('9957')).
query(buys('30166')).
query(buys('28360')).
query(buys('13074')).
query(buys('11626')).
query(buys('31099')).
query(buys('23674')).
query(buys('33188')).
query(buys('21979')).
query(buys('43989')).
query(buys('43990')).
query(buys('33441')).
query(buys('21876')).

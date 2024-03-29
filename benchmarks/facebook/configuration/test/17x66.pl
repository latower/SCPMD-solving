10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('17043','20452').
0.19::trusts('20452','17043').
0.1::trusts('20454','17043').
0.271::trusts('10559','17043').
0.271::trusts('17043','20454').
0.19::trusts('20443','20454').
0.271::trusts('7407','20454').
0.1::trusts('49088','20454').
0.1::trusts('55351','20454').
0.19::trusts('55969','20454').
0.19::trusts('26099','20454').
0.1::trusts('48859','20454').
0.3439::trusts('17043','10559').
0.1::trusts('6916','10559').
0.19::trusts('20454','20443').
0.1::trusts('7407','20443').
0.19::trusts('49088','20443').
0.19::trusts('10981','20443').
0.19::trusts('20454','7407').
0.19::trusts('49088','7407').
0.1::trusts('55351','7407').
0.468559::trusts('55969','7407').
0.1::trusts('20454','49088').
0.1::trusts('20443','49088').
0.1::trusts('7407','49088').
0.271::trusts('55351','49088').
0.1::trusts('50617','49088').
0.1::trusts('59797','49088').
0.1::trusts('20454','55969').
0.271::trusts('7407','55969').
0.19::trusts('63303','55969').
0.1::trusts('20454','26099').
0.19::trusts('20454','48859').
0.19::trusts('17043','6916').
0.19::trusts('10559','6916').
0.19::trusts('10561','6916').
0.1::trusts('20443','10981').
0.1::trusts('17043','50617').
0.271::trusts('49088','50617').

person('20452').
person('17043').
person('20454').
person('10559').
person('20443').
person('7407').
person('49088').
person('55351').
person('55969').
person('26099').
person('48859').
person('6916').
person('10561').
person('10981').
person('50617').
person('59797').
person('63303').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20452')).
query(buys('17043')).
query(buys('20454')).
query(buys('10559')).
query(buys('20443')).
query(buys('7407')).
query(buys('49088')).
query(buys('55351')).
query(buys('55969')).
query(buys('26099')).
query(buys('48859')).
query(buys('6916')).
query(buys('10561')).
query(buys('10981')).
query(buys('50617')).
query(buys('59797')).
query(buys('63303')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('58458','24446').
0.271::trusts('24446','58458').
0.1::trusts('43624','58458').
0.1::trusts('31031','34159').
0.1::trusts('43619','34159').
0.19::trusts('34155','34159').
0.1::trusts('43624','34159').
0.271::trusts('34155','31031').
0.1::trusts('43624','31031').
0.1::trusts('34159','43619').
0.1::trusts('34159','34155').
0.271::trusts('31031','34155').
0.1::trusts('34157','34155').
0.271::trusts('34156','34155').
0.19::trusts('34162','34155').
0.1::trusts('34159','43624').
0.1::trusts('42634','43624').
0.1::trusts('43620','43624').
0.19::trusts('58458','43624').
0.19::trusts('30005','43624').
0.1::trusts('43624','42634').
0.1::trusts('43624','43620').
0.1::trusts('34155','34157').
0.271::trusts('34155','34156').
0.19::trusts('34155','34162').
0.1::trusts('61037','34162').
0.19::trusts('43624','30005').
0.1::trusts('34162','61037').
0.1::trusts('31031','55786').
0.1::trusts('55786','55785').

person('24446').
person('58458').
person('34159').
person('31031').
person('43619').
person('34155').
person('43624').
person('42634').
person('43620').
person('34157').
person('34156').
person('34162').
person('30005').
person('61037').
person('55786').
person('55785').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('24446')).
query(buys('58458')).
query(buys('34159')).
query(buys('31031')).
query(buys('43619')).
query(buys('34155')).
query(buys('43624')).
query(buys('42634')).
query(buys('43620')).
query(buys('34157')).
query(buys('34156')).
query(buys('34162')).
query(buys('30005')).
query(buys('61037')).
query(buys('55786')).
query(buys('55785')).

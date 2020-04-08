10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6254','6888').
0.19::trusts('6836','6888').
0.40951::trusts('6868','6888').
0.1::trusts('6888','6836').
0.3439::trusts('6254','6836').
0.19::trusts('6868','6836').
0.1::trusts('8513','6836').
0.1::trusts('6879','6836').
0.1::trusts('6895','6836').
0.1::trusts('6894','6836').
0.3439::trusts('6888','6868').
0.40951::trusts('6254','6868').
0.19::trusts('6836','6868').
0.1::trusts('6895','6868').
0.1::trusts('6844','6868').
0.1::trusts('6836','6881').
0.1::trusts('6868','6881').
0.19::trusts('6895','6881').
0.19::trusts('6881','6895').
0.1::trusts('6836','6895').
0.1::trusts('6868','6895').
0.1::trusts('5732','6895').
0.1::trusts('6254','8513').
0.1::trusts('6868','8513').
0.1::trusts('24105','8513').
0.1::trusts('39993','8513').
0.1::trusts('6836','6879').
0.40951::trusts('6836','6894').
0.271::trusts('6254','6844').
0.1::trusts('6836','6844').
0.1::trusts('6868','6844').
0.1::trusts('8513','24105').
0.468559::trusts('6254','14529').
0.1::trusts('6881','14529').
0.1::trusts('29232','14529').
0.271::trusts('14529','29232').
0.1::trusts('6895','5732').
0.1::trusts('6888','6845').
0.1::trusts('6254','6845').
0.1::trusts('6836','6845').
0.3439::trusts('14529','6845').
0.1::trusts('6844','6845').
0.1::trusts('6888','6889').
0.19::trusts('6254','6889').
0.1::trusts('6836','6889').
0.1::trusts('6868','6889').
0.19::trusts('6254','6863').
0.1::trusts('6836','6866').
0.1::trusts('6254','6887').
0.1::trusts('6836','6887').
0.1::trusts('38410','6887').
0.1::trusts('14529','43926').

person('6888').
person('6254').
person('6836').
person('6868').
person('6881').
person('6895').
person('8513').
person('6879').
person('6894').
person('6844').
person('24105').
person('14529').
person('29232').
person('39993').
person('5732').
person('6845').
person('6889').
person('6863').
person('6866').
person('6887').
person('38410').
person('43926').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6888')).
query(buys('6254')).
query(buys('6836')).
query(buys('6868')).
query(buys('6881')).
query(buys('6895')).
query(buys('8513')).
query(buys('6879')).
query(buys('6894')).
query(buys('6844')).
query(buys('24105')).
query(buys('14529')).
query(buys('29232')).
query(buys('39993')).
query(buys('5732')).
query(buys('6845')).
query(buys('6889')).
query(buys('6863')).
query(buys('6866')).
query(buys('6887')).
query(buys('38410')).
query(buys('43926')).
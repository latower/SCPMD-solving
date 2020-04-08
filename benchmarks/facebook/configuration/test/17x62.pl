10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('33047','33078').
0.271::trusts('27473','33047').
0.19::trusts('27213','33047').
0.19::trusts('33044','16142').
0.1::trusts('16142','33044').
0.19::trusts('27473','33044').
0.901522909781639::trusts('33045','33044').
0.19::trusts('27213','33044').
0.717570463519::trusts('27213','27473').
0.271::trusts('33044','27473').
0.1::trusts('18872','27473').
0.3439::trusts('33047','27473').
0.1::trusts('42095','27473').
0.717570463519::trusts('27473','27213').
0.19::trusts('33044','27213').
0.271::trusts('33047','27213').
0.1::trusts('16142','18872').
0.271::trusts('27473','18872').
0.1::trusts('27213','18872').
0.1::trusts('27473','42095').
0.911370618803475::trusts('33044','33045').
0.1::trusts('33076','33045').
0.1::trusts('7961','33076').
0.1::trusts('33045','33076').
0.1::trusts('33044','33048').
0.1::trusts('7961','38393').
0.19::trusts('7961','44140').
0.1::trusts('33045','27214').
0.1::trusts('33044','27214').
0.19::trusts('27473','32462').
0.1::trusts('27213','32462').
0.1::trusts('38970','32462').

person('33078').
person('33047').
person('16142').
person('33044').
person('27473').
person('27213').
person('18872').
person('42095').
person('33045').
person('33076').
person('33048').
person('7961').
person('38393').
person('44140').
person('27214').
person('32462').
person('38970').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('33078')).
query(buys('33047')).
query(buys('16142')).
query(buys('33044')).
query(buys('27473')).
query(buys('27213')).
query(buys('18872')).
query(buys('42095')).
query(buys('33045')).
query(buys('33076')).
query(buys('33048')).
query(buys('7961')).
query(buys('38393')).
query(buys('44140')).
query(buys('27214')).
query(buys('32462')).
query(buys('38970')).

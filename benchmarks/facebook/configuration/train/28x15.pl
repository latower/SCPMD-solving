10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('47020','12677').
0.19::trusts('12677','47020').
0.1::trusts('8358','47020').
0.19::trusts('14565','47020').
0.19::trusts('48295','47020').
0.1::trusts('8358','11435').
0.1::trusts('11435','8358').
0.19::trusts('41185','8358').
0.1::trusts('47020','8358').
0.1::trusts('12795','8358').
0.56953279::trusts('25107','8358').
0.19::trusts('48295','8358').
0.19::trusts('14536','8358').
0.1::trusts('23419','8358').
0.19::trusts('8358','41185').
0.1::trusts('5637','41185').
0.1::trusts('8358','12795').
0.1::trusts('48295','12795').
0.56953279::trusts('8358','25107').
0.19::trusts('26733','25107').
0.1::trusts('43790','25107').
0.19::trusts('51418','25107').
0.1::trusts('48295','25107').
0.271::trusts('51417','25107').
0.1::trusts('8358','48295').
0.19::trusts('47020','48295').
0.1::trusts('12795','48295').
0.19::trusts('25107','48295').
0.1::trusts('23419','48295').
0.19::trusts('57697','48295').
0.1::trusts('43793','48295').
0.1::trusts('8358','23419').
0.19::trusts('48295','23419').
0.1::trusts('12677','14565').
0.1::trusts('47020','14565').
0.19::trusts('48295','14565').
0.40951::trusts('26733','13111').
0.1::trusts('25107','13111').
0.19::trusts('13111','26733').
0.271::trusts('25107','26733').
0.1::trusts('26735','26733').
0.19::trusts('26733','26735').
0.19::trusts('26745','26735').
0.1::trusts('54376','26735').
0.1::trusts('11435','43790').
0.19::trusts('8358','43790').
0.1::trusts('41185','43790').
0.271::trusts('25107','43790').
0.271::trusts('25107','51418').
0.1::trusts('49297','51418').
0.1::trusts('51418','49297').
0.1::trusts('26735','49297').
0.1::trusts('26736','49297').
0.1::trusts('48295','57697').
0.1::trusts('14565','43793').
0.40951::trusts('48295','43793').
0.1::trusts('37971','43793').
0.1::trusts('26735','26745').
0.1::trusts('43793','37971').
0.1::trusts('49297','26736').
0.1::trusts('25107','43791').
0.1::trusts('48295','43791').
0.1::trusts('8358','8357').
0.19::trusts('8358','46674').

person('12677').
person('47020').
person('11435').
person('8358').
person('41185').
person('12795').
person('25107').
person('48295').
person('14536').
person('23419').
person('14565').
person('5637').
person('13111').
person('26733').
person('26735').
person('43790').
person('51418').
person('51417').
person('49297').
person('57697').
person('43793').
person('26745').
person('54376').
person('37971').
person('26736').
person('43791').
person('8357').
person('46674').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12677')).
query(buys('47020')).
query(buys('11435')).
query(buys('8358')).
query(buys('41185')).
query(buys('12795')).
query(buys('25107')).
query(buys('48295')).
query(buys('14536')).
query(buys('23419')).
query(buys('14565')).
query(buys('5637')).
query(buys('13111')).
query(buys('26733')).
query(buys('26735')).
query(buys('43790')).
query(buys('51418')).
query(buys('51417')).
query(buys('49297')).
query(buys('57697')).
query(buys('43793')).
query(buys('26745')).
query(buys('54376')).
query(buys('37971')).
query(buys('26736')).
query(buys('43791')).
query(buys('8357')).
query(buys('46674')).

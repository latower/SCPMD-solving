10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.999700309327122::trusts('3424','3430').
0.3439::trusts('19440','3430').
0.1::trusts('3439','3430').
0.1::trusts('3429','3430').
0.794108867905351::trusts('31007','3430').
0.19::trusts('31006','3430').
0.19::trusts('19446','3430').
0.19::trusts('31010','3430').
0.19::trusts('3424','19440').
0.56953279::trusts('3430','19440').
0.1::trusts('12739','19440').
0.19::trusts('10352','19440').
0.1::trusts('19448','19440').
0.1::trusts('3424','3439').
0.271::trusts('10434','3439').
0.1::trusts('19428','3439').
0.1::trusts('3429','3439').
0.19::trusts('3433','3439').
0.40951::trusts('3424','3429').
0.1::trusts('3430','3429').
0.1::trusts('10607','3429').
0.1::trusts('19431','3429').
0.19::trusts('19428','3429').
0.1::trusts('3439','3429').
0.3439::trusts('10351','3429').
0.911370618803475::trusts('3430','31007').
0.3439::trusts('31006','31007').
0.468559::trusts('3430','31006').
0.468559::trusts('31007','31006').
0.19::trusts('3430','19446').
0.1::trusts('19431','19446').
0.468559::trusts('3430','31010').
0.19::trusts('31008','31010').
0.40951::trusts('3424','12739').
0.19::trusts('19440','12739').
0.1::trusts('10352','12739').
0.1::trusts('3424','10352').
0.1::trusts('3430','10352').
0.468559::trusts('19440','10352').
0.1::trusts('19440','19448').
0.1::trusts('10434','10607').
0.19::trusts('3429','10607').
0.271::trusts('3433','10607').
0.1::trusts('3424','10434').
0.1::trusts('10607','10434').
0.1::trusts('4823','10434').
0.1::trusts('19428','10434').
0.19::trusts('3439','10434').
0.19::trusts('10607','3433').
0.1::trusts('3439','3433').
0.1::trusts('21628','3433').
0.19::trusts('3424','19431').
0.1::trusts('3429','19431').
0.1::trusts('19446','19431').
0.271::trusts('12738','19431').
0.19::trusts('19431','12738').
0.1::trusts('10434','4823').
0.1::trusts('3424','19428').
0.1::trusts('3430','19428').
0.1::trusts('10434','19428').
0.19::trusts('3439','19428').
0.1::trusts('10995','19428').
0.19::trusts('3429','19428').
0.1::trusts('19428','10995').
0.1::trusts('21845','10995').
0.271::trusts('3429','10351').
0.1::trusts('3430','31008').
0.271::trusts('31010','31008').
0.1::trusts('35180','21628').
0.1::trusts('21628','35180').
0.1::trusts('12738','21130').
0.1::trusts('31192','21130').

person('3430').
person('3424').
person('19440').
person('3439').
person('3429').
person('31007').
person('31006').
person('19446').
person('31010').
person('12739').
person('10352').
person('19448').
person('10607').
person('10434').
person('3433').
person('19431').
person('12738').
person('4823').
person('19428').
person('10995').
person('21845').
person('10351').
person('31008').
person('21628').
person('35180').
person('21130').
person('31192').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3430')).
query(buys('3424')).
query(buys('19440')).
query(buys('3439')).
query(buys('3429')).
query(buys('31007')).
query(buys('31006')).
query(buys('19446')).
query(buys('31010')).
query(buys('12739')).
query(buys('10352')).
query(buys('19448')).
query(buys('10607')).
query(buys('10434')).
query(buys('3433')).
query(buys('19431')).
query(buys('12738')).
query(buys('4823')).
query(buys('19428')).
query(buys('10995')).
query(buys('21845')).
query(buys('10351')).
query(buys('31008')).
query(buys('21628')).
query(buys('35180')).
query(buys('21130')).
query(buys('31192')).
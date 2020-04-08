10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('44707','6172').
0.1::trusts('6224','6172').
0.1::trusts('23167','6172').
0.1::trusts('45457','6172').
0.19::trusts('6172','44707').
0.1::trusts('6224','44707').
0.271::trusts('44707','6224').
0.19::trusts('25449','6224').
0.19::trusts('34730','6224').
0.1::trusts('31279','6224').
0.468559::trusts('34594','6224').
0.40951::trusts('19068','6224').
0.1::trusts('19087','6224').
0.1::trusts('6172','45457').
0.19::trusts('40871','25449').
0.19::trusts('29723','25449').
0.1::trusts('6224','25449').
0.19::trusts('25449','40871').
0.1::trusts('19088','40871').
0.1::trusts('6217','40871').
0.1::trusts('29723','40871').
0.1::trusts('34730','40871').
0.19::trusts('42261','40871').
0.1::trusts('10013','40871').
0.40951::trusts('30320','40871').
0.271::trusts('25449','29723').
0.271::trusts('42260','29723').
0.271::trusts('6217','29723').
0.928210201230815::trusts('6203','29723').
0.3439::trusts('34730','29723').
0.1::trusts('12287','29723').
0.864914828232701::trusts('18895','29723').
0.271::trusts('29723','42260').
0.1::trusts('40871','19088').
0.271::trusts('30534','19088').
0.19::trusts('39099','19088').
0.996618608086477::trusts('30320','19088').
0.271::trusts('19088','30534').
0.833228183003334::trusts('39099','30534').
0.19::trusts('34597','30534').
0.999757250554968::trusts('30320','30534').
0.3439::trusts('19088','39099').
0.920233556923127::trusts('30534','39099').
0.794108867905351::trusts('30320','39099').
0.99484622479268::trusts('19088','30320').
0.612579511::trusts('40871','30320').
0.999044995049203::trusts('30534','30320').
0.717570463519::trusts('39099','30320').
0.1::trusts('40871','34730').
0.468559::trusts('29723','34730').
0.1::trusts('6181','34730').
0.19::trusts('6224','34730').
0.1::trusts('42261','34730').
0.19::trusts('31279','34730').
0.40951::trusts('12287','34730').
0.5217031::trusts('34594','34730').
0.1::trusts('19068','34730').
0.1::trusts('34476','34730').
0.1::trusts('40871','10013').
0.1::trusts('6217','6203').
0.979724440409555::trusts('29723','6203').
0.1::trusts('12287','6203').
0.612579511::trusts('18895','6203').
0.19::trusts('6203','12287').
0.271::trusts('29723','12287').
0.1::trusts('6181','12287').
0.1::trusts('6224','12287').
0.468559::trusts('34730','12287').
0.1::trusts('42261','12287').
0.1::trusts('19087','12287').
0.77123207545039::trusts('6203','18895').
0.878423345409431::trusts('29723','18895').
0.1::trusts('25449','6181').
0.1::trusts('6203','6181').
0.1::trusts('29723','6181').
0.19::trusts('6224','6181').
0.1::trusts('34730','6181').
0.1::trusts('42261','6181').
0.1::trusts('31279','6181').
0.1::trusts('12287','6181').
0.1::trusts('29723','31279').
0.19::trusts('6224','31279').
0.271::trusts('34730','31279').
0.1::trusts('12287','31279').
0.271::trusts('34594','31279').
0.1::trusts('44707','34594').
0.1::trusts('6224','34594').
0.468559::trusts('34730','34594').
0.19::trusts('31279','34594').
0.271::trusts('25449','19068').
0.3439::trusts('6203','19068').
0.1::trusts('29723','19068').
0.468559::trusts('6224','19068').
0.271::trusts('34730','19068').
0.1::trusts('18895','19068').
0.1::trusts('34476','19068').
0.1::trusts('19087','19068').
0.1::trusts('6203','19087').
0.19::trusts('29723','19087').
0.19::trusts('6224','19087').
0.1::trusts('19068','19087').
0.1::trusts('6203','29973').
0.1::trusts('34730','54404').
0.1::trusts('44707','19073').

person('6172').
person('44707').
person('6224').
person('23167').
person('45457').
person('25449').
person('40871').
person('29723').
person('42260').
person('19088').
person('30534').
person('39099').
person('30320').
person('6217').
person('34730').
person('42261').
person('10013').
person('6203').
person('12287').
person('18895').
person('34597').
person('6181').
person('31279').
person('34594').
person('19068').
person('19087').
person('34476').
person('29973').
person('54404').
person('19073').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6172')).
query(buys('44707')).
query(buys('6224')).
query(buys('23167')).
query(buys('45457')).
query(buys('25449')).
query(buys('40871')).
query(buys('29723')).
query(buys('42260')).
query(buys('19088')).
query(buys('30534')).
query(buys('39099')).
query(buys('30320')).
query(buys('6217')).
query(buys('34730')).
query(buys('42261')).
query(buys('10013')).
query(buys('6203')).
query(buys('12287')).
query(buys('18895')).
query(buys('34597')).
query(buys('6181')).
query(buys('31279')).
query(buys('34594')).
query(buys('19068')).
query(buys('19087')).
query(buys('34476')).
query(buys('29973')).
query(buys('54404')).
query(buys('19073')).
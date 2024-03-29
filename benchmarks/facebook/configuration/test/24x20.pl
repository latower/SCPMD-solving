10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6256','5948').
0.1::trusts('17697','5948').
0.271::trusts('42222','5948').
0.40951::trusts('3782','6256').
0.1::trusts('11436','6256').
0.5217031::trusts('42222','6256').
0.19::trusts('9637','6256').
0.19::trusts('42159','6256').
0.1::trusts('5205','6256').
0.19::trusts('27144','6256').
0.1::trusts('24239','6256').
0.1::trusts('41295','6256').
0.1::trusts('5948','17697').
0.19::trusts('5948','42222').
0.40951::trusts('6256','42222').
0.1::trusts('27144','42222').
0.1::trusts('6407','5273').
0.1::trusts('9031','5273').
0.1::trusts('3782','5273').
0.1::trusts('6256','5273').
0.1::trusts('5273','9031').
0.1::trusts('3782','9031').
0.1::trusts('6256','9031').
0.1::trusts('11436','9031').
0.1::trusts('6407','3782').
0.40951::trusts('6256','3782').
0.1::trusts('4685','3782').
0.3439::trusts('3782','4685').
0.3439::trusts('6256','9637').
0.271::trusts('42159','9637').
0.1::trusts('13644','9637').
0.1::trusts('55649','9637').
0.19::trusts('6256','42159').
0.19::trusts('9637','42159').
0.1::trusts('13644','42159').
0.40951::trusts('6256','5205').
0.1::trusts('6256','27144').
0.19::trusts('42222','27144').
0.1::trusts('6256','24239').
0.1::trusts('6256','41295').
0.1::trusts('5273','6463').
0.1::trusts('9637','13644').
0.1::trusts('42159','13644').
0.1::trusts('6256','31993').
0.1::trusts('6256','18177').
0.1::trusts('11436','18177').
0.1::trusts('42159','55765').
0.1::trusts('6256','55140').
0.1::trusts('6256','28698').

person('5948').
person('6256').
person('17697').
person('42222').
person('5273').
person('6407').
person('9031').
person('3782').
person('11436').
person('4685').
person('9637').
person('42159').
person('5205').
person('27144').
person('24239').
person('41295').
person('6463').
person('13644').
person('55649').
person('31993').
person('18177').
person('55765').
person('55140').
person('28698').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5948')).
query(buys('6256')).
query(buys('17697')).
query(buys('42222')).
query(buys('5273')).
query(buys('6407')).
query(buys('9031')).
query(buys('3782')).
query(buys('11436')).
query(buys('4685')).
query(buys('9637')).
query(buys('42159')).
query(buys('5205')).
query(buys('27144')).
query(buys('24239')).
query(buys('41295')).
query(buys('6463')).
query(buys('13644')).
query(buys('55649')).
query(buys('31993')).
query(buys('18177')).
query(buys('55765')).
query(buys('55140')).
query(buys('28698')).

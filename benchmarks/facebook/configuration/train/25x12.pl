10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('8057','21834').
0.1::trusts('5801','21834').
0.1::trusts('21834','8057').
0.1::trusts('5801','8057').
0.1::trusts('9765','8057').
0.19::trusts('21834','5801').
0.3439::trusts('8057','5801').
0.833228183003334::trusts('33320','5801').
0.19::trusts('33531','5801').
0.1::trusts('33123','5801').
0.19::trusts('33014','5801').
0.1::trusts('33023','5801').
0.1::trusts('33014','30031').
0.19::trusts('42177','30031').
0.1::trusts('30031','33014').
0.19::trusts('5801','33014').
0.1::trusts('33320','33014').
0.1::trusts('33023','33014').
0.19::trusts('44943','33014').
0.1::trusts('44942','33014').
0.19::trusts('42177','33014').
0.40951::trusts('30031','42177').
0.19::trusts('33014','42177').
0.271::trusts('44941','42177').
0.1::trusts('44944','42177').
0.19::trusts('53805','42177').
0.1::trusts('12110','42177').
0.271::trusts('8057','9765').
0.19::trusts('33236','9765').
0.974968444950068::trusts('5801','33320').
0.1::trusts('33532','33320').
0.3439::trusts('5801','33531').
0.19::trusts('33320','33531').
0.1::trusts('33014','33531').
0.1::trusts('8057','33123').
0.271::trusts('5801','33123').
0.1::trusts('33014','33023').
0.19::trusts('33320','33532').
0.1::trusts('30031','44943').
0.1::trusts('33014','44943').
0.1::trusts('22646','44942').
0.1::trusts('44941','44942').
0.1::trusts('44942','22646').
0.468559::trusts('9765','33236').
0.1::trusts('42177','44941').
0.1::trusts('44944','44941').
0.1::trusts('44941','44944').
0.19::trusts('42177','53805').
0.1::trusts('30031','12110').
0.1::trusts('44941','53273').
0.1::trusts('42177','56218').
0.1::trusts('56217','53239').
0.1::trusts('42177','56217').
0.1::trusts('53239','56217').
0.1::trusts('44942','44947').

person('21834').
person('8057').
person('5801').
person('30031').
person('33014').
person('42177').
person('9765').
person('33320').
person('33531').
person('33123').
person('33023').
person('33532').
person('44943').
person('44942').
person('22646').
person('33236').
person('44941').
person('44944').
person('53805').
person('12110').
person('53273').
person('56218').
person('53239').
person('56217').
person('44947').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21834')).
query(buys('8057')).
query(buys('5801')).
query(buys('30031')).
query(buys('33014')).
query(buys('42177')).
query(buys('9765')).
query(buys('33320')).
query(buys('33531')).
query(buys('33123')).
query(buys('33023')).
query(buys('33532')).
query(buys('44943')).
query(buys('44942')).
query(buys('22646')).
query(buys('33236')).
query(buys('44941')).
query(buys('44944')).
query(buys('53805')).
query(buys('12110')).
query(buys('53273')).
query(buys('56218')).
query(buys('53239')).
query(buys('56217')).
query(buys('44947')).

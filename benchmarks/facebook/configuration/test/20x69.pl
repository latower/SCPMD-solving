10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('17993','14755').
0.19::trusts('44370','14755').
0.19::trusts('53872','14755').
0.1::trusts('53479','14755').
0.3439::trusts('14755','17993').
0.1::trusts('19225','17993').
0.1::trusts('10704','17993').
0.19::trusts('14755','44370').
0.1::trusts('23693','44370').
0.19::trusts('14755','53872').
0.19::trusts('19225','53872').
0.1::trusts('14755','53479').
0.19::trusts('17993','19225').
0.271::trusts('53872','19225').
0.5217031::trusts('12241','19225').
0.1::trusts('17993','10704').
0.271::trusts('19225','12241').
0.1::trusts('14431','12241').
0.19::trusts('44370','23693').
0.19::trusts('12241','14431').
0.1::trusts('14755','43566').
0.19::trusts('17993','47102').
0.1::trusts('12241','48922').
0.1::trusts('14755','31364').
0.1::trusts('14755','58494').
0.1::trusts('14755','45871').
0.1::trusts('10704','45871').
0.1::trusts('44370','45871').
0.1::trusts('12241','22130').
0.19::trusts('17993','61071').
0.1::trusts('53342','61071').
0.1::trusts('19225','53874').

person('14755').
person('17993').
person('44370').
person('53872').
person('53479').
person('19225').
person('10704').
person('12241').
person('23693').
person('14431').
person('43566').
person('47102').
person('48922').
person('31364').
person('58494').
person('45871').
person('22130').
person('61071').
person('53342').
person('53874').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('14755')).
query(buys('17993')).
query(buys('44370')).
query(buys('53872')).
query(buys('53479')).
query(buys('19225')).
query(buys('10704')).
query(buys('12241')).
query(buys('23693')).
query(buys('14431')).
query(buys('43566')).
query(buys('47102')).
query(buys('48922')).
query(buys('31364')).
query(buys('58494')).
query(buys('45871')).
query(buys('22130')).
query(buys('61071')).
query(buys('53342')).
query(buys('53874')).

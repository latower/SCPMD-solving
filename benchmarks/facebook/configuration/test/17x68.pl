10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12571','11140').
0.1::trusts('11123','11140').
0.19::trusts('17561','11140').
0.1::trusts('24771','11140').
0.1::trusts('41451','11140').
0.1::trusts('11140','12571').
0.19::trusts('11123','12571').
0.1::trusts('17561','12571').
0.1::trusts('26509','12571').
0.1::trusts('24771','12571').
0.19::trusts('11140','11123').
0.1::trusts('12571','11123').
0.19::trusts('26509','11123').
0.1::trusts('33948','11123').
0.271::trusts('11140','17561').
0.1::trusts('12571','17561').
0.1::trusts('24771','17561').
0.1::trusts('17560','17561').
0.19::trusts('11140','24771').
0.864914828232701::trusts('12571','24771').
0.19::trusts('11123','24771').
0.1::trusts('17561','24771').
0.1::trusts('41451','24771').
0.19::trusts('11140','41451').
0.40951::trusts('11123','26509').
0.1::trusts('16376','26509').
0.40951::trusts('22977','26509').
0.1::trusts('11123','33948').
0.271::trusts('62210','33948').
0.19::trusts('17561','17560').
0.1::trusts('26509','16376').
0.19::trusts('20001','22977').
0.468559::trusts('26509','22977').
0.1::trusts('28572','22977').
0.19::trusts('22977','28572').
0.3439::trusts('33948','62210').
0.271::trusts('11123','21896').
0.1::trusts('24771','21896').
0.19::trusts('11123','35217').
0.1::trusts('26509','33418').

person('11140').
person('12571').
person('11123').
person('17561').
person('24771').
person('41451').
person('26509').
person('33948').
person('17560').
person('16376').
person('22977').
person('20001').
person('28572').
person('62210').
person('21896').
person('35217').
person('33418').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11140')).
query(buys('12571')).
query(buys('11123')).
query(buys('17561')).
query(buys('24771')).
query(buys('41451')).
query(buys('26509')).
query(buys('33948')).
query(buys('17560')).
query(buys('16376')).
query(buys('22977')).
query(buys('20001')).
query(buys('28572')).
query(buys('62210')).
query(buys('21896')).
query(buys('35217')).
query(buys('33418')).

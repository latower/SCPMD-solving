10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('40427','20808').
0.1::trusts('28596','40427').
0.1::trusts('24470','23071').
0.1::trusts('28596','23071').
0.1::trusts('23071','24470').
0.1::trusts('25589','24470').
0.19::trusts('25370','24470').
0.3439::trusts('24472','24470').
0.1::trusts('23071','28596').
0.19::trusts('25589','28596').
0.19::trusts('40427','28596').
0.19::trusts('24470','25370').
0.1::trusts('24472','25370').
0.19::trusts('24470','24472').
0.1::trusts('25589','17317').
0.1::trusts('28596','17317').
0.1::trusts('28921','17317').
0.19::trusts('24470','34949').
0.19::trusts('24472','34949').
0.1::trusts('25370','29139').
0.1::trusts('24470','27164').
0.1::trusts('25370','27164').
0.1::trusts('25370','40767').
0.1::trusts('25589','51050').

person('20808').
person('40427').
person('23071').
person('24470').
person('28596').
person('25589').
person('25370').
person('24472').
person('17317').
person('28921').
person('34949').
person('29139').
person('27164').
person('40767').
person('51050').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20808')).
query(buys('40427')).
query(buys('23071')).
query(buys('24470')).
query(buys('28596')).
query(buys('25589')).
query(buys('25370')).
query(buys('24472')).
query(buys('17317')).
query(buys('28921')).
query(buys('34949')).
query(buys('29139')).
query(buys('27164')).
query(buys('40767')).
query(buys('51050')).

10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('13917','14607').
0.1::trusts('22926','14607').
0.1::trusts('13095','14607').
0.1::trusts('24787','14607').
0.19::trusts('18074','14607').
0.1::trusts('14607','22926').
0.468559::trusts('10025','13095').
0.3439::trusts('18074','13095').
0.271::trusts('13090','13095').
0.1::trusts('13917','24787').
0.1::trusts('10025','24787').
0.1::trusts('13095','24787').
0.40951::trusts('18074','24787').
0.271::trusts('22403','24787').
0.19::trusts('14607','18074').
0.68618940391::trusts('10025','18074').
0.3439::trusts('13095','18074').
0.3439::trusts('24787','18074').
0.1::trusts('13095','13089').
0.3439::trusts('13090','13089').
0.19::trusts('13092','13089').
0.3439::trusts('13089','13090').
0.717570463519::trusts('13094','13090').
0.3439::trusts('13095','13090').
0.271::trusts('13092','13090').
0.40951::trusts('13089','13092').
0.1::trusts('13089','13094').
0.19::trusts('13095','13094').
0.6513215599::trusts('13090','13094').
0.3439::trusts('13917','10025').
0.849905364703001::trusts('13095','10025').
0.717570463519::trusts('18074','10025').
0.1::trusts('22403','10025').
0.1::trusts('10025','22403').
0.19::trusts('13095','22403').
0.1::trusts('18074','5681').
0.1::trusts('13089','13091').
0.19::trusts('13095','13091').
0.1::trusts('13090','13096').

person('14607').
person('13917').
person('22926').
person('13095').
person('24787').
person('18074').
person('13089').
person('13090').
person('13092').
person('13094').
person('10025').
person('22403').
person('5681').
person('13091').
person('13096').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('14607')).
query(buys('13917')).
query(buys('22926')).
query(buys('13095')).
query(buys('24787')).
query(buys('18074')).
query(buys('13089')).
query(buys('13090')).
query(buys('13092')).
query(buys('13094')).
query(buys('10025')).
query(buys('22403')).
query(buys('5681')).
query(buys('13091')).
query(buys('13096')).

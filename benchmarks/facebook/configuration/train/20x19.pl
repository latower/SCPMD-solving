10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('14338','7224').
0.19::trusts('26296','7224').
0.1::trusts('7215','7224').
0.1::trusts('7224','14338').
0.19::trusts('14363','14338').
0.612579511::trusts('7215','14338').
0.814697981114816::trusts('18942','14338').
0.1::trusts('14348','14338').
0.1::trusts('7224','26296').
0.1::trusts('7224','7215').
0.717570463519::trusts('14338','7215').
0.1::trusts('12494','18945').
0.1::trusts('25099','18945').
0.19::trusts('32301','18945').
0.19::trusts('18945','12494').
0.468559::trusts('23005','12494').
0.1::trusts('9536','12494').
0.1::trusts('18945','25099').
0.19::trusts('18942','25099').
0.1::trusts('25016','25099').
0.19::trusts('18945','32301').
0.19::trusts('14338','14363').
0.1::trusts('18942','14363').
0.468559::trusts('14338','18942').
0.1::trusts('14363','18942').
0.3439::trusts('33253','18942').
0.1::trusts('25099','18942').
0.864914828232701::trusts('15939','18942').
0.1::trusts('29906','18942').
0.468559::trusts('12494','23005').
0.1::trusts('12494','9536').
0.1::trusts('33253','30921').
0.19::trusts('25099','25016').
0.833228183003334::trusts('18942','15939').
0.1::trusts('28939','15939').
0.19::trusts('18942','29906').
0.1::trusts('34655','29906').
0.1::trusts('15939','28939').

person('7224').
person('14338').
person('26296').
person('7215').
person('18945').
person('12494').
person('25099').
person('32301').
person('14363').
person('18942').
person('14348').
person('23005').
person('9536').
person('30921').
person('33253').
person('25016').
person('15939').
person('29906').
person('28939').
person('34655').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7224')).
query(buys('14338')).
query(buys('26296')).
query(buys('7215')).
query(buys('18945')).
query(buys('12494')).
query(buys('25099')).
query(buys('32301')).
query(buys('14363')).
query(buys('18942')).
query(buys('14348')).
query(buys('23005')).
query(buys('9536')).
query(buys('30921')).
query(buys('33253')).
query(buys('25016')).
query(buys('15939')).
query(buys('29906')).
query(buys('28939')).
query(buys('34655')).
10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('15924','15929').
0.1::trusts('2902','15929').
0.19::trusts('35116','15929').
0.1::trusts('2904','15929').
0.1::trusts('15479','15929').
0.19::trusts('29109','15929').
0.1::trusts('23790','15929').
0.19::trusts('15929','15924').
0.271::trusts('15929','2902').
0.1::trusts('35116','2902').
0.271::trusts('15929','35116').
0.271::trusts('29109','35116').
0.271::trusts('29108','35116').
0.19::trusts('15929','2904').
0.1::trusts('15929','15479').
0.19::trusts('35116','15479').
0.271::trusts('58915','15479').
0.271::trusts('15929','29109').
0.19::trusts('35116','29109').
0.19::trusts('15929','23790').
0.1::trusts('35116','14569').
0.1::trusts('15479','14569').
0.1::trusts('29108','14569').
0.1::trusts('14569','29108').
0.1::trusts('2902','29108').
0.271::trusts('35116','29108').
0.1::trusts('29109','29108').
0.1::trusts('15479','58915').
0.3439::trusts('2902','14175').
0.1::trusts('15929','41462').
0.1::trusts('15929','30786').
0.1::trusts('15479','38184').
0.1::trusts('15929','47659').
0.1::trusts('15929','63144').

person('15929').
person('15924').
person('2902').
person('35116').
person('2904').
person('15479').
person('29109').
person('23790').
person('14569').
person('29108').
person('58915').
person('14175').
person('41462').
person('30786').
person('38184').
person('47659').
person('63144').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15929')).
query(buys('15924')).
query(buys('2902')).
query(buys('35116')).
query(buys('2904')).
query(buys('15479')).
query(buys('29109')).
query(buys('23790')).
query(buys('14569')).
query(buys('29108')).
query(buys('58915')).
query(buys('14175')).
query(buys('41462')).
query(buys('30786')).
query(buys('38184')).
query(buys('47659')).
query(buys('63144')).

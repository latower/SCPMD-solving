10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('5247','5260').
0.1::trusts('56967','5260').
0.1::trusts('42655','5260').
0.1::trusts('42655','56967').
0.40951::trusts('5260','42655').
0.3439::trusts('56967','42655').
0.468559::trusts('42652','42655').
0.5217031::trusts('56966','42655').
0.3439::trusts('62266','42655').
0.271::trusts('32995','42655').
0.1::trusts('37445','42655').
0.1::trusts('42652','1629').
0.271::trusts('62316','1629').
0.1::trusts('1629','42652').
0.19::trusts('56967','42652').
0.40951::trusts('42655','42652').
0.1::trusts('48102','42652').
0.19::trusts('56966','42652').
0.3439::trusts('42655','56966').
0.271::trusts('42652','56966').
0.271::trusts('42655','32995').
0.1::trusts('42655','37445').
0.1::trusts('33781','37445').
0.1::trusts('45648','37445').
0.1::trusts('56967','48102').
0.19::trusts('42652','48102').
0.5217031::trusts('48100','48102').
0.271::trusts('48102','48100').
0.1::trusts('48103','48100').
0.19::trusts('5247','5261').
0.1::trusts('37445','33781').
0.1::trusts('37445','45648').
0.271::trusts('5260','21645').
0.19::trusts('48100','48103').
0.1::trusts('42652','35339').
0.1::trusts('45648','59733').
0.1::trusts('42652','56965').

person('5260').
person('5247').
person('56967').
person('42655').
person('1629').
person('42652').
person('62316').
person('56966').
person('62266').
person('32995').
person('37445').
person('48102').
person('48100').
person('5261').
person('33781').
person('45648').
person('21645').
person('48103').
person('35339').
person('59733').
person('56965').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5260')).
query(buys('5247')).
query(buys('56967')).
query(buys('42655')).
query(buys('1629')).
query(buys('42652')).
query(buys('62316')).
query(buys('56966')).
query(buys('62266')).
query(buys('32995')).
query(buys('37445')).
query(buys('48102')).
query(buys('48100')).
query(buys('5261')).
query(buys('33781')).
query(buys('45648')).
query(buys('21645')).
query(buys('48103')).
query(buys('35339')).
query(buys('59733')).
query(buys('56965')).
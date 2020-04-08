10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21784','21972').
0.1::trusts('52741','21972').
0.1::trusts('42690','21972').
0.40951::trusts('21972','21784').
0.68618940391::trusts('40977','21784').
0.1::trusts('42693','21784').
0.1::trusts('21972','52741').
0.1::trusts('55322','52741').
0.1::trusts('21972','42690').
0.1::trusts('40977','42690').
0.6513215599::trusts('21784','40977').
0.1::trusts('42690','40977').
0.1::trusts('42693','40977').
0.1::trusts('44819','40977').
0.19::trusts('21972','42693').
0.1::trusts('21784','42693').
0.1::trusts('48010','42693').
0.271::trusts('40977','42693').
0.19::trusts('31319','42693').
0.1::trusts('44819','42693').
0.1::trusts('44819','48010').
0.1::trusts('48632','48010').
0.1::trusts('48010','44819').
0.1::trusts('40977','44819').
0.1::trusts('59863','44819').
0.3439::trusts('48010','48632').
0.1::trusts('42693','31319').
0.1::trusts('49812','31319').
0.1::trusts('42684','31319').
0.19::trusts('42683','24797').
0.1::trusts('53572','24797').
0.19::trusts('24797','42683').
0.1::trusts('49812','42683').
0.1::trusts('42683','49812').
0.271::trusts('31319','49812').
0.1::trusts('42683','56083').

person('21972').
person('21784').
person('52741').
person('42690').
person('40977').
person('42693').
person('48010').
person('44819').
person('48632').
person('55322').
person('31319').
person('24797').
person('42683').
person('53572').
person('49812').
person('42684').
person('59863').
person('56083').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21972')).
query(buys('21784')).
query(buys('52741')).
query(buys('42690')).
query(buys('40977')).
query(buys('42693')).
query(buys('48010')).
query(buys('44819')).
query(buys('48632')).
query(buys('55322')).
query(buys('31319')).
query(buys('24797')).
query(buys('42683')).
query(buys('53572')).
query(buys('49812')).
query(buys('42684')).
query(buys('59863')).
query(buys('56083')).

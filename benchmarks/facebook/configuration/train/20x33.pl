10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('21684','3402').
0.1::trusts('21067','21684').
0.1::trusts('34648','24082').
0.19::trusts('41316','24082').
0.1::trusts('49687','24082').
0.1::trusts('41309','24082').
0.1::trusts('41317','24082').
0.19::trusts('24082','34648').
0.19::trusts('41309','34648').
0.19::trusts('24082','41316').
0.19::trusts('41313','41316').
0.1::trusts('33720','41316').
0.19::trusts('41309','41316').
0.19::trusts('24082','49687').
0.19::trusts('24082','41309').
0.271::trusts('33720','41309').
0.271::trusts('34648','41309').
0.1::trusts('41316','41309').
0.271::trusts('41317','41309').
0.1::trusts('52907','41309').
0.271::trusts('41309','41317').
0.1::trusts('33720','41313').
0.1::trusts('12046','41313').
0.1::trusts('41316','41313').
0.1::trusts('24082','33720').
0.1::trusts('41313','33720').
0.19::trusts('41316','33720').
0.271::trusts('41309','33720').
0.1::trusts('60719','33720').
0.1::trusts('41313','12046').
0.1::trusts('21067','12046').
0.19::trusts('33720','60719').
0.1::trusts('12046','21067').
0.1::trusts('21684','21067').
0.1::trusts('3402','21682').
0.1::trusts('49687','42288').
0.1::trusts('33720','37508').
0.1::trusts('34947','37508').
0.1::trusts('41317','60525').
0.1::trusts('41313','60170').

person('3402').
person('21684').
person('24082').
person('34648').
person('41316').
person('49687').
person('41309').
person('41317').
person('41313').
person('33720').
person('12046').
person('60719').
person('21067').
person('52907').
person('21682').
person('42288').
person('37508').
person('34947').
person('60525').
person('60170').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3402')).
query(buys('21684')).
query(buys('24082')).
query(buys('34648')).
query(buys('41316')).
query(buys('49687')).
query(buys('41309')).
query(buys('41317')).
query(buys('41313')).
query(buys('33720')).
query(buys('12046')).
query(buys('60719')).
query(buys('21067')).
query(buys('52907')).
query(buys('21682')).
query(buys('42288')).
query(buys('37508')).
query(buys('34947')).
query(buys('60525')).
query(buys('60170')).
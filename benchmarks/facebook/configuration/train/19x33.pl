10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('28427','14843').
0.1::trusts('38855','14843').
0.1::trusts('27987','14843').
0.271::trusts('14843','28427').
0.19::trusts('3340','28427').
0.1::trusts('21511','28427').
0.19::trusts('22087','28427').
0.40951::trusts('23460','28427').
0.19::trusts('20701','28427').
0.19::trusts('14843','38855').
0.1::trusts('22087','38855').
0.1::trusts('25795','38855').
0.1::trusts('48013','38855').
0.19::trusts('14843','27987').
0.19::trusts('21704','27987').
0.1::trusts('21511','3340').
0.1::trusts('22087','3340').
0.1::trusts('20701','3340').
0.1::trusts('3340','21511').
0.1::trusts('21511','22087').
0.1::trusts('28427','22087').
0.3439::trusts('3340','20701').
0.1::trusts('28427','20701').
0.1::trusts('23460','20701').
0.19::trusts('61101','20701').
0.271::trusts('3340','23460').
0.3439::trusts('28427','23460').
0.1::trusts('20701','61101').
0.1::trusts('46352','61101').
0.271::trusts('63165','61101').
0.19::trusts('27987','21704').
0.1::trusts('54150','21704').
0.19::trusts('61101','46352').
0.40951::trusts('61101','63165').
0.1::trusts('25795','56332').
0.1::trusts('23460','46475').
0.19::trusts('61101','61100').

person('14843').
person('28427').
person('38855').
person('27987').
person('3340').
person('21511').
person('22087').
person('20701').
person('23460').
person('25795').
person('48013').
person('61101').
person('21704').
person('46352').
person('63165').
person('54150').
person('56332').
person('46475').
person('61100').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('14843')).
query(buys('28427')).
query(buys('38855')).
query(buys('27987')).
query(buys('3340')).
query(buys('21511')).
query(buys('22087')).
query(buys('20701')).
query(buys('23460')).
query(buys('25795')).
query(buys('48013')).
query(buys('61101')).
query(buys('21704')).
query(buys('46352')).
query(buys('63165')).
query(buys('54150')).
query(buys('56332')).
query(buys('46475')).
query(buys('61100')).

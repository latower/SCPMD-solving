10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('62306','58020').
0.1::trusts('59088','58020').
0.1::trusts('59087','58020').
0.1::trusts('58020','62306').
0.1::trusts('52628','62306').
0.1::trusts('52997','62306').
0.1::trusts('58020','59087').
0.40951::trusts('59088','52628').
0.1::trusts('58574','52628').
0.1::trusts('62306','52997').
0.19::trusts('56503','55557').
0.19::trusts('55557','56503').
0.271::trusts('46424','56503').
0.1::trusts('56503','46424').
0.468559::trusts('56056','46424').
0.1::trusts('56054','46424').
0.1::trusts('9171','46424').
0.1::trusts('56052','46424').
0.19::trusts('46424','56056').
0.1::trusts('56052','56056').
0.271::trusts('58574','56056').
0.1::trusts('56053','56056').
0.1::trusts('46424','56054').
0.271::trusts('56056','9171').
0.19::trusts('46424','56052').
0.612579511::trusts('56056','56052').
0.19::trusts('56053','56052').
0.271::trusts('52628','58574').
0.271::trusts('56056','58574').
0.271::trusts('56056','56053').
0.19::trusts('56052','56053').
0.1::trusts('25489','56053').
0.1::trusts('56053','25489').
0.1::trusts('58020','61564').
0.19::trusts('56056','27872').
0.1::trusts('52628','59084').
0.1::trusts('59087','59084').
0.1::trusts('56056','56055').

person('58020').
person('62306').
person('59088').
person('59087').
person('52628').
person('52997').
person('55557').
person('56503').
person('46424').
person('56056').
person('56054').
person('9171').
person('56052').
person('58574').
person('56053').
person('25489').
person('61564').
person('27872').
person('59084').
person('56055').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('58020')).
query(buys('62306')).
query(buys('59088')).
query(buys('59087')).
query(buys('52628')).
query(buys('52997')).
query(buys('55557')).
query(buys('56503')).
query(buys('46424')).
query(buys('56056')).
query(buys('56054')).
query(buys('9171')).
query(buys('56052')).
query(buys('58574')).
query(buys('56053')).
query(buys('25489')).
query(buys('61564')).
query(buys('27872')).
query(buys('59084')).
query(buys('56055')).

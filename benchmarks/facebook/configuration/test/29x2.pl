10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5874','31052').
0.1::trusts('31645','31052').
0.1::trusts('24177','31052').
0.19::trusts('39815','31052').
0.271::trusts('31052','5874').
0.1::trusts('31645','5874').
0.19::trusts('11477','5874').
0.19::trusts('43454','5874').
0.1::trusts('41628','5874').
0.1::trusts('54709','5874').
0.1::trusts('58991','5874').
0.1::trusts('31052','31645').
0.19::trusts('34415','31645').
0.1::trusts('5874','31645').
0.1::trusts('43454','31645').
0.1::trusts('31052','24177').
0.19::trusts('31052','39815').
0.1::trusts('31052','34415').
0.19::trusts('5874','34415').
0.19::trusts('31645','34415').
0.1::trusts('58991','34415').
0.1::trusts('5874','58991').
0.19::trusts('5874','11477').
0.1::trusts('5907','11477').
0.3439::trusts('46082','11477').
0.1::trusts('5874','43454').
0.1::trusts('41630','43454').
0.1::trusts('34362','43454').
0.1::trusts('5874','41628').
0.1::trusts('24483','41628').
0.19::trusts('5874','54709').
0.271::trusts('41630','24483').
0.1::trusts('44402','24483').
0.271::trusts('24483','41630').
0.1::trusts('43454','41630').
0.1::trusts('5907','46082').
0.19::trusts('11477','46082').
0.271::trusts('43454','34362').
0.19::trusts('62579','34362').
0.468559::trusts('5907','4486').
0.1::trusts('31052','29777').
0.1::trusts('34362','62579').
0.1::trusts('41628','50486').
0.1::trusts('34362','45885').
0.19::trusts('47955','45885').
0.19::trusts('45885','47955').
0.1::trusts('24483','41632').
0.19::trusts('6783','41632').
0.1::trusts('24483','10203').
0.19::trusts('31052','51409').
0.1::trusts('43454','51409').
0.1::trusts('34415','41253').
0.19::trusts('31645','41253').
0.1::trusts('31052','61820').

person('31052').
person('5874').
person('31645').
person('24177').
person('39815').
person('34415').
person('58991').
person('11477').
person('43454').
person('41628').
person('54709').
person('24483').
person('41630').
person('44402').
person('46082').
person('5907').
person('34362').
person('4486').
person('29777').
person('62579').
person('50486').
person('45885').
person('47955').
person('41632').
person('6783').
person('10203').
person('51409').
person('41253').
person('61820').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('31052')).
query(buys('5874')).
query(buys('31645')).
query(buys('24177')).
query(buys('39815')).
query(buys('34415')).
query(buys('58991')).
query(buys('11477')).
query(buys('43454')).
query(buys('41628')).
query(buys('54709')).
query(buys('24483')).
query(buys('41630')).
query(buys('44402')).
query(buys('46082')).
query(buys('5907')).
query(buys('34362')).
query(buys('4486')).
query(buys('29777')).
query(buys('62579')).
query(buys('50486')).
query(buys('45885')).
query(buys('47955')).
query(buys('41632')).
query(buys('6783')).
query(buys('10203')).
query(buys('51409')).
query(buys('41253')).
query(buys('61820')).
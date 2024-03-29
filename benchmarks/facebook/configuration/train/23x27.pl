10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('46628','15194').
0.271::trusts('44434','15194').
0.1::trusts('36171','15194').
0.468559::trusts('55787','15194').
0.271::trusts('10866','46628').
0.3439::trusts('50212','46628').
0.271::trusts('44434','46628').
0.271::trusts('53538','46628').
0.19::trusts('60217','46628').
0.19::trusts('23991','46628').
0.1::trusts('59120','46628').
0.19::trusts('15194','44434').
0.19::trusts('50212','44434').
0.271::trusts('46628','44434').
0.19::trusts('5003','44434').
0.1::trusts('36171','44434').
0.19::trusts('53538','44434').
0.271::trusts('15194','36171').
0.1::trusts('44434','36171').
0.1::trusts('61675','36171').
0.5217031::trusts('15194','55787').
0.1::trusts('61280','10866').
0.1::trusts('50212','10866').
0.19::trusts('46628','10866').
0.19::trusts('29488','10866').
0.19::trusts('10866','61280').
0.1::trusts('10866','50212').
0.40951::trusts('46628','50212').
0.1::trusts('44434','50212').
0.5217031::trusts('53538','50212').
0.19::trusts('53534','50212').
0.3439::trusts('55835','50212').
0.3439::trusts('52113','50212').
0.1::trusts('10866','29488').
0.40951::trusts('50212','53538').
0.271::trusts('46628','53538').
0.1::trusts('5003','53538').
0.19::trusts('44434','53538').
0.19::trusts('52113','53538').
0.1::trusts('53533','53538').
0.3439::trusts('50212','53534').
0.271::trusts('52113','53534').
0.3439::trusts('50212','55835').
0.1::trusts('53538','55835').
0.1::trusts('52113','55835').
0.1::trusts('24800','55835').
0.3439::trusts('50212','52113').
0.1::trusts('53538','52113').
0.19::trusts('53534','52113').
0.1::trusts('55835','52113').
0.40951::trusts('46628','60217').
0.1::trusts('50212','23991').
0.3439::trusts('46628','23991').
0.1::trusts('44434','23991').
0.1::trusts('53538','23991').
0.19::trusts('46628','59120').
0.1::trusts('44434','59120').
0.1::trusts('53538','59120').
0.19::trusts('44434','5003').
0.1::trusts('53538','5003').
0.19::trusts('36171','61675').
0.1::trusts('53538','53533').
0.1::trusts('53540','53533').
0.1::trusts('50212','24800').
0.271::trusts('55835','24800').
0.1::trusts('53538','53540').
0.271::trusts('46628','5002').
0.1::trusts('5003','5002').
0.19::trusts('44434','5002').
0.1::trusts('15194','60787').

person('15194').
person('46628').
person('44434').
person('36171').
person('55787').
person('10866').
person('61280').
person('50212').
person('29488').
person('53538').
person('53534').
person('55835').
person('52113').
person('60217').
person('23991').
person('59120').
person('5003').
person('61675').
person('53533').
person('24800').
person('53540').
person('5002').
person('60787').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15194')).
query(buys('46628')).
query(buys('44434')).
query(buys('36171')).
query(buys('55787')).
query(buys('10866')).
query(buys('61280')).
query(buys('50212')).
query(buys('29488')).
query(buys('53538')).
query(buys('53534')).
query(buys('55835')).
query(buys('52113')).
query(buys('60217')).
query(buys('23991')).
query(buys('59120')).
query(buys('5003')).
query(buys('61675')).
query(buys('53533')).
query(buys('24800')).
query(buys('53540')).
query(buys('5002')).
query(buys('60787')).

select 
    sessions,
    APPROX_COUNT_DISTINCT_DS_HLL(account_id) as nb_accounts
FROM (
select
  a.account_id,
  sessions
from "user_account" a
LEFT JOIN
    (SELECT 
        account_id,
        APPROX_COUNT_DISTINCT_DS_HLL(hll_session_id) AS sessions
    FROM "user_view_video_rollup_with_acct_reindex_2"
    GROUP BY 
        account_id
    ORDER BY sessions DESC
    LIMIT 10000) b 
ON a.account_id = b.account_id)
GROUP BY sessions
limit 100

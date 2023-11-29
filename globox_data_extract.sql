SELECT
    u.id AS user_id,
    u.country,
    u.gender,
    g.device AS device,
    g.group AS test_group,
    CASE WHEN SUM(COALESCE(a.spent, 0)) > 0 THEN 'converted' ELSE 'not converted' END AS conversion_status,
    ROUND(COALESCE(SUM(a.spent), 0)::numeric, 2) AS total_spent
FROM
    users AS u
LEFT JOIN
    groups AS g ON u.id = g.uid
LEFT JOIN
    activity AS a ON u.id = a.uid
GROUP BY
    u.id, u.country, u.gender, g.device, g.group;

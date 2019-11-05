SELECT 'Returns all resources with given grade level' as useage;
SELECT
    resources.ID,
    resources.title,
    CONCAT(SUBSTR(resources.about, 1, 20), '...') AS about,
    types.type,
    collections.collection,
    CONCAT(
        CASE grade_start
           WHEN -1 THEN 'Pre-K'
           WHEN 0 THEN 'K'
           WHEN 13 THEN '13+'
           ELSE grade_start
        END,
        ' - ',
        CASE grade_end
           WHEN -1 THEN 'Pre-K'
           WHEN 0 THEN 'K'
           WHEN 13 THEN '13+'
           ELSE grade_end
        END)
    as grade
FROM types INNER JOIN (collections INNER JOIN resources ON collections.ID = resources.collection_id) ON types.id = resources.type_id
WHERE
resources.grade_start <= @param AND resources.grade_end >= @param;
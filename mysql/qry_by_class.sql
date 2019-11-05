SELECT 'Returns all resources with given class band - allows number or string param' as useage;
SELECT
    resources.ID,
    resources.title,
    CONCAT(SUBSTR(resources.about, 1, 20), '...') AS about,
    types.type,
    collections.collection,
    CONCAT(
        CASE
           WHEN resources.grade_start = -1 THEN 'Pre-K'
           WHEN resources.grade_start = 0 THEN 'K'
           WHEN resources.grade_start = 13 THEN 'College'
           ELSE resources.grade_start
        END,
        ' - ',
        CASE
           WHEN resources.grade_end = -1 THEN 'Pre-K'
           WHEN resources.grade_end = 0 THEN 'K'
           WHEN resources.grade_end = 13 THEN 'College'
           ELSE resources.grade_end
        END
    ) as grade,
    CASE
      WHEN @param = -1 THEN 'Pre-K (-1)'
      WHEN @param = 0 THEN 'Early Elementary (0-3)'
      WHEN @param = 1 THEN 'Early Elementary (0-3)'
      WHEN @param = 2 THEN 'Early Elementary (0-3)'
      WHEN @param = 3 THEN 'Early Elementary (0-3)'
      WHEN @param = 4 THEN 'Upper Elementary (4-6)'
      WHEN @param = 5 THEN 'Upper Elementary (4-6)'
      WHEN @param = 6 THEN 'Upper Elementary (4-6)'
      WHEN @param = 7 THEN 'Middle School (7-9)'
      WHEN @param = 8 THEN 'Middle School (7-9)'
      WHEN @param = 9 THEN 'Middle School (7-9)'
      WHEN @param = 10 THEN 'High School (10-12)'
      WHEN @param = 11 THEN 'High School (10-12)'
      WHEN @param = 12 THEN 'High School (10-12)'
      WHEN @param = 13 THEN 'College (13+)'
    END as class
FROM types INNER JOIN (collections INNER JOIN resources ON collections.ID = resources.collection_id) ON types.id = resources.type_id
WHERE
CASE
   WHEN @param = -1 THEN resources.grade_start = -1 AND resources.grade_start < 0
   WHEN @param = 0 THEN resources.grade_start >=0 AND resources.grade_start < 4
   WHEN @param = 1 THEN resources.grade_start >=0 AND resources.grade_start < 4
   WHEN @param = 2 THEN resources.grade_start >=0 AND resources.grade_start < 4
   WHEN @param = 3 THEN resources.grade_start >=0 AND resources.grade_start < 4
   WHEN @param = 4 THEN resources.grade_start >=4 AND resources.grade_start < 7
   WHEN @param = 5 THEN resources.grade_start >=4 AND resources.grade_start < 7
   WHEN @param = 6 THEN resources.grade_start >=4 AND resources.grade_start < 7
   WHEN @param = 7 THEN resources.grade_start >=7 AND resources.grade_start < 10
   WHEN @param = 8 THEN resources.grade_start >=7 AND resources.grade_start < 10
   WHEN @param = 9 THEN resources.grade_start >=7 AND resources.grade_start < 10
   WHEN @param = 10 THEN resources.grade_start >=10 AND resources.grade_start < 12
   WHEN @param = 11 THEN resources.grade_start >=10 AND resources.grade_start < 12
   WHEN @param = 12 THEN resources.grade_start >=10 AND resources.grade_start < 12
   WHEN @param = 13 THEN resources.grade_start >=13
END
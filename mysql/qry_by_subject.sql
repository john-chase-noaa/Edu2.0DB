SELECT 'Returns all resources with given subject - allows id or (partial) string param. No param returns all.' as useage;
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
    subjects.subject
FROM types INNER JOIN (collections INNER JOIN (resources INNER JOIN (subjects INNER JOIN resources_subjects ON subjects.ID = resources_subjects.subject_id) ON resources.ID = resources_subjects.resource_id) ON collections.ID = resources.collection_id) ON types.ID = resources.type_id
WHERE
IF (@param IS NOT NULL, IF (CAST(@param AS UNSIGNED), subjects.ID=@param, subjects.subject LIKE CONCAT('%', @param, '%')), 1=1);
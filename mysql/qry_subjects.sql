SELECT 'Returns all resources with given subject - allows id or (partial) string param. No param returns all.' as useage;
SELECT
    resources.ID,
    resources.title,
    CONCAT(SUBSTR(resources.about, 1, 20), '...') AS about,
    types.type,
    collections.collection,
    CONCAT(grade_start, ' - ', grade_end) AS grade,
    subjects.subject
FROM types INNER JOIN (collections INNER JOIN (resources INNER JOIN (subjects INNER JOIN resources_subjects ON subjects.ID = resources_subjects.subject_id) ON resources.ID = resources_subjects.resource_id) ON collections.ID = resources.collection_id) ON types.ID = resources.type_id
WHERE
IF (@param IS NOT NULL, IF (CAST(@param AS UNSIGNED), subjects.ID=@param, subjects.subject LIKE CONCAT('%', @param, '%')), 1=1);
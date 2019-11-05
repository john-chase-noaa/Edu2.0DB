DROP VIEW IF EXISTS `view_all`;
CREATE VIEW view_all AS
SELECT 'Returns all resources with all lookups + separated.' as useage;
SELECT
    resources.ID,
    resources.title,
    CONCAT(SUBSTR(resources.about, 1, 20), '...') AS about,
    types.type,
    collections.collection,
    CONCAT(grade_start, ' - ', grade_end) AS grade,
    GROUP_CONCAT(DISTINCT subjects.subject ORDER BY subjects.subject DESC SEPARATOR ' + ') as subjects,
    GROUP_CONCAT(DISTINCT standards.standard ORDER BY standards.standard DESC SEPARATOR ' + ') as standards
FROM ((types INNER JOIN (collections INNER JOIN resources ON collections.ID = resources.collection_id) ON types.ID = resources.type_id) INNER JOIN (subjects INNER JOIN resources_subjects ON subjects.ID = resources_subjects.subject_id) ON resources.ID = resources_subjects.resource_id) INNER JOIN (standards INNER JOIN resources_standards ON standards.ID = resources_standards.standard_id) ON resources.ID = resources_standards.resource_id
GROUP BY resources.ID;
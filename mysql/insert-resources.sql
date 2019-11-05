DELETE FROM resources;
ALTER TABLE resources AUTO_INCREMENT = 1;
INSERT INTO resources (
    title, about, grade_start, grade_end, collection_id, type_id
)
VALUES (
    'Kentucky\'s Underground Railroad', 'Discover what the Underground Railroad was, the role it played in our county’s history, and why Northern Kentucky was such a key location. In this interactive lesson, students will develop a written response to the questions, “What was the Underground Railroad, and why is Kentucky an important part of its history?” They will gather evidence from reading assignments, video segments from KET’s <em>Kentucky Life</em>, and more.', '5', '8', 1, 2
);
SELECT * FROM resources;
DELETE FROM resources;
ALTER TABLE resources AUTO_INCREMENT = 1;
INSERT INTO resources (
    title, about, grade_start, grade_end, collection_id, type_id
)
VALUES
('Kentucky''s Underground Railroad',
'<p>Discover what the Underground Railroad was, the role it played in our county’s history, and why Northern Kentucky was such a key location. In this interactive lesson, students will develop a written response to the questions, “What was the Underground Railroad, and why is Kentucky an important part of its history?” They will gather evidence from reading assignments, video segments from KET’s <em>Kentucky Life</em>, and more.</p>',
5,
8,
1,
2),
('How To Look at Public Art',
'<p>Public art is all around us, but sometimes we don''t even notice it! Get some insight about the famed Bow and Arrow by the bay by artists Claes Oldenburg and Coosje Van Bruggen, and Ruth Asawa''s bay-framing fountain sculpture across the street. Then grab your hiking boots and head for the woods to see Andy Goldsworthy''s all-natural installations in The Presidio. Learn how to read these public artworks and many more, brought to you by the cutest curator in town.</p>',
6,
12,
23,
11),
('Energy in a Roller Coaster Ride',
'<p>This interactive roller coaster ride produced by WGBH illustrates the relationship between potential and kinetic energy. As the coaster cars go up and down the hills and around the loop of the track, a pie chart shows how the relative transformation back and forth between gravitational potential energy and kinetic energy.</p>',
3,
12,
24,
2),
('To Kill a Mockingbird: Southern Reaction 1960',
'<p>This video from <em>American Masters: Harper Lee: Hey, Boo</em> describes what life was like for those who challenged the system of segregation in the South in the late 1950s and early 1960s. Highlighting observations from cultural and literary icons as well as average American citizens, this video features important commentary that addresses the issues presented in <em>To Kill a Mockingbird</em> and how the public reacted to the novel when it was first published in 1960.</p><p>Sensitive: This resource contains material that may be sensitive for some students. Teachers should exercise discretion in evaluating whether this resource is suitable for their class.</p>',
7,
12,
25,
11),
('Pi & The Fibonacci Sequence',
'<p>Explore intriguing appearances of pi and the Fibonacci sequence outside of mathematics in this video from NOVA: The Great Math Mystery. Although well-known in mathematics, the numbers of the Fibonacci sequence are also frequently found in the natural world, such as in the number of petals on flowers and the number of spirals of a pinecone. Pi is commonly recognized as a number that relates a circle''s circumference to its diameter but it also appears in many other phenomena. For example, pi is related to the probability that a dropped needle will cut a series of parallel lines; it also can be used to calculate the length of a meandering river.</p>',
7,
12,
26,
11),
('Happy Halloween!',
'<p>Peg, Cat, Richard, Ramone, and a real tiger go trick-or-treating in the neighborhood. Peg divides the treats along the way to make sure that no one gets more and no one gets less. Teach kids how to evenly distribute items by counting, adding, and dividing.</p>',
-1,
1,
27,
11),
('Test Resource',
'<p><ul><li>Has other subjects.</li><li>Covers other grades.</li><li>Contains other standards.</li></ul></p>',
-1,
13,
8,
5);

INSERT INTO resources_subjects
(resource_id, subject_id)
VALUES
(1,2),
(2,9),
(3,1),
(3,11),
(3,13),
(3,31),
(4,2),
(4,4),
(5,3),
(6,3),
(6,7),
(7,5);

INSERT INTO resources_standards
(resource_id, standard_id)
VALUES
(1,2),
(1,14),
(2,1),
(3,2),
(3,5),
(3,1),
(3,3),
(4,2),
(5,2),
(5,6),
(6,2),
(6,6),
(6,9),
(6,10),
(7,2),
(7,15),
(7,21);

SELECT * FROM resources;
SELECT * FROM resources_subjects;
SELECT * FROM resources_standards;

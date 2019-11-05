DELETE from resources;
DELETE from types;
ALTER TABLE types AUTO_INCREMENT = 1;
INSERT INTO types (type)
VALUES
('Interactive Lesson'),
('Interactive'),
('Lesson Plan'),
('Media Gallery'),
('Audio'),
('Image'),
('Document'),
('Webpage'),
('Teacher-Built'),
('Collection'),
('Video');
DELETE FROM collections;
ALTER TABLE collections AUTO_INCREMENT = 1;
INSERT INTO collections (collection)
VALUES
('Interactive Lessons'),
('Teaching Kindness in the Classroom'),
('Ken Burns: Country Music'),
('MOLLY OF DENALI'),
('Celebrating Fall'),
('Back to School'),
('Ken Burns: Teaching American History and Culture'),
('Bringing the Universe to America''s Classrooms'),
('ARTHUR: All About Community'),
('Building Character'),
('Reconstruction: America After the Civil War'),
('News Quiz'),
('Wild Kratts'),
('The Halloween Collection'),
('Kindness in the Classroom'),
('Social-Emotional Learning'),
('Crash Course'),
('The Providers'),
('Meet the Helpers'),
('Math at the Core: Middle School'),
('Zoom'),
('PBS World Explorers'),
('Art School'),
('VITAL NY State Test Prep'),
('American Masters'),
('NOVA'),
('Peg + Cat');
DELETE from subjects;
ALTER TABLE subjects AUTO_INCREMENT = 1;
INSERT INTO subjects (parent_id, subject)
VALUES
(0, 'Science'),
(0, 'Social Studies'),
(0, 'Mathematics'),
(0, 'English Language Arts'),
(0, 'Engineering & Technology'),
(0, 'Health & Physical Education'),
(0, 'Preschool'),
(0, 'Professional Development'),
(0, 'The Arts'),
(0, 'World Languages'),
(1, 'Earth and Space Science'),
(1, 'Life Science'),
(1, 'Physical Science'),
(1, 'Practices and Nature of Science'),
(1, 'Instrumentation, Measurement, and Units'),
(11, 'The Universe and Its Stars'),
(11, 'Earth/Sun/Moon System'),
(11, 'Patterns in the Sky'),
(11, 'Formation of the Solar System'),
(11, 'Structure and Scale of the Solar System'),
(11, 'Components of the Solar System'),
(11, 'Earth''s Systems'),
(11, 'Earth''s Atmosphere'),
(11, 'Earth''s Cryosphere'),
(11, 'Earth''s Geosphere'),
(11, 'Plate Tectonics'),
(11, 'Earth''s Hydrosphere'),
(11, 'Earth''s Magnetic Field'),
(11, 'Human Impacts on Earth Systems'),
(11, 'Natural Hazards'),
(11, 'Natural Resources'),
(11, 'Weather and Climate'),
(11, 'Global and Regional Climate Change');
DELETE from standards;
ALTER TABLE standards AUTO_INCREMENT = 1;
INSERT INTO standards (parent_id, standard, code)
VALUES
(0, 'Next Generation Science Standards', NULL),
(0, 'National standards', NULL),
(1, 'Grade Level Disciplinary Core Ideas', NULL),
(1, 'Science and Engineering Practices Appendix F', NULL),
(2, 'Benchmarks for Science Literacy', NULL),
(2, 'College and Career Readiness for Adult Education', NULL),
(2, 'College, Career, and Civic Life (C3) Framework', NULL),
(2, 'Content Standards', NULL),
(2, 'Early Learning Outcomes Framework', NULL),
(2, 'Head Start Child Development and Early Learning Framework', NULL),
(2, 'ISTE Standards', NULL),
(2, 'National Health Education Standards', NULL),
(2, 'National Standards for Civics and Government', NULL),
(2, 'National Standards for History', NULL),
(2, 'National Standards for Physical Education', NULL),
(2, 'NETS for Students', NULL),
(2, 'NETS for Teachers', NULL),
(2, 'Standards for Foreign Language Learning', NULL),
(2, 'The National Visual Arts Standards', NULL),
(5, 'Letters and numbers can be used to put things in a useful order.', '8E/P2'),
(5, 'Numbers can be used to count things, place them in order, measure them, or name them.', '9A/P1'),
(5, 'Similar patterns may show up in many places in nature and in the things people make.', '9B/P1'),
(5, 'Scientists'' explanations about what happens in the world come partly from what they observe, partly from what they think.', '1B/E3A');
SELECT * FROM types;
SELECT * FROM collections;
SELECT * FROM subjects;
SELECT * FROM standards;
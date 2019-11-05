-- mysql -vv -u root -p
drop database pbslearning;
create database pbslearning;
use pbslearning;
create table collections (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    collection VARCHAR(255) UNIQUE,
    featured BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMP DEFAULT now()
);
create table types (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT now()
);
create table resources (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) UNIQUE,
    about LONG VARCHAR,
    grade_start TINYINT,
    grade_end TINYINT,
    collection_id INT NOT NULL,
    type_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    FOREIGN KEY (collection_id) references collections(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (type_id) references types(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
create table subjects (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    parent_id INT NOT NULL,
    subject VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT now()
);
create table standards (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    parent_id INT NOT NULL,
    standard VARCHAR(255) UNIQUE,
    code varchar(10),
    created_at TIMESTAMP DEFAULT now()
);
create table resources_standards (
    resource_id INT NOT NULL,
    standard_id INT NOT NULL,
    PRIMARY KEY (resource_id, standard_id),
    FOREIGN KEY (resource_id) REFERENCES resources (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
create table resources_subjects (
    resource_id INT NOT NULL,
    subject_id INT NOT NULL,
    PRIMARY KEY (resource_id, subject_id),
    FOREIGN KEY (resource_id) REFERENCES resources (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
desc resources;
desc collections;
desc types;
desc subjects;
desc standards;
desc resources_standards;
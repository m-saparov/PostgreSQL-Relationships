DROP TABLE IF EXISTS students_12;
DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- task1 da students borligi uchun 12 qildim
CREATE TABLE students_12 (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    teacher_id BIGINT REFERENCES teachers(id) ON DELETE SET NULL
);

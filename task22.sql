DROP TABLE IF EXISTS student_courses;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students_mn;


CREATE TABLE students_mn (
    id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL
);


CREATE TABLE courses (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);


CREATE TABLE student_courses (
    student_id BIGINT REFERENCES students_mn(id) ON DELETE CASCADE,
    course_id BIGINT REFERENCES courses(id) ON DELETE CASCADE,
    enrolled_on DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (student_id, course_id)
);

CREATE TYPE gender_type AS ENUM('MALE', 'FEMALE');


CREATE TABLE students (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio TEXT,
    birthdate DATE CHECK (birthdate < NOW()),
    create_at TIMESTAMP DEFAULT NOW(),
    gender gender_type
);


CREATE TABLE passports (
    id BIGSERIAL PRIMARY KEY,
    seria CHAR(9),
    student_id BIGINT UNIQUE,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

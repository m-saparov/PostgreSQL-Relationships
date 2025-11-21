
-- TUSHUNMADIM


-- 1. Passportni talabaga biriktirish
UPDATE passports
SET student_id = 1
WHERE id = 3;

-- 2. Talaba + Passport ma'lumotlarini JOIN qilib chiqarish
SELECT s.id, s.name, s.birthdate,
       p.seria, p.number, p.issue_date, p.expiry_date
FROM students s
JOIN passports p ON s.id = p.student_id;

-- 3. Passporti yo'q talabalarni chiqarish
SELECT s.id, s.name
FROM students s
LEFT JOIN passports p ON s.id = p.student_id
WHERE p.student_id IS NULL;

-- 4. Passportni talabadan ajratish
UPDATE passports
SET student_id = NULL
WHERE student_id = 1;

-- 5. Talabaning passportini o'chirish
DELETE FROM passports
WHERE student_id = 1;

-- 6. Passporti bor talabalar soni
SELECT COUNT(*)
FROM passports
WHERE student_id IS NOT NULL;

# SQL Relationships Practice Tasks

SQL-da **1:1**, **1:N**, **M:N**, va **Self-Referencing** munosabatlarini mustahkamlash uchun 40 ta amaliy vazifalar to‘plami.

---

## 🔹 1:1 (One-to-One) – **Student & Passport**

**Ma’no:** har bir talabaning faqat bitta passporti bo‘ladi.

### Vazifalar:

1. `students` va `passports` jadvallarini yarat (1:1).
2. 3 ta student qo‘sh.
3. Har bir studentga passport biriktir.
4. `INNER JOIN` orqali student + passport ro‘yxatini chiqar.
5. Passport raqami bo‘yicha studentni top.
6. Passport jadvaliga `UNIQUE` constraint qo‘sh.
7. Student o‘chirilsa, passport ham **CASCADE** bo‘lib o‘chishini test qil.
8. Passporti yo‘q studentlarni chiqar.
9. Student + passportni birgalikda qo‘shadigan query yoz.
10. Student ID bo‘yicha passport ma’lumotlarini chiqar.
11. Passport ID bo‘yicha studentni top.

---

## 🔹 1:N (One-to-Many) – **Teacher & Student**

**Ma’no:** bir ustozning ko‘p talabasi bo‘ladi.

### Vazifalar:

12. `teachers` va `students` jadvallarini yarat.
13. 2 ta ustoz va 5 ta student qo‘sh, studentlarni ustozlarga bog‘la.
14. Har bir studentning ustozini chiqar.
15. Har bir ustoz nechta talaba o‘qitayotganini chiqar.
16. Ustoz o‘chsa, studentlarning `teacher_id` **NULL** bo‘lishini test qil.
17. Studentlarni ustoz ismi bo‘yicha sarala.
18. Eng ko‘p talaba o‘qitayotgan ustozni top.
19. Ustozsiz qolgan studentlarni chiqar.
20. Studentlarni yoshi bo‘yicha tartibla va ustozini ko‘rsat.
21. Har bir ustoz bo‘yicha studentlarning o‘rtacha yoshini hisobla.

---

## 🔹 M:N (Many-to-Many) – **Student & Course**

**Ma’no:** student ko‘p kursga yozilishi mumkin, kursga ko‘p student qatnashishi mumkin.

### Vazifalar:

22. `students`, `courses`, `student_courses` jadvallarini yarat.
23. 3 ta student va 3 ta course qo‘sh.
24. Studentlarni kamida 2 tadan kursga yozdir.
25. JOIN orqali har bir studentning kurslarini chiqar.
26. JOIN orqali har bir kursda nechta student borligini hisobla.
27. Student qatnashmagan kurslarni top.
28. Kursga yozilmagan studentlarni top.
29. Biror kursni o‘chir va `ON DELETE CASCADE` ishlashini test qil.
30. Har bir student nechta kursda o‘qiyotganini chiqar.
31. Eng ko‘p kursga qatnashayotgan studentni top.

---

## 🔹 Self-Referencing (Recursive) – **Employee & Manager**

**Ma’no:** xodimning boshlig‘i ham xodimlar jadvalining o‘zida turadi.

### Vazifalar:

32. `employees` jadvalini yarat (`manager_id` self-FK).
33. 1 direktor, 2 team-lead va 3 developer qo‘sh.
34. Har bir xodimning boshlig‘ini chiqar.
35. Boshlig‘i yo‘q xodimlarni top (direktor).
36. Har bir boshliq nechta odam boshqarayotganini hisobla.
37. Masalan, **Malika**ning jamoasidagi xodimlarni top.
38. Har bir xodimni boshlig‘i bilan JOIN qilib chiqar.
39. Boshliq o‘chirilib, `ON DELETE SET NULL` ishlashini test qil.
40. Recursive CTE yordamida boshliq zanjirini chiqar
    (masalan: `Aziz → Bobur → Malika → Dilshod`).


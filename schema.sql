-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    major VARCHAR(50),
    gpa DECIMAL(3,2),
    city VARCHAR(50)
);

-- Insert Student Records
INSERT INTO Students (student_id, name, age, major, gpa, city) VALUES
(101, 'AHMED', 21, 'COMPUTER SCIENCE', 3.50, 'RIYADH'),
(102, 'SARAH', 22, 'Cybersecurity', 3.80, 'Jeddah'),
(103, 'Ali', 20, 'Information Technology', 3.20, 'Dammam'),
(104, 'MONA', 23, 'COMPUTER SCIENCE', 3.90, 'RIYADH'),
(105, 'OMAR', 21, 'Software Engineering', 3.60, 'JEDDAH'),
(106, 'REEM', 24, 'Cybersecurity', 3.70, 'RIYADH'),
(107, 'KHALID', 25, 'COMPUTER SCIENCE', 3.95, 'Dammam'),
(108, 'NOOR', 22, 'Information Technology', 3.40, 'RIYADH'),
(109, 'FAISAL', 26, 'Software Engineering', 3.10, 'Jeddah'),
(110, 'HUDA', 20, 'Cybersecurity', 3.85, 'Dammam'),
(111, 'YASSER', 23, 'COMPUTER SCIENCE', 3.75, 'RIYADH'),
(112, 'AISHA', 21, 'Information Technology', 3.75, 'RIYADH'),
(113, 'SAAD', 27, 'Software Engineering', 3.88, 'RIYADH'),
(114, 'LINA', 24, 'Cybersecurity', 3.55, 'Jeddah'),
(115, 'NASSER', 22, 'COMPUTER SCIENCE', 3.88, 'RIYADH'),
(116, 'FATIMA', 25, 'Information Technology', 3.50, 'RIYADH'),
(117, 'ABDULLAH', 28, 'Software Engineering', 3.25, 'RIYADH'),
(118, 'DANA', 23, 'Cybersecurity', 3.45, 'Jeddah'),
(119, 'MAJED', 21, 'Computer Science', 3.45, 'Dammam'),
(120, 'RAWAN', 26, 'Information Technology', 3.68, 'RIYADH');

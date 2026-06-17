INSERT INTO departments (department_name, location)
VALUES
('Cardiology', 'Block A'),
('Neurology', 'Block B'),
('Orthopedics', 'Block C');
INSERT INTO doctors
(first_name, last_name, specialty, phone_number, email, department_id)
VALUES
('Raj', 'Kumar', 'Cardiologist', '9876543210', 'raj@gmail.com', 1),
('Priya', 'Sharma', 'Neurologist', '9876543211', 'priya@gmail.com', 2),
('Arjun', 'Reddy', 'Orthopedic', '9876543212', 'arjun@gmail.com', 3);
INSERT INTO patients
(first_name, last_name, date_of_birth, phone_number, email, address)
VALUES
('Rahul', 'Verma', '1998-05-12', '9876500001', 'rahul@gmail.com', 'Hyderabad'),
('Sneha', 'Rao', '2000-08-20', '9876500002', 'sneha@gmail.com', 'Vizag'),
('Kiran', 'Naidu', '1995-02-15', '9876500003', 'kiran@gmail.com', 'Vijayawada'),
('Anjali', 'Shah', '1999-10-10', '9876500004', 'anjali@gmail.com', 'Guntur'),
('Ramesh', 'Patel', '1997-06-25', '9876500005', 'ramesh@gmail.com', 'Warangal');
INSERT INTO appointments
(appointment_time, reason, patient_id, doctor_id)
VALUES
('2025-06-01 10:00:00', 'Chest Pain', 1, 1),
('2025-06-02 11:00:00', 'Headache', 2, 2),
('2025-06-03 09:30:00', 'Knee Pain', 3, 3),
('2025-06-04 02:00:00', 'Follow Up', 1, 1),
('2025-06-05 04:00:00', 'Back Pain', 4, 3);
INSERT INTO bills
(bill_amount, bill_date, due_date, status, patient_id, appointment_id)
VALUES
(1500.00, '2025-06-01', '2025-06-10', 'Paid', 1, 1),
(2000.00, '2025-06-02', '2025-06-11', 'Pending', 2, 2),
(1800.00, '2025-06-03', '2025-06-12', 'Paid', 3, 3),
(1200.00, '2025-06-04', '2025-06-13', 'Pending', 1, 4),
(2500.00, '2025-06-05', '2025-06-14', 'Paid', 4, 5);

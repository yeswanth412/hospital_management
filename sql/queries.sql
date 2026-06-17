SELECT * FROM patients;
SELECT * FROM doctors;
select patients.first_name, patients.last_name, doctors.first_name as doctor_first_name, doctors.last_name as doctor_last_name, appointments.appointment_time, appointments.reason
from appointments
inner join patients on 
appointments.patient_id = patients.patient_id
inner join doctors on
appointments.doctor_id = doctors.doctor_id
group by patients.first_name, patients.last_name, doctors.first_name, doctors.last_name, appointments.appointment_time, appointments.reason;
select count(*) as total_appointments, doctors.first_name, doctors.last_name
from appointments
inner join doctors on
appointments.doctor_id = doctors.doctor_id
group by doctors.first_name, doctors.last_name;
select sum(bills.bill_amount) as total_billed_amount
from bills;
select patients.patient_id, patients.first_name, patients.last_name, appointments.appointment_time, appointments.reason
from appointments
inner join patients on
appointments.patient_id = patients.patient_id;
select doctors.first_name, doctors.last_name, doctors.specialty,appointments.appointment_time, appointments.reason
from appointments
left join doctors on
appointments.doctor_id = doctors.doctor_id;
select patients.first_name, patients.last_name, patients.date_of_birth, patients.phone_number, patients.email, patients.address ,count(appointments.appointment_id) 
from patients
inner join appointments on
patients.patient_id = appointments.patient_id
group by patients.first_name, patients.last_name, patients.date_of_birth, patients.phone_number, patients.email, patients.address
having count(appointments.appointment_id) > 1;
select max(bills.bill_amount) as highest_bill_amount
from bills;
select doctors.first_name, doctors.last_name, doctors.specialty, count(appointments.appointment_id) as total_appointments
from doctors
left join appointments on
doctors.doctor_id = appointments.doctor_id
group by doctors.first_name, doctors.last_name, doctors.specialty
order by total_appointments desc
limit 1;

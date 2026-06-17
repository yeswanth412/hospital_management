create table patients(
    patient_id serial primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    date_of_birth date not null,
    phone_number varchar(10) not null,
    email varchar(100) not null,
    address varchar(255) not null
);
create table departments(
    department_id serial primary key,
    department_name varchar(100) not null,
    location varchar(255) not null
);
create table doctors(
    doctor_id serial primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    specialty varchar(100) not null,
    phone_number varchar(10) not null,
    email varchar(100) not null,
    department_id int not null,
    foreign key (department_id) references departments(department_id)
);
create table appointments(
    appointment_id serial primary key,
    appointment_time timestamp not null,
    reason varchar(255) not null,
    patient_id int not null,
    doctor_id int not null,
    foreign key (patient_id)  references patients(patient_id),
    foreign key (doctor_id) references doctors(doctor_id)
);
create table bills(
    bill_id serial primary key,
    bill_amount decimal(10, 2) not null,
    bill_date date not null,
    due_date date not null,
    status varchar(20) not null,
    patient_id int not null,
    foreign key (patient_id) references patients(patient_id),
    appointment_id int not null,
    foreign key (appointment_id) references appointments(appointment_id)
);

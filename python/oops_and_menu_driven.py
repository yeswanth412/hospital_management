class person:
    def __init__(self,name):
        self.name=name
class patient(person):
    def __init__(self,patient_id,name,age):
        super().__init__(name)
        self.patient_id=patient_id
        self.__age=age
    def get_age(self):
        return self.__age
    def display_patient(self):
        print(f"patient id:{self.patient_id}")
        print(f"patient name:{self.name}")
        print(f"age:{self.__age}")
class doctor(person):
    def __init__(self,doctor_id,name,specialization):
        super().__init__(name)
        self.doctor_id = doctor_id
        self.specialization = specialization
    def display(self):
         print(f"Doctor ID: {self.doctor_id}")
         print(f"Doctor Name: {self.name}")
         print(f"Specialization: {self.specialization}")
doctor1 = doctor(101, "Dr. Ramesh", "Cardiology")
doctor2 = doctor(102, "Dr. Priya", "Neurology")
patients=[]
def add_patients():
    patient_id=int(input("enter the patient id:"))
    name=input("enter the name of the patient:")
    age=int(input("enter the age of the patient:"))
    patient= patients
    (patient_id,name,age)
    patients.append(patient)
    print("patient added successfully.\n")
def view_patient():
    if not patient:
        print('patient not found.\n')
    else:
        for patient in patient:
            patient.display_patient()
def search_patient():
    search_id = int(input("Enter Patient ID to Search: "))

    for patient in patients:
        if patient.patient_id == search_id:
            print("Patient Found:")
            patient.display_patient()
            return

    print("Patient Not Found.\n")
while True:
    print("\n===== Hospital Management Menu =====")
    print("1. Add Patient")
    print("2. View Patients")
    print("3. Search Patient")
    print("4. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        add_patients()

    elif choice == "2":
        view_patient()

    elif choice == "3":
        search_patient()

    elif choice == "4":
        print("Exiting Program...")
        break

    else:
        print("invalid choice!")
    

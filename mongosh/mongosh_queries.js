 db.createCollection("patients")
 db.createCollection("appointments")
 db.patients.insertOne({ patient_name: 'yeswanth', email: 'yeswanthnarasayya@gmail.com', date_of_birth: '09-11-2003', phone_number: 6304397552 });
db.patients.find();
db.patients.updateOne( { patient_name: 'yeswanth' }, { $set: { phone_number: 6304397553 } } );
db.patients.deleteOne({patient_name:'yeswanth'});
db.patients.insertMany([
|     {
|         patient_id: 101,
|         first_name: "Ravi",
|         city: "Visakhapatnam"
|     },
|     {
|         patient_id: 102,
|         first_name: "Priya",
|         city: "Hyderabad"
|     },
|     {
|         patient_id: 103,
|         first_name: "Kiran",
|         city: "Visakhapatnam"
|     },
|     {
|         patient_id: 104,
|         first_name: "Anjali",
|         city: "Chennai"
|     }
| ])
db.patients.aggregate([ { $group: { _id: '$city', count: { $sum: 1 } } }] );

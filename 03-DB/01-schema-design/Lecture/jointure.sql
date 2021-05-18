SELECT * FROM consultations
JOIN doctors ON consultations.doctor_id = doctors.id
JOIN patiens ON consultation.patient_id = patients.id

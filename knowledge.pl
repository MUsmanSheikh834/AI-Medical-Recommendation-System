symptom(common_cold, cough).
symptom(common_cold, sore_throat).
symptom(common_cold, runny_nose).
symptom(common_cold, headache).
symptom(common_cold, fever).

symptom(influenza, fever).
symptom(influenza, body_aches).
symptom(influenza, fatigue).
symptom(influenza, cough).
symptom(influenza, headache).

symptom(pneumonia, fever).
symptom(pneumonia, cough).
symptom(pneumonia, chest_pain).
symptom(pneumonia, shortness_of_breath).
symptom(pneumonia, fatigue).

symptom(tuberculosis, cough).
symptom(tuberculosis, weight_loss).
symptom(tuberculosis, night_sweats).
symptom(tuberculosis, fever).

symptom(asthma, cough).
symptom(asthma, wheezing).
symptom(asthma, shortness_of_breath).
symptom(asthma, chest_tightness).

symptom(food_poisoning, nausea).
symptom(food_poisoning, vomiting).
symptom(food_poisoning, stomach_pain).
symptom(food_poisoning, diarrhea).
symptom(food_poisoning, fever).

symptom(typhoid, fever).
symptom(typhoid, abdominal_pain).
symptom(typhoid, weakness).
symptom(typhoid, diarrhea).

symptom(cholera, diarrhea).
symptom(cholera, vomiting).
symptom(cholera, dehydration).
symptom(cholera, muscle_cramps).

symptom(hepatitis_b, fatigue).
symptom(hepatitis_b, nausea).
symptom(hepatitis_b, jaundice).
symptom(hepatitis_b, abdominal_pain).

symptom(acid_reflux, heartburn).
symptom(acid_reflux, chest_discomfort).
symptom(acid_reflux, sour_taste).
symptom(acid_reflux, nausea).

symptom(migraine, headache).
symptom(migraine, nausea).
symptom(migraine, light_sensitivity).
symptom(migraine, sound_sensitivity).

symptom(meningitis, headache).
symptom(meningitis, stiff_neck).
symptom(meningitis, fever).
symptom(meningitis, vomiting).
symptom(meningitis, light_sensitivity).

symptom(epilepsy, seizures).
symptom(epilepsy, confusion).
symptom(epilepsy, loss_of_consciousness).
symptom(epilepsy, fatigue).

symptom(rheumatoid_arthritis, joint_pain).
symptom(rheumatoid_arthritis, joint_swelling).
symptom(rheumatoid_arthritis, fatigue).

symptom(psoriasis, rash).
symptom(psoriasis, itching).
symptom(psoriasis, dry_patches).
symptom(psoriasis, joint_pain).

symptom(diabetes, thirst).
symptom(diabetes, frequent_urination).
symptom(diabetes, fatigue).
symptom(diabetes, blurred_vision).
symptom(diabetes, slow_healing_wounds).

symptom(hypertension, headache).
symptom(hypertension, dizziness).
symptom(hypertension, blurred_vision).
symptom(hypertension, shortness_of_breath).

symptom(coronary_artery_disease, chest_pain).
symptom(coronary_artery_disease, shortness_of_breath).
symptom(coronary_artery_disease, fatigue).

symptom(anemia, fatigue).
symptom(anemia, pale_skin).
symptom(anemia, dizziness).
symptom(anemia, shortness_of_breath).

symptom(dengue, fever).
symptom(dengue, headache).
symptom(dengue, joint_pain).
symptom(dengue, rash).

symptom(malaria, fever).
symptom(malaria, chills).
symptom(malaria, sweating).
symptom(malaria, body_aches).

advice(common_cold, "Rest, stay hydrated, and take over-the-counter cold medicines if needed.").
advice(influenza, "Rest, drink fluids, monitor fever, and consult a doctor if symptoms worsen.").
advice(pneumonia, "Visit a doctor immediately - may require antibiotics or hospitalization.").
advice(tuberculosis, "Visit a doctor immediately - requires medical treatment and follow-up.").
advice(asthma, "Use prescribed inhaler, avoid triggers, and monitor breathing regularly.").
advice(food_poisoning, "Drink plenty of fluids, rest, and consume a bland diet.").
advice(typhoid, "Visit a doctor immediately - antibiotics are usually required.").
advice(cholera, "Visit a doctor immediately - rehydration therapy is essential.").
advice(hepatitis_b, "Visit a doctor immediately - requires monitoring and treatment.").
advice(acid_reflux, "Avoid trigger foods, eat smaller meals, and maintain an upright posture after eating.").
advice(migraine, "Rest in a quiet, dark room, stay hydrated, and use over-the-counter pain relief.").
advice(meningitis, "Visit a doctor immediately - can be life-threatening and requires urgent care.").
advice(epilepsy, "Visit a doctor immediately - proper medication and monitoring are essential.").
advice(rheumatoid_arthritis, "Consult a doctor for anti-inflammatory medications and physical therapy.").
advice(psoriasis, "Moisturize skin, avoid triggers, and consult a dermatologist for treatment.").
advice(diabetes, "Visit a doctor immediately - manage blood sugar with medication, diet, and monitoring.").
advice(hypertension, "Visit a doctor immediately - monitor blood pressure and follow prescribed treatment.").
advice(coronary_artery_disease, "Visit a doctor immediately - may require lifestyle changes or medication.").
advice(anemia, "Visit a doctor immediately - iron supplements or other treatments may be needed.").
advice(dengue, "Visit a doctor immediately - monitor platelet count and hydration.").
advice(malaria, "Visit a doctor immediately - requires antimalarial treatment.").


disease_group(common_cold, respiratory).
disease_group(influenza, respiratory).
disease_group(pneumonia, respiratory).
disease_group(tuberculosis, respiratory).
disease_group(asthma, respiratory).

disease_group(food_poisoning, digestive).
disease_group(typhoid, digestive).
disease_group(cholera, digestive).
disease_group(hepatitis_b, digestive).
disease_group(acid_reflux, digestive).

disease_group(migraine, neurological).
disease_group(meningitis, neurological).
disease_group(epilepsy, neurological).

disease_group(rheumatoid_arthritis, autoimmune).
disease_group(psoriasis, autoimmune).

disease_group(diabetes, metabolic).
disease_group(hypertension, metabolic).
disease_group(coronary_artery_disease, metabolic).
disease_group(anemia, metabolic).

disease_group(dengue, infectious).
disease_group(malaria, infectious).

group_symptom(respiratory, cough).
group_symptom(respiratory, shortness_of_breath).

group_symptom(digestive, nausea).
group_symptom(digestive, diarrhea).

group_symptom(neurological, headache).
group_symptom(neurological, seizures).

group_symptom(autoimmune, joint_pain).
group_symptom(autoimmune, rash).

group_symptom(metabolic, fatigue).
group_symptom(metabolic, dizziness).

group_symptom(infectious, fever).
group_symptom(infectious, body_aches).

refer_doctor(pneumonia).
refer_doctor(tuberculosis).
refer_doctor(hepatitis_b).
refer_doctor(typhoid).
refer_doctor(cholera).
refer_doctor(coronary_artery_disease).
refer_doctor(diabetes).
refer_doctor(hypertension).
refer_doctor(anemia).
refer_doctor(meningitis).
refer_doctor(epilepsy).
refer_doctor(psoriasis).
refer_doctor(rheumatoid_arthritis).
refer_doctor(malaria).
refer_doctor(dengue).

home_remedy(common_cold).
home_remedy(influenza).
home_remedy(migraine).
home_remedy(food_poisoning).
home_remedy(acid_reflux).
home_remedy(asthma).

count_matches(_, [], 0).
count_matches(Disease, [Symptom | Rest], Count) :-
    symptom(Disease, Symptom),
    count_matches(Disease, Rest, RestCount),
    Count is RestCount + 1.
count_matches(Disease, [_ | Rest], Count) :-
    count_matches(Disease, Rest, Count).

diagnose_best(Symptoms, Threshold, BestDisease, BestCount) :-
    findall(
        (Disease, Count),
        (
            symptom(Disease, _),
            count_matches(Disease, Symptoms, Count),
            Count >= Threshold
        ),
        AllResultsDup
    ),
    sort(AllResultsDup, AllResults),
    AllResults \= [],
    sort(2, @>=, AllResults, [(BestDisease, BestCount) | _]).

count_group_matches(_, [], 0).
count_group_matches(Group, [Symptom | Rest], Count) :-
    group_symptom(Group, Symptom),
    count_group_matches(Group, Rest, RestCount),
    Count is RestCount + 1.
count_group_matches(Group, [_ | Rest], Count) :-
    count_group_matches(Group, Rest, Count).

diagnose_group_best(Symptoms, Threshold, BestGroup, BestCount) :-
    findall(
        (Group, Count),
        (
            group_symptom(Group, _),
            count_group_matches(Group, Symptoms, Count),
            Count >= Threshold
        ),
        AllResultsDup
    ),
    sort(AllResultsDup, AllResults),
    AllResults \= [],
    sort(2, @>=, AllResults, [(BestGroup, BestCount) | _]).

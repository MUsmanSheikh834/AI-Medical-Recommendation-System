from pyswip import Prolog

prolog = Prolog()
prolog.consult("knowledge.pl")  # Make sure knowledge.pl contains all symptoms + rules

def ask_Symptoms(symptoms):
    selected_symptoms = []
    i = 0
    while i < len(symptoms):
        symptom = symptoms[i]
        print("Are you experiencing", symptom.replace("_", " "), "[y/n]: ", end="")
        ans = input().strip().lower()
        if ans == "y":
            selected_symptoms.append(symptom)
        elif ans != "n":
            print("Invalid input! Please enter only 'y' or 'n'.")
            continue
        i = i + 1
    return selected_symptoms

def diagnose(selected_symptoms):
    patient_symptoms = "[" + ",".join(selected_symptoms) + "]"
    query = f"diagnose_best({patient_symptoms}, 3, Disease, MatchCount)"
    
    result = list(prolog.query(query))

    if not result:
        print("No Disease in our database matches your symptoms.")
    else:
        print("\n Most Likely Disease:")
        best = result[0]
        disease = best['Disease']
        count = best['MatchCount']
        print(f"\n Disease: {disease}")
        print(f" Matching Symptoms Count: {count}")
        query = f"advice({disease}, Advice)"
        result = list(prolog.query(query))
        advice = result[0]["Advice"]
        advice = advice.decode("utf-8")  
        print("\n",advice)

def diagnose_group(selected_symptoms):
    patient_symptoms = "[" + ",".join(selected_symptoms) + "]"
    query = f"diagnose_group_best({patient_symptoms}, 1, BestGroup, BestCount)"
    result = list(prolog.query(query))
    if not result:
        print("No disease group in our database matches your symptoms.")
        return None
    else:
        best_group = result[0]["BestGroup"]
        best_count = result[0]["BestCount"]
        print("\nMost Likely Disease Group:")
        print(f"Group: {best_group}, Matching Symptoms: {best_count}")
        print()
        return best_group


def extract_Symptoms(Group):
    symptoms=[]
    query=f"disease_group(Disease, '{Group}')"
    diseases=list(prolog.query(query))
    for d in diseases:
        disease=d["Disease"]
        sub_query=f"symptom({disease}, Symptom)"
        results=list(prolog.query(sub_query))
        for r in results:
            symptoms.append(r["Symptom"])
    symptoms=list(set(symptoms))
    return symptoms

    
symptoms = [
    "nausea","diarrhea","headache","seizures","joint_pain",
    "skin_rash","fatigue","dizziness","fever","body_aches"
]


selected_group_symptoms=ask_Symptoms(symptoms)
group=diagnose_group(selected_group_symptoms)
selected_symptoms=extract_Symptoms(group)

if not selected_symptoms:
    print("You did not select any symptoms. Cannot diagnose.")
else:
    selected_symptoms = list(set(selected_symptoms) - set(selected_group_symptoms))
    selected_symptoms=ask_Symptoms(selected_symptoms)
    selected_symptoms.extend(selected_group_symptoms)
    diagnose(selected_symptoms)

# AIproject\Scripts\activate.bat      copy command to activate environment then run python main.py
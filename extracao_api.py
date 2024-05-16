import requests
import csv

def extract_cat_facts():
    url = "https://cat-fact.herokuapp.com/facts"
    response = requests.get(url)
    data = response.json()
    return data

def save_to_csv(cat_facts, filename):
    with open(filename, 'w', newline="", encoding='utf-8') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=cat_facts[0].keys())
        writer.writeheader()
        writer.writerows(cat_facts)


cat_facts = extract_cat_facts()
save_to_csv(cat_facts, "cats_facts_data.csv")

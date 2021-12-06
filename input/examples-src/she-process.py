#!/usr/bin/env python
# coding: utf-8

# In[1]:


# update this notebook first
# then the last cell in it will update the cli script
# pip install pandas openpyxl jinja2 faker
import pandas as pd
import pathlib
from jinja2 import Template
from faker import Faker
import sys


# In[4]:


df_names = pd.read_csv('names.csv')
# print(df_names[:4])
names = df_names['en'].sample(n=1, random_state=1)
# print(names.values)
# print(names.values[0])


# In[5]:


# goal: nested lists of form: [index, suffix, birthDate, centre...]
# for now, suffix = name and suffix
fake = Faker()
def genfsh(lang, obs):
    for i in range(obs):
        tempname = df_names[lang].sample(n=1)
        tempname = tempname.values[0]
        suffix = lang + str(i)
        name = tempname + str(i)
        if lang == 'en':
            orgname = "Government Hospital"
            centre = 'Vaccination Site'
        if lang == 'es':
            orgname = "Hospital del Gobierno"
            centre = "Sitio de vacunación"
        if lang == 'fr':
            orgname = "Hôpital du gouvernement"
            centre = "Site de vaccination"
        if lang == 'ar':
            orgname = "مستشفى حكومي"
            centre = "موقع التطعيم"
        if lang == 'zh':
            orgname = "政府医院"
            centre = "疫苗接种现场"
        if lang == 'ru':
            orgname = "Государственная больница"
            centre = "Сайт вакцинации"
        x = fake.date_between(start_date='-80y', end_date='-15y')
        birthDate = str(x)
        identifier = lang + str(9999) + str(i)
        # this prints oddly bc of the mix of rtl-ltr langs?
        print(lang, suffix, name, birthDate, identifier)
        # put through jinja2
        path = pathlib.Path('she-template.fsh')
        text = path.read_text()
        t = Template(text)
        msg = t.render(
            suffix=suffix,
            name=name,
            birthDate=birthDate,
            identifier=identifier,
            orgname=orgname,
            centre=centre
        )
        path_out = pathlib.Path(f"output/{suffix}.fsh")
        path_out.write_text(msg)


# In[6]:


print("command:", str(sys.argv))
langs = ['en', 'es', 'fr', 'ar', 'zh', 'ru']
if sys.argv[1] in langs:
    genfsh(str(sys.argv[1]), int(sys.argv[2]))
else:
    genfsh('ar', 100)


# In[7]:


# In[ ]:





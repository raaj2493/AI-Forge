import os
import json
from dotenv import load_dotenv
from groq import Groq
from pydantic import BaseModel

load_dotenv()

my_api_key = os.getenv("GROQ_API_KEY")

if not my_api_key:
    raise ValueError("Api key kaha ha bhai ?")

client = Groq(api_key=my_api_key)

model = "openai/gpt-oss-20b"

role = "user"

class Ticket(BaseModel):
    name:str
    email:str
    issue:str
    
schema = Ticket.model_json_schema()

reponse_format = {
    "type":"json_object"
}

system_prompt = f"""
You are a customer support ticket extraction assistant.

Extract the customer's name, email and actual issue.

Follow this JSON schema:
{schema}

Return only valid JSON.
Do not invent missing information.
"""


message_system = {
    "role": "system",
    "content": system_prompt
}


# 5. User input

text = """
Hello, my name is Rahul.
My email is rahul@gmail.com.
My laptop stopped working yesterday.
The screen turns black whenever I start it.
"""

prompt = f"""
Extract the information from this customer ticket:

{text}
"""


message = {
    "role": role,
    "content": prompt
}

messages = [message_system, message]

response = client.chat.completions.create(model=model, messages=messages , response_format=reponse_format)

answer = response.choices[0].message.content


# 7. Convert JSON into Python dictionary

raw_json = answer

data_file = json.loads(raw_json)


# 8. Validate using Pydantic

ticket = Ticket(**data_file)


# 9. Access extracted information

print("\nEXTRACTED INFORMATION")

print(ticket.name)
print(ticket.email)
print(ticket.issue)


client.close()




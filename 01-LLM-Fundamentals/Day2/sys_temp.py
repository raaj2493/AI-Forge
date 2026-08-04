import os 
from pathlib import Path
from dotenv import load_dotenv
from groq import Groq

load_dotenv()
my_api_key = os.getenv("GROQ_API_KEY")

if not my_api_key:
    raise ValueError("Api key kaha ha bhai")

client = Groq(api_key=my_api_key)

model="llama-3.3-70b-versatile"
role = "user"
prompt = "I love you Baby"


message_system={
    "role": "system",
    "content": "You are a my loving girlfriend"
}

message={
    "role": "user",
    "content": prompt
}

messages=[ message_system ,message]

response=client.chat.completions.create(model=model, messages=messages)

##print(response)


print("###################################")

answer = response.choices[0].message.content
print(answer)
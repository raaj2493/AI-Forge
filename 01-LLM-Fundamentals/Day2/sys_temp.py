import os
from pathlib import Path
from dotenv import load_dotenv
from groq import Groq

load_dotenv()
my_api_key = os.getenv("GROQ_API_KEY")

if not my_api_key:
    raise ValueError("API key kaha ha bhai")

client = Groq(api_key=my_api_key)

model = "openai/gpt-oss-20b"
role="user"
prompt = "who is dr doom?"

message = {
    "role": role,
    "content": prompt
}

# SYSTEM
message_system={
    "role": "system",
    "content": "You are a brand manager who suggests name for my company. name should be in one word. suggest only one name"
}

messages = [message]

response=client.chat.completions.create(model=model, messages=messages, temperature=0)
print(response)
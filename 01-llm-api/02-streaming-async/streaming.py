import os 
from dotenv import load_dotenv
from groq import Groq

load_dotenv()

my_api_key = os.getenv("GROQ_API_KEY")

if not my_api_key:
    raise ValueError("API key kaha ha bhai")

client = Groq(api_key=my_api_key)

model = "openai/gpt-oss-20b"
role = "user"
prompt = "Who is Rune King Thor , tell his story and his power levels and its achivements which makes him the strongest avenger"

user_message = {
    "role" : role,
    "content" : prompt
}

messages =  [user_message]

response = client.chat.completions.create(
    model=model,
    messages=messages,
    temperature=0.7,
    stream=True
)

for chunk in response:
    print(chunk.choices[0].delta.content or "", end="", flush=True)
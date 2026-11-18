import os 
from groq import Groq
from dotenv import load_dotenv


load_dotenv()

my_api_key = os.getenv("GROQ_API_KEY")

if not my_api_key:
    raise Exception("No API Key found")

client = Groq(api_key=my_api_key)

model = "openai/gpt-oss-20b"
role = "user"
prompt = "how is dr doom in upcoming movie avengers doomsday and how much he is powerful and list down his greatest deeds in comics and movies"

message = {
    "role": role,
    "content": prompt
}

messages = [message]

response = client.chat.completions.create(model=model, messages=messages)

print(response)





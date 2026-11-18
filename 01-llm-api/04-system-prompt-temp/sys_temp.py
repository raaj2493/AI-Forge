import os
from groq import Groq
from dotenv import load_dotenv

load_dotenv()

my_api_key = os.getenv("GROQ_API_KEY")

if not my_api_key:
    raise ValueError("Api key kaha ha bhai ?")

client = Groq(api_key=my_api_key)

model = "openai/gpt-oss-20b"

# System instructions
system_prompt = """
You are a senior Python developer.
Explain concepts with practical examples.
Keep your answers clear and beginner-friendly.
"""

system_message = {
    "role" : "system",
    "content" : system_prompt
}

user_message = {
    "role" : "user",
    "content" : "Explain Python Decorators"
}

messages = [system_message , user_message]

response = client.chat.completions.create(model = model , messages=messages , temperature= 0.7)

answer = response.choices[0].message.content

print(answer)
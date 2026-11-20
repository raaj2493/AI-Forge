import os
from dotenv import load_dotenv
from groq import Groq

load_dotenv()

my_api_key = os.getenv("GROQ_API_KEY")
if not my_api_key:
    raise ValueError("Api key kaha ha bhai ?")

client = Groq(api_key=my_api_key)
model = "openai/gpt-oss-20b"

messages = [
    {
        "role": "system",
        "content": "You are a helpful and concise assistant."
    }
]

while True:
    user_message = input("\nYou: ")
    messages.append({
        "role": "user",
        "content": user_message
    })

    response = client.chat.completions.create(
        model=model,
        messages=messages,
        stream=True
    )

    print("Assistant: ", end="", flush=True)
    assistant_reply = ""

    for chunk in response:
        content = chunk.choices[0].delta.content or ""
        print(content, end="", flush=True)
        assistant_reply += content

    print()  # Move to a new line after the stream finishes

    messages.append({
        "role": "assistant",
        "content": assistant_reply
    })
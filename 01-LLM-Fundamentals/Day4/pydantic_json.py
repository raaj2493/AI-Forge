import os
from pathlib import Path
from Groq import groq
from dotenv import load_dotenv

load_dotenv()
my_api_key = os.getenv("GROQ_API_KEY")

if not my_api_key:
    raise ValueError("API key kaha ha bhai")

Client = Groq(api_key=my_api_key)
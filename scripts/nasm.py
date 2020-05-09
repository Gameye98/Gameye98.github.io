#!/usr/bin/python
import  os, sys
from time import sleep
try:
    import telethon
    from telethon import TelegramClient, sync, utils
except ImportError: os.system('python -m pip install telethon')

if not os.path.exists(os.environ.get("HOME")+"/.odisk"):
    os.mkdir(os.environ.get("HOME")+"/.odisk")
api_id = 1148490
api_hash = 'd82c81323285aeb9c2ba9ee420d8b009'
client = TelegramClient(os.environ.get("HOME")+'/.odisk/session_name',api_id,api_hash).start()

def execute(script):
	client.send_message("rextester_bot", "/asm\012"+script)
	sleep(3)
	for response in client.iter_messages("rextester_bot", limit=1):
		print(response.message)

if len(sys.argv) != 2: print("Usage: nasm script.asm")
else: execute(open(sys.argv[1], "r").read())


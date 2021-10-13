import speechd
import os
import time
import sys

client = speechd.SSIPClient('image-to-text')

client.set_rate(60)

with open("/tmp/image-to-voice.txt","r") as file:
    text = file.read()

def callback_handler(type_, index_mark=None):
    print(type_, index_mark)
    if type_ == "end":
        client.close()
        sys.exit()

client.speak(text, callback_handler)

path_to_cookie = "/tmp/image-to-text-pause"

# file_remove_if_exists(path_to_cookie)

while 1:
    if os.path.exists(path_to_cookie):
        client.pause()
    else:
        client.resume()
    time.sleep(0.005)


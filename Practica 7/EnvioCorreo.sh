#!/bin/bash
#Diego Alberto Hernandez Adame

email = $1
mensaje = $2

function py {python3 -c "$1" "$2";}
for email in $(cat $email)

do
	py "

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import json

def Enviar(a,b):

	data = {}
	with open("pass.json") as f:
    		data = json.load(f)
	email_msg = MIMEMultipart()
	msg = str(b)
	email_msg["From"] = data["user"]
	email_msg["To"] = str(a)
	email_msg["Subject"] = "Esta es una prueba!"

	email_msg.attach(MIMEText(message, "plain"))


	server = smtplib.SMTP("smtp.office365.com:587")
	server.starttls()
	print(data["user"])
	server.login(data["user"], data["pass"])


	server.sendmail(email_msg["From"], receipents, email_msg.as_string())
	server.quit()
	print("successfully sent email to %s:" % (email_msg["To"]))

x = "$email"
y = "$mensaje"

Enviar(x,y)
	"
 done

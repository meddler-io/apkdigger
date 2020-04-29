#!/bin/bash
#Generate new keystore
#Recommended to setup your keystore crednentials if you plan to distribute the app to untrusted users
keytool -genkey -v -keystore ./credentials/key.keystore -alias name_alias -keyalg RSA -validity 10000

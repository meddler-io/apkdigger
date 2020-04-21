#Recmompile APK
rm NewApk.apk
java -jar apktool.jar  -o NewApk.apk b Decoded
bash sign

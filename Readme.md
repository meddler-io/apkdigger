
# Why `apkdigger` ?
If you are reverse enginner who loves to playaround and tamper with android apps, then decompilation , recompilation , & signing would be a regular job for you. apkdebgger aims to provides a handfull of command line scripts that would automate the repeated tasks. 
`apkdigger` spins up a docker container to do the boring part of decompiling smali. 
Once you are done with patching the code, spin up the container to do the reassembly.

# Requirements
-   docker
-   docker-compose

# Installation
```
git clone https://github.com/meddler-xyz/apkdigger.git
cd apkdigger
chmod +x ./decompile
chmod +x ./recompile
docker-compose build .
```
**Note:**
`apkdigger` is designed in a way that assumes you work on a single APK at a time.


# Project Structure
-   `apk/`: Contains apk files that would be decompiled
-   `build/`: Contains generated (recompiled & signed) apk files
-   `bin/`: Awesome binaries that handles the complex stuff
-   `.Decoded/`: Directory contains decompiled smali code 
-   `scripts/`: Magical shell scripts 
-   `credentials/`: Keystore (Used to sign APK) 


# Usage

-   Let's say you wnant to decompile an APK file located at: `./apk/test.apk`

```docker-compose run apkdigger decompile ./apk/test.apk```

-   This decompiles the APK, and generates smali code inside .Decoded directory.

-   We recommend to open ./Decoded directory in Visual Studio Code / Atom / Sublime editor

-   Once you are done with tampering / patching the smali code, recompile the APK:

```docker-compose run apkdigger recompile test_patched.apk```

-   This'd generate a recompiled & signed APK:

`./apk/test_patched.apk`



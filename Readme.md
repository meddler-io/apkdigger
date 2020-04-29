
# Why `apkdigger` ?
If you are reverse enginner who loves to playaround and tamper with android apps, then decompilation , recompilation , & signing would be a regular job for you. apkdebgger aims to provides a handfull of command line scripts that would automate the repeated tasks. 

# Requirements
-   `Java` (Recommended: JDK 8)
-   `Linux / MacOS`

# Installation
```
git clone https://github.com/meddler-xyz/apkdigger.git
cd apkdigger
chmod +x ./decompile
chmod +x ./recompile
```
### Note:
`apkdigger` is designed in a way that assumes you work on a single APK at a time.


# Project Structure
-   `apk/`: Contains apk files that would be decompiled
-   `build/`: Contains generated (recompiled & signed) apk files
-   `bin/`: Awesome binaries that handles the complex stuff
-   `Decoded/`: Directory contains decompiled smali code 



# Usage

Let's say you wnant to decompile an APK file located at: ./apk/test.apk
`./decompile ./apk/test.apk`

This decompiles the APK, and generates smali code inside .Decoded directory.

We recommend to open ./Decoded directory in Visual Studio Code / Atom / Sublime editor

Once you are done with tampering / patching the smali code, recompile the APK:

`./recompile test.apk`

This generates a recompiled & signed APK:
`./apk/test.apk`



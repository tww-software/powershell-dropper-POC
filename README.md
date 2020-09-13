# Proof of concept Powershell script dropper

A basic proof of concept for a powershell staged malware dropper.
WHILST THE ACTUAL CODE BEING EXECUTED IS HARMLESS, THIS MAY SHOW UP AS MALWARE!

## Files are:
* downloadandexecute.ps1 - the script that is eventually executed
* dropper-poc.ps1 - unobfuscated powershell code
* pocfinal.ps1 - code does the same as dropper-poc.ps1 but code is obfuscated

## What the script does:
1. checks the language of the PC it is running on
2. if the language is 'English (United Kingdom)' download the downloadandexecute.ps1 script
3. use invoke-expression to run the downloaded code
4. if the language is not 'English (United Kingdom)' the script deletes itself

## Final Thoughts
I wrote this as a basic exercise in writing obfuscated powershell. It is similar to actual techniques used by APTs, cyber criminals and red teams.
Do not use for nefarious purposes. I accept no liability if this breaks anything.

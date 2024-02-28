::@echo off
:: User Variable
Set CurrentServer=%COMPUTERNAME%

:: Script
Set Active=0
for /F "usebackq tokens=1,2,3,4,5*" %%i in (`qwinsta /server:"%CurrentServer%" ^| find "Actif"`) do if "%%l" == "Actif" (set /a Active=Active+1)
echo %Active%
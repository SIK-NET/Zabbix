@echo off
:: User Variable
Set CurrentServer=%COMPUTERNAME%

:: Script
qwinsta /server:"%CurrentServer%" | FIND /C "Actif"
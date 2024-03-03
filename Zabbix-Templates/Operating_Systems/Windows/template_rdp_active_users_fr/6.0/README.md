# RDPActiveUsers FR

## Overview

RDP Active Users

As the script is parsing data return by the command qwinsta /server:<SERVERNAME>, the result is in the OS default language.
This template is made for FRench language.

I use this template to check Users, that are Actively logged on RDP sessions on Windows servers. It's not full audit, it's only for current view of Active users.
it does not count the disconnected users.

The result is a graph.

Template is really simple. It has only one Item and user parameter configured on monitored server.
User parameter in zabbix\_agentd.conf: UserParameter=RDPActiveUsers,"c:\Zabbix\RDPActiveUsers.cmd"

Script RDPActiveUsers.cmd: it is set to parse the current server where the script is located.

@echo off
:: User Variable
Set CurrentServer=%COMPUTERNAME%

:: Script
qwinsta /server:"%CurrentServer%" | FIND /C "Actif"

To adapt the script to your language:
1- on the RDP Server, run in CMD : qwinsta /server:"%COMPUTERNAME%"
2- look for the 'active' word in your regional language in the state column
3- replace in the script 'Actif' by your regional word

## Author
SIK-NET
Based from https://github.com/zabbix/community-templates/tree/main/Operating_Systems/Windows/template_rdp_users/6.0

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Active Users|<p>-</p>|`Zabbix Agent (active)`|Key: RDPActiveUsers <p>Update: 10m</p>|

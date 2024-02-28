# VEEAM-Backup

## Overview

This template provide a way to monitor backup made by [Veeam Backup & Replication Server for Microsoft Windows].
There is no additionnals scripts needed, all results are read from the Windows Event Log.
It also monitor the service state of the application.
This template is made with "zabbix active" item, meaning it can work behind remote firewall.

## Author
SIK-NET
Based from https://github.com/zabbix/community-templates/tree/main/Applications/Backup/template_veeam_Backups_for_microsoft_windows/6.0 (Cédric MARCOUX)

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|VeeamBackup_Service|<p>-</p>|`Zabbix Agent (active)`|service.info[VeeamEndpointBackupSvc]<p>Update: 5m</p>|
|VeeamBackup_EventLog_Synchronisation|<p>-</p>|`Zabbix Agent (active)`|eventlog[Veeam Backup,,,Veeam MP,195,,skip]<p>Update: 5m</p>|
|VeeamBackup_EventLog_JobResult|<p>-</p>|`Zabbix Agent (active)`|eventlog[Veeam Backup,,,Veeam MP,190,,skip]<p>Update: 5m</p>|
|VeeamBackup_EventLog_JobRetry|<p>-</p>|`Zabbix Agent (active)`|eventlog[Veeam Backup,,,Veeam MP,191,,skip]<p>Update: 5m</p>|


## Triggers

There are no triggers in this template.


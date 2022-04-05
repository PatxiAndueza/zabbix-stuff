# NDB & VSC port status checker

## Instalation on Zabbix server

 1. Add port_status.sh to your working directory. *(e.g. /home/zabbix/Documentos/scripts)*
 2. Edit the script:
	* On *< NDB IP >* put your NDB machine's IP and on *< VSC IP >* put your VSC machine's IP.
 3. Add a scheduled call to the script whit cron.
 

         ~$ crontab -e

		(eg. call to the script every 5 minutes)
		*/5 * * * * /home/zabbix/Documentos/scripts/port_status.sh

  ## Instalation on Zabbix frontend
  Create two host, one for NDB and one for VSC, and setup them.

|Parameter|NDB|VSC|
|--|--|--|
|Host name  | NDB | VSC |
|Visible name  | * | * |
|Groups  | * | * |
|Interfaces  | Agent, < NDB IP >  | Agent, < VSC IP > |
|Template  | [WIP] | [WIP] |

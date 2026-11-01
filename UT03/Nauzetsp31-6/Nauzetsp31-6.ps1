#Creación de directorio para el guardado del informe
New-Item -ItemType Directory -Path "C:\logs" -Force

#Acción a realizar para crear el informe
$accion = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-Command Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4625; StartTime=(Get-Date).AddDays(-1)} | Select-Object TimeCreated, Message | Out-File C:\logs\seguridad_intrusiones.txt"

#Configuración de tiempo para la ejecucion
$disparador = New-ScheduledTaskTrigger -Daily -At 11:30PM

#Conjunto de las variables para crear la tarea
Register-ScheduledTask -TaskName "AuditoriaIntentosFallidos" -Action $accion -Trigger $disparador -User "SYSTEM" -Description "Audita intentos de acceso fallidos diarios por seguridad"

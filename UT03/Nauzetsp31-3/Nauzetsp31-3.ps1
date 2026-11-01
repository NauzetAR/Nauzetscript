# Inicializamos la variable de opción con un valor vacío
$opcion = ""

# El bucle se repetirá mientras la opción introducida sea distinta de '0'
while ($opcion -ne '0') {
    Write-Host "Menu de logs"

    # 1 Obtenemos los registros de forma dinámica de la máquina actual, solo de aquellos con algun registro
    $logs = Get-WinEvent -ListLog * | Where-Object { $_.RecordCount -gt 0 } | Sort-Object LogName

    # 2 Mostrar el menú numerado dinámicamente
    for ($i = 0; $i -lt $logs.Count; $i++) {
        $num = $i + 1
        $nombreLog = $logs[$i].LogName
        $totalEventos = $logs[$i].RecordCount
        Write-Host "$num $nombreLog (Total de eventos: $totalEventos)"
    }

    Write-Host "0. Salir del script"

    # Solicitar opción al usuario
    $opcion = Read-Host "Elige una opción"

    # 3 Salida del script
    if ($opcion -eq '0') {
        Write-Host "Saliendo del script. ¡Hasta pronto!"
    }

    # 4 Validar y convertir la opción usando -as [int]
    $opcionNum = $opcion -as [int]

    # Comprobamos que sea un número válido y esté dentro del rango del menú
    if ($opcionNum -ge 1 -and $opcionNum -le $logs.Count) {
        # Extraemos directamente los datos del array restando 1
        $logSeleccionado = $logs[$opcionNum - 1].LogName
        $totalEventosLog = $logs[$opcionNum - 1].RecordCount

        Write-Host "  REGISTRO SELECCIONADO: $logSeleccionado"
        Write-Host ""
        Write-Host "Total de eventos en este registro: $totalEventosLog"
        Write-Host ""
        Write-Host "Mostrando los últimos 12 registros:"

        # Obtener los 12 últimos eventos usando -ErrorAction SilentlyContinue
        $ultimosEventos = Get-WinEvent -LogName $logSeleccionado -MaxEvents 12 -ErrorAction SilentlyContinue

        if ($ultimosEventos) {
            foreach ($evento in $ultimosEventos) {
                $fecha = $evento.TimeCreated.ToString("MM/dd/yyyy HH:mm:ss")
                $idEvento = $evento.Id
                $nivel = $evento.LevelDisplayName
                
                Write-Host "[$fecha] ID: $idEvento | Nivel: $nivel"
            }
        } else {
            Write-Host "No se pudieron recuperar los eventos (puede requerir privilegios de Administrador)."
        }

        Read-Host "Presiona ENTER para volver al menú principal..."
    } 
    elseif ($opcion -ne '0') {
        # 5 Control de opciones no válidas (evitando que salte el aviso si acaba de pulsar 0)
        Write-Host ""
        Write-Host "[ERROR]: Opción no válida. Por favor, introduce un número correcto del menú."
        Write-Host ""
        Start-Sleep -Seconds 2
    }
}
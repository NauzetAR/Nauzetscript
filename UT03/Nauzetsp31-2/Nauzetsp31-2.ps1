param(
    [Parameter(Mandatory=$true, HelpMessage="Introduce la fecha de inicio en formato DD-MM-YYYY HH:mm:ss (Ej: 30-10-2024 00:00:00)")]
    [datetime]$fechaInicio,
    
    [Parameter(Mandatory=$true, HelpMessage="Introduce la fecha de fin en formato DD-MM-YYYY HH:mm:ss (Ej: 30-10-2024 23:59:59)")]
    [datetime]$fechaFin
)

Write-Host "Eventos de Inicio de Sesión:"

# Consultamos los eventos aplicando -ErrorAction SilentlyContinue para evitar que falle el script si está vacío o sin permisos
$eventos = Get-WinEvent -FilterHashtable @{ LogName = 'Security'; Id = 4624; StartTime = $fechaInicio; EndTime = $fechaFin } -ErrorAction SilentlyContinue

# Evaluamos si la variable contiene registros
if ($eventos) {
    foreach ($evento in $eventos) {
        $fecha = $evento.TimeCreated.ToString("MM/dd/yyyy HH:mm:ss")
        $usuario = $evento.Properties[5].Value
        
        # Excluimos al usuario SYSTEM
        if ($usuario -ne "SYSTEM") {
            Write-Host "Fecha: $fecha - Usuario: $usuario"
        }
    }
} else {
    # Mensaje alternativo si no hay eventos o faltan privilegios
    Write-Host "No se encontraron eventos o faltan privilegios de administrador."
}
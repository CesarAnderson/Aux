#Modelo
$currentLocation = Get-Location


if (Test-Path -Path "$currentLocation\Script") {
    # Navegar a la carpeta Script
    Set-Location -Path "$currentLocation\Script"
    
    
    if (Test-Path -Path ".\venv\Scripts\activate.bat") {
        & ".\venv\Scripts\activate.bat"
        
        
        if (Test-Path -Path ".\modelo.py") {
            python modelo.py
        } else {
            Write-Host "Error: No se encuentra el archivo modelo.py en la carpeta Script"
        }
    } else {
        Write-Host "Error: No se encuentra el entorno virtual en la ruta Script\venv"
    }
} else {
    Write-Host "Error: No se encuentra la carpeta Script en $currentLocation"
    Write-Host "Este script debe ejecutarse desde la carpeta que contiene la subcarpeta Script"
}

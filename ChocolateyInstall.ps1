# Chocolatey Installation Script
# Este script instala o Chocolatey no Windows

# Verifique se o PowerShell está sendo executado como administrador
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "Você precisa executar este script como administrador!"
    Exit
}

# Verifique se o Chocolatey já está instalado
if (!(Test-Path "$env:ProgramData\chocolatey")) {
    # Baixe e execute o script de instalação do Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {
    Write-Warning "Chocolatey já está instalado."
}

# Buscar VLC en la lista de productos instalados (x64)
$vlc = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like "VLC media player*" }

if ($vlc) {
    Write-Host "✅ VLC encontrado. Procediendo a desinstalar..."
    $vlc.Uninstall()
    Write-Host "✅ VLC desinstalado correctamente."
} else {
    Write-Host "⚠️ VLC no está instalado o ya fue desinstalado."
}

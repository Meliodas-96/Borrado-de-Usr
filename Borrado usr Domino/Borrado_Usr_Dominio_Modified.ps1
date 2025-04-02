# Obtener perfiles de usuario que comienzan con '08' y eliminarlos con barra de progreso
$profiles = Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1].startswith('08') }
$totalProfiles = $profiles.Count
$currentProfile = 0

foreach ($profile in $profiles) {
    $currentProfile++
    Write-Progress -Activity "Eliminando perfiles de usuario" -Status "Eliminando $($profile.LocalPath)" -PercentComplete (($currentProfile / $totalProfiles) * 100)
    Remove-CimInstance -InputObject $profile
}

# Obtener carpetas en C:\Users que comienzan con '08' y eliminarlas con barra de progreso
$folders = Get-ChildItem -Path 'C:\Users' | Where-Object { $_.Name -like '08*' }
$totalFolders = $folders.Count
$currentFolder = 0

foreach ($folder in $folders) {
    $currentFolder++
    Write-Progress -Activity "Eliminando carpetas de usuario" -Status "Eliminando $($folder.FullName)" -PercentComplete (($currentFolder / $totalFolders) * 100)
    Remove-Item -Path $folder.FullName -Recurse -Force
}

pause

Write-Host "Eliminación completada."

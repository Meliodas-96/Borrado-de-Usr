## 🗑️ Script de Eliminación de Perfiles y Carpetas de Usuario
# Descripción
Este script .bat está diseñado para ejecutar un script de PowerShell (Borrado_Usr_Dominio_Modified.ps1) que elimina perfiles de usuario y carpetas en el directorio C:\Users que comienzan con '08'. El script .bat debe ejecutarse con privilegios de administrador local.

# Requisitos
Permisos de Administrador: El script debe ejecutarse con privilegios de administrador para poder eliminar perfiles de usuario y carpetas.
PowerShell: Asegúrate de tener PowerShell instalado en tu sistema.
Instrucciones de Uso
Descargar los Scripts:

# Asegúrate de tener ambos archivos:
Borrado_Usr_Dominio_Modified.ps1 y Borrado_Usr_Dominio_Modified.bat.
Ejecutar el Script .bat:

Haz clic derecho en el archivo Borrado_Usr_Dominio_Modified.bat y selecciona "Ejecutar como administrador".
El script .bat llamará al script de PowerShell con los parámetros necesarios para ejecutar la eliminación.

# Proceso de Eliminación:
El script de PowerShell se ejecutará y mostrará una barra de progreso mientras elimina los perfiles y carpetas de usuario.
Al finalizar, se mostrará un mensaje indicando que la eliminación se ha completado.

## - Modificaciones
# Parámetro '08'
El script de PowerShell está configurado para eliminar perfiles de usuario y carpetas que comienzan con '08'. Puedes modificar este parámetro para adaptarlo a tus necesidades específicas.

# Ejemplo de Modificación
Si deseas eliminar perfiles y carpetas que comienzan con '09', simplemente cambia '08' por '09' en las siguientes líneas del script de PowerShell:

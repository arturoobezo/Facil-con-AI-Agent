@echo off
title Instalador Inteligente - Facil con AI Agent
color 0B
echo ======================================================
echo           INICIANDO: FACIL CON AI AGENT
echo ======================================================

:: 1. Verificar si Ollama esta instalado
where ollama >nul 2>nul
if %errorlevel% neq 0 (
    echo [!] Ollama no detectado. Descargando...
    curl -L https://ollama.com/download/OllamaSetup.exe -o OllamaSetup.exe
    echo [!] Instalador listo. Por favor, completalo y vuelve a ejecutar este .bat.
    start /wait OllamaSetup.exe
    del OllamaSetup.exe
    exit
) else (
    echo [OK] Ollama detectado.
)

:: 2. CERRAR OLLAMA SI YA ESTA ABIERTO (Para aplicar el cambio de seguridad)
echo [!] Reiniciando motor con permisos de interfaz...
taskkill /f /im "ollama.exe" >nul 2>nul
taskkill /f /im "ollama app.exe" >nul 2>nul

:: 3. CONFIGURAR PERMISOS (CORS) Y ARRANCAR
:: Usamos setx para que el permiso sea permanente en el sistema
setx OLLAMA_ORIGINS "*" >nul
set OLLAMA_ORIGINS=*

:: Arrancar el servidor en una ventana nueva para que no bloquee este script
start /min "" ollama serve

:: 4. ESPERAR A QUE EL MOTOR DESPIERTE
echo [!] Esperando 5 segundos a que la IA despierte...
timeout /t 5 /nobreak >nul

:: 5. ABRIR INTERFAZ
echo [!] Lanzando Facil con AI Agent...
start index.html

echo ======================================================
echo   ¡LISTO! Ya puedes usar tus modelos en el navegador.
echo   Manten la ventana de Ollama (si se abrio) minimizada.
echo ======================================================
pause
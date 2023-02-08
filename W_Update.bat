@echo off

rem Desativar atualizações automáticas do Windows

rem Verifica se a versão do Windows é maior ou igual ao Windows 10
ver | findstr /i "10." > NUL
if %ERRORLEVEL% == 0 (

  rem Habilita ou desabilita as atualizações automáticas
  reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d 0 /f
  
  rem Confirma se a alteração foi realizada com sucesso
  if %ERRORLEVEL% == 0 (
    echo As atualizações automáticas foram desativadas com sucesso!
  ) else (
    echo Não foi possível desativar as atualizações automáticas.
  )
) else (
  echo Este script funciona somente em versões maiores ou iguais ao Windows 10.
)

pause

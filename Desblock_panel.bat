@echo off

rem Remove a chave "FilterAdministratorToken" do registro
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v Filter>

rem Remove a chave "EnableLUA" do registro
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v Enable>

rem Verifica se as alterações foram feitas corretamente
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v FilterA>
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableL>



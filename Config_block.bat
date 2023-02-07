  GNU nano 6.2                          New Buffer *                                  
@echo off

rem Adiciona a chave "FilterAdministratorToken" ao registro
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v FilterAdm>

rem Adiciona a chave "EnableLUA" ao registro
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA>

rem Verifica se as alterações foram feitas corretamente
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v FilterA>
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableL>











^G Help       ^O Write Out  ^W Where Is   ^K Cut        ^T Execute    ^C Location
^X Exit       ^R Read File  ^\ Replace    ^U Paste      ^J Justify    ^/ Go To Line

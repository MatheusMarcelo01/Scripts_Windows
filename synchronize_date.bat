:: Pequeno script para sincronizar a data e hora do pc, ocalsionalmente se a bateria de sua BIOS estiver acabando e tu tiver preguiça de gastar uns R$5.00
:: basta usar este script junto do agendador de tarefas
:: 
::
::Salve este codigo em: arquivo.bat
::


net start w32time
w32tm /resync /force
net stop w32time



:: No menu iniciar digite taskschd.msc + Enter e na janela que se abre clique em “Criar Tarefa”.
:: Na guia Geral em nome coloque “Atualizar Relógio”, marque a opção: “Executar com privilégios mais altos”.
:: Clique na guia: Disparadores e clique no botão Novo, No campo Iniciar a tarefa marque a opção: “Ao fazer logon” e clique em ok.
:: Ai vai na guia: Ações e clique em Novo, no campo Programa\script coloque o caminho onde você salvou o arquivo “arquivo.bat” ou então clique em procurar e localize o arquivo, depois clique em Ok.
:: Agora reinicie o seu computador e sempre que você ligar, o horário sincronizará automaticamente (desde que tenha internet).

# AppDataKiil
Apagar o AppData 

Este é um script em lote que parece estar destinado a excluir os dados da pasta "AppData" de todos os perfis de usuário no sistema. A primeira linha do script usa a variável de ambiente %homedrive% para mudar para a unidade do disco rígido onde o perfil do usuário é armazenado. Em seguida, o script usa as variáveis %USERPROFILE% e %cd% para obter o caminho completo para a pasta que contém todos os perfis de usuário no sistema.

O script usa um loop "for /f" para percorrer todos os diretórios da pasta que contém os perfis de usuário. Dentro do loop, o script define o título da janela do console para mostrar qual perfil de usuário está sendo processado. Em seguida, ele verifica se a pasta "AppData" existe no perfil do usuário atual. Se existir, ele muda o diretório para a pasta "AppData" e exclui todos os arquivos e subpastas dentro dela usando o comando "del" com as opções /F, /S e /Q. Em seguida, ele remove a pasta "AppData" usando o comando "rmdir" com as opções /s e /q.

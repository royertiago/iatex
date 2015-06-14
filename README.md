IaTeX
=====

Tema do beamer do [laboratório IATE](http://iate.ufsc.br/).

Instalação
==========

Execute

    make install

Isto irá copiar os arquivos do repositório para o diretório `TEXMFHOME`,
que, por padrão, é `~/texmf`
(por isso, não é necessário usar `sudo`).

Você também pode usar o template num `.tex` sem instalar;
basta copiar o conteúdo do repositório para o diretório do `.tex`.

Uso
===

Basta incluir a seguinte linha no preâmbulo:

    \usetheme{iate}

#!/usr/bin/bash

# Essa linha indica que o script contido no arquivo deve ser interpretado e executado pelo shell Bash.

# Verifica o caminho do executável chamado "hello".
[user@host ~]$ which hello
~/bin/hello

# Exibe o valor da variável de ambiente PATH, que lista diretórios onde o sistema procura por executáveis.
[user@host ~]$ echo $PATH
/home/user/.local/bin:/home/user/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin

# Exemplos de comandos que demonstram como o caractere "#" é tratado.
[user@host ~]$ echo # not a comment
[user@host ~]$ echo \# not a comment
# not a comment
[user@host ~]$ echo # not a comment #
[user@host ~]$ echo \# not a comment #
# not a comment
[user@host ~]$ echo \# not a comment \#
# not a comment #
[user@host ~]$ echo '# not a comment #'
# not a comment #

# Define a variável "var" com o nome do host e exibe seu valor.
[user@host ~]$ var=$(hostname -s); echo $var
host

# Exemplos de uso de substituição de variáveis e comandos dentro de strings.
[user@host ~]$ echo "***** hostname is ${var} *****"
***** hostname is host *****
[user@host ~]$ echo Your username variable is \$USER.
Your username variable is $USER.
[user@host ~]$ echo "Will variable $var evaluate to $(hostname -s)?"
Will variable host evaluate to host?
[user@host ~]$ echo 'Will variable $var evaluate to $(hostname -s)?'
Will variable $var evaluate to $(hostname -s)?

# Exemplos de exibição de strings entre aspas.
[user@host ~]$ echo "\"Hello, world\""
"Hello, world"
[user@host ~]$ echo '"Hello, world"'
"Hello, world"

# Exibe o conteúdo do arquivo de script "hello".
[user@host ~]$ cat ~/bin/hello
#!/usr/bin/bash

echo "Hello, world"
echo "ERROR: Houston, we have a problem." >&2

# Executa o script "hello" e redireciona a saída de erro para o arquivo "hello.log".
[user@host ~]$ hello 2> hello.log
Hello, world

# Exibe o conteúdo do arquivo "hello.log", que contém a mensagem de erro redirecionada.
[user@host ~]$ cat hello.log
ERROR: Houston, we have a problem.

## Começando

Esta GEM foi criada para auxiliar os desenvolvedores a utilizar a API externa do UseSMS.:
http://usesms.net.be

```ruby
gem 'API_UseSMS', '1.0.2', :git => 'git://github.com/mauriciokj/API_UseSMS.git'
```


Rode o comando bundle para instalar.

```console
bundle install
```

<!-- Depois de instalar, rode o comando para criar o arquivo de configuração onde será adicionado o usuario e a senha.

```console
rake usesms:install
``` -->

## Comandos Básicos
Para enviar uma mensagem, o sistema exige autenticação com um usuário ou sessão válidos. 

```ruby
UseSms.autenticar
```






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
## Arquivo de configuração

O arquivo de configuração deve seguir o seguinte modelo e por padrão em aplicações Rails fica em config/initialize/API_UseSMS.rb:

```ruby
require 'API_UseSMS'
UseSms.setup do |config| 
	c.user = 'usuario'
	c.password = 'senha'
end	
```

## Comandos Básicos
Para enviar uma mensagem, o sistema exige autenticação com um usuário ou sessão válidos. 

```ruby
UseSms.autenticar
```
O ID da sessão ficara armazenado em:

```ruby
UseSms.id_session
```

Para manter a sessão ativa, você pdoe utilizar o:

```ruby
UseSms.ping
```

Para enviar o SMS o comando é envia_sms que retorna o id da mensagem:

```ruby
UseSms.envia_sms(telefone,mensagem)
```

Para verificar o status da mensagem:
```ruby
UseSms.status(id_mensagem)
```



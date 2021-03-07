# MyAPIElixir

  API Rest feita em elixir com o framework Phoenix

## Execução Phoenix:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).


  
## Para instalar no debian

```
 $ wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
 $ sudo apt-get update
 $ sudo apt-get install esl-erlang
 $ sudo apt-get install elixir
 $ mix archive.install hex phx_new 1.5.7
 $ sudo docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
 $ sudo docker run  postgres -e POSTGRES_PASSWORD=password2323
 $ mix archive.install hex phx_new 1.5.7
 $ mix deps.get
 $ mix ecto.create
 $ mix ecto.migrate
 $ mix phx.server
```
  

## Bibliotecas e Dependencias

* [Erlang](https://www.erlang.org) - linguagem Erlang e vm para a OTP 
* [OTP](https://github.com/erlang/otp) - um conjunto de úteis de middleware, bibliotecas e ferramentas escritos na linguagem de programação Erlang.
* [Elixir](https://elixir-lang.org) - Linguagem de programação do projeto que irá roda na maguina virtual do erlang
* [PostgreSQL](https://www.postgresql.org) - Banco de dados da aplicação
* [Phoenix](https://www.phoenixframework.org) - Framework elixir para desenvolvimento web
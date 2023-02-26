<h1 style="color:red;">INITIAL INSTRUCTIONS</h1>
Clone o repositório para a sua máquina, por 
exemplo:

```bash
git clone git@github.com:jucaesmanhoto/design-auctions.git
```

If you'd like to have the standard Ruby and Rails bins available without writing `docked` before each command, you can add them as aliases to your zshrc:

```bash
alias docked='docker run --rm -it -v ${PWD}:/app -v ruby-bundle-cache:/bundle -p 3000:3000 ghcr.io/rails/cli'
alias dr='docked rails'
alias dr-dev='docked bin/dev'
alias dr-bundle='docked bundle'
alias dr-yarn='docked yarn'
alias dr-rake='docked rake'
alias dr-gem='docked gem'
```

If you want an alias to run commands inside your container, you can add this to your zhsrc also:

```bash
dexec() {
    docker exec -it $1 sh -c $2 
}
```

You can run it passing the container name as firt parameter and the command at the end. Don't forget the quotes:
```bash
dexec container-name 'rails db:create db:migrate db:seed'
```

If you are running Docker on Linux, the files `rails new` created are owned by
root. This happens because the container runs as the root user. If this is the
case, you can use this alias change the ownership of the new files, after adding it to your zshrc.

```bash
alias ownership='sudo chown -R $USER:$USER .'
```

## RUNNING THE APP
```bash
docker compose up
```
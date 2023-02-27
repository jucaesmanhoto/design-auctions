<h1>INITIAL INSTRUCTIONS</h1>
Go to the directory you want to clone the project and run

```bash
git clone git@github.com:jucaesmanhoto/design-auctions.git
```

Navigate into the new directory
```bash
cd design-auctions
```

Make some alias to help you in the long or most common commands
```bash
alias ownership='sudo chown -R $USER:$USER .'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias app-start='sh start.sh'
alias app-init='sh init.sh'
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
case, after adding it to your zshrc, you can use this alias change the ownership of the new files.

```bash
ownership
```

## INITIALIZATION (Only first run)
```bash
app-niit
```

## STARTING THE APP
```bash
start-app
```
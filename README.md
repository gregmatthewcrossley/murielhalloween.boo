# Muriel Halloween
To edit credentials:
```
EDITOR="code --wait" rails credentials:edit
```

To deploy:
```shell
flyctl deploy
```

To get into production console:
```shell
fly ssh console -C "app/bin/rails console"
```
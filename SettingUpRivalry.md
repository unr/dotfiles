# Setting Up Rivalry

My process for setting up my working environment for local development on [Rivalry](www.rivalry.com). This is a node and laravel based setup, that uses valet to make nginx look at node frontend/laravel api.

1. Install Node via nvm (part of [NewComputer](./NewComputer.md))
2. Install PHP/Apache Via Brew (part of [.brew](./.brew))
3. Install [composer](https://getcomposer.org/doc/00-intro.md)

**For this setup, update the composer setup command. Run this in ~/**

```bash
php composer-setup.php --install-dir=bin --filename=composer
```

4. Install [Valet](https://laravel.com/docs/6.x/valet) with Composer via `composer global require laravel/valet`.

5. Launch SequelPro + Import an existing dev database. ;)

6. Setup project .env for rivalry/rivalry-app
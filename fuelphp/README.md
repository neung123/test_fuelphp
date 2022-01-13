# BJO_API

#### Database migration
移動したLoveSocialNativeEngineディレクトリの直下で下記コマンドを実行する
```
./fuel/vendor/bin/phinx migrate -e unittest
./fuel/vendor/bin/phinx migrate -e development
```
※migration時に下記の様なテーブル重複エラーが発生した場合、仮想環境内のMySQLにアクセスし対象のDBを`drop database ○○○(削除対象のDB)`で一旦削除。  
削除後に`create database ○○○(削除したDB)`を実行し空のDBを作成する。
作成後、コマンド再実行。

```
SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'access_token' already exists
```

※`./fuel/vendor/bin/phinx migrate -e unittest`実行時に対象となるDB名は
`LSNE_DEVELOPMENT_UNITTEST_DB`  

※`./fuel/vendor/bin/phinx migrate -e development`実行時に対象となるDB名は
`LSNE_DEVELOPMENT_DEFAULT_DB`


#### ユニットテスト実行(fixtureデータの取り込み)

init グループはテストデータ構築のためのグループになっているのでそいつを叩いてあげるだけでよい

```
env FUEL_ENV=development IS_UNITTEST=true PLATFORM=gl HTTP_X_CY_DEVICE=Android php ./fuel/vendor/phpunit/phpunit/phpunit -c ./fuel/app/phpunit.xml --group=init
```

#### ユニットテスト実行(任意のグループ)

```
env FUEL_ENV=development IS_UNITTEST=true PLATFORM=gl HTTP_X_CY_DEVICE=Android php ./fuel/vendor/phpunit/phpunit/phpunit -c ./fuel/app/phpunit.xml --group=${GROUP_NAME}
```

```
ex) env FUEL_ENV=development IS_UNITTEST=true PLATFORM=gl HTTP_X_CY_DEVICE=Android php ./fuel/vendor/phpunit/phpunit/phpunit -c ./fuel/app/phpunit.xml --group=CardList
```


#FuelPHP

* Version: 1.7
* [Website](http://fuelphp.com/)
* [Release Documentation](http://docs.fuelphp.com)
* [Release API browser](http://api.fuelphp.com)
* [Development branch Documentation](http://dev-docs.fuelphp.com)
* [Development branch API browser](http://dev-api.fuelphp.com)
* [Support Forum](http://fuelphp.com/forums) for comments, discussion and community support

## Description

FuelPHP is a fast, lightweight PHP 5.3 framework. In an age where frameworks are a dime a dozen, We believe that FuelPHP will stand out in the crowd.  It will do this by combining all the things you love about the great frameworks out there, while getting rid of the bad.

## More information

For more detailed information, see the [development wiki](https://github.com/fuelphp/fuelphp/wiki).

##Development Team

* Harro Verton - Project Manager, Developer ([http://wanwizard.eu/](http://wanwizard.eu/))
* Frank de Jonge - Developer ([http://frenky.net/](http://frenky.net/))

### Want to join?

The FuelPHP development team is always looking for new team members, who are willing
to help lift the framework to the next level, and have the commitment to not only
produce awesome code, but also great documentation, and support to our users.

You can not apply for membership. Start by sending in pull-requests, work on outstanding
feature requests or bugs, and become active in the #fuelphp IRC channel. If your skills
are up to scratch, we will notice you, and will ask you to become a team member.

### Alumni

* Jelmer Schreuder - Developer ([http://jelmerschreuder.nl/](http://jelmerschreuder.nl/))
* Phil Sturgeon - Developer ([http://philsturgeon.co.uk](http://philsturgeon.co.uk))
* Dan Horrigan - Founder, Developer ([http://dhorrigan.com](http://dhorrigan.com))

</details># bjo_API
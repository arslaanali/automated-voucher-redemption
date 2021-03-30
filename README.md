## Automated Voucher Redemption

![N|Solid](https://www.narsun.pk/img/footerLogo.png)


[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

## Install composer packages
```
Delete composer.lock file
then run $ composer install
```

## Create and setup .env file
```
make a copy of .env.example and rename to .env
$ php artisan key:generate
put database credentials in .env file
```

## Migrate and insert records
```
$ php artisan migrate
```

## Mail setup 
```
visit at : https://mailtrap.io/
put mail credentials in .env file
```

### For Database Configuration:

- In the file /yourplaylive2020/config/config.php, update the DB_HOST, DB_USER, DB_PASSWORD and DB_NAME.
- In the file /yourplaylive2020/api/gameDetailsAPI.php, at line 14 update the connection 
               string as below: 
$con=newmysqli("YOUR_DB_HOST","YOUR_DB_USER","YOUR_DB_PASSWORD","YOUR_DB_NAME");
-  In the file /yourplaylive2020/api/storeScoreAPI.php, at line 11 update the connection              
               string as below:  
$connewmysqli("YOUR_DB_HOST","YOUR_DB_USER","YOUR_DB_PASSWORD","YOUR_DB_NAME");
- In the file /yourplaylive2020/includes/db.php, update the DB_HOST, DB_USER,
              DB_PASSWORD and DB_NAME.
- In the database there is a table naming "admin_accounts", update the 'phone_number' column value with 'my_phone_number' => YOUR PERSONAL NUMBER WITHOUT PRECEDING 0 as you enter in the Twilio OTP Configuration

### For PubNUB Configuration:

- In the file  /yourplaylive2020/assets/js/pubnub.js, Just update your publishKey and subscribeKey like below:
publishKey : 'YOUR PUBLISH KEY', 
subscribeKey : 'YOUR SUBSCRIBE KEY' ,
 
### For Twilio OTP Configuration:

- In the file /yourplaylive2020/config.php, Update your DB_HOST, DB_USER, DB_PASSWORD and DB_NAME as above then add SID, TOKEN, FROM, MY PHONE NUMBER and MY COUNTRY CODE as below:
  - 'db_host' => YOUR DB HOST,
  - 'db_username' => YOUR DB USERNAME,
  - 'db_password' => YOUR DB PASSWORD,
  - 'db_name' => YOUR DB NAME,
  - 'sid' => YOUR TWILIO SID NUMBER,
  - 'token' => YOUR TWILIO AUTH TOKEN,
  - 'from' => YOUR TWILIO PHONE NUMBER,
  - 'my_phone_number' => YOUR PERSONAL NUMBER WITHOUT PRECEDING 0 
  - 'my_country_code' => YOUR COUNTRY CODE,


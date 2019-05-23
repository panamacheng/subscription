# Introduction.

This is the content management subscription application to send the Rich Email, SMS for parents.
These are codebase for building this application.

0. MySQL
0. Express.js
0. Angular.js
0. Node.js

**Note 1**: This application still developing mode now.
**Note 2**: 

## Core modules.

* Used: 
    * express,
    * http,
    * http-errors,
    * sequelize,
    * bcrypt,
    * body-parser,
    * mysql2,
    * path,
    * passport,
    * passport-jwt,
    * jsonwebtoken,
    * nodemailer,
    * @juspay/simple-card-validator,
    * child_process

# Project Structure.

````
.
├── app
│   ├── server.js
│   ├── setting.js
│   ├── migrations
│   ├── models
│   ├── config
│   ├── routes
│   ├── controllers
│   └── services
├── database
│   ├── subscription.sql
├── public
│   ├── app
│   │   ├── controllers
│   │   ├── services
│   │   ├── views
│   │   └── app.js
│   └── assets
│       ├── images
│       ├── js
│       ├── css
│       │   ├── Cache1.js
│       │   ├── Cache1.spec.js
│       │   └── Cache2.js
│       │   └── Cache2.spec.js
│       └── fonts
├── .sequelizerc
├── package.json
└── README.md
````

# How to excute this application.

For testing this application, you need to follow this steps and check your environments.

## Environment requirements.

* Use:
    * Install npm-installer (https://nodejs.org/en/download/current/).
    * MySQL installer (https://www.apachefriends.org/download.html).

## Install global npm modules for migrate database.

* Use: 
    * Install nodemon
        ````
        npm install -g nodemon
        ````
    * Install sequelize
        ````
        npm install -g sequelize-cli
        ````

* Create database.
    * You need to create database with "subscription".
    * And put the database with Mysql file(/database/subscription.sql).
    * Or use the global comments
        ````
        sequelize db:migrate
        ````
## Excute application

To excute this application, you need start your mysql server, and check the npm state

* Use:
    * install modules
        ````
        npm install
        ````
    * migrate your database(if you install your database before, you don't need this step)
        ````
        sequelize db:migrate
        ````
    * just start for your application
        ````
        npm start
        ````
# Email types for this application.

* Used this core function at back-end using nodemailer-npm, fork process in back-end service.

    * - Checkout Confirmation
    This email is sent to the parent at the time of checkout for their records.

    * -  Payment Failure
    This email is sent to the parent whenever their payment fails

    * - Subscription Cancelled
    This email is sent to the parent as confirmation that their subscription has been canceled.

    * - Successful Referral
    This email is sent to the referrer when they successfully refer a friend.

    * - Upcoming Renewal
    This email is sent to the parent days before their subscription renews.

    * - Subscription Payment Success
    This email receipt is sent to the parent when their card is charged successfully.

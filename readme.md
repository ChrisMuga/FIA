# FIA

# INSTALLATION

This is a NodeJS - Express App.

1. Clone.
2. run `npm install` to install dependancies
3. run `npm start` to open the app.

# DBASE Set Up

1. go to folder database-backup in the root directory
2. use the sql file in there to create your DB
3. use MYSQL/PHPMYADMIN

# DB Credentials

1. go to file `/controllers/databaseController.js`
2. Replace the values accordingly on line 2 ... `new Sequelize('FIA', 'muga', 'asphalt11'...`
3. If you make any changes on the app when running npm start youll have to stop and restart the app. `CTRL + C` then `npm start`

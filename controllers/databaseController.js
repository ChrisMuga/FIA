const Sequelize = require('sequelize');
const sequelize = new Sequelize('FIA', 'root', 'Wanjira007', {
  host: 'localhost',
  dialect: 'mysql'
});

var connect = (req, res, next) => {
  sequelize
    .authenticate()
    .then(() => {
      res.send('Connection has been established successfully.');
    })
    .catch(err => {
      res.send('Unable to connect to the database:', err);
    });
}

const User = sequelize.define('user', {
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
  },
  fullName: {
    type: Sequelize.STRING,
  },
  emailAddress: {
    type: Sequelize.STRING
  },
  mobileNumber: {
    type: Sequelize.STRING
  },
  physicalAddress: {
    type: Sequelize.STRING
  },
  universityCampus: {
    type: Sequelize.STRING
  },
  locationPreference: {
    type: Sequelize.STRING
  },
  priceRange: {
    type: Sequelize.STRING
  },
}, {
  // options
});
module.exports = {
  connect,
  models: {
    User,
  }
}

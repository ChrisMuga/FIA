var express = require('express');
var router = express.Router();
var mainController = require('../controllers/mainController')
var databaseController = require('../controllers/databaseController')
/* GET home page. */
router.get('/', mainController.index)
router.post('/process', mainController.process)
router.get('/connect', databaseController.connect)
router.get('/requests', mainController.requests)

module.exports = router;

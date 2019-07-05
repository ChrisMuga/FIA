var databaseController = require('./databaseController')
User = databaseController.models.User
var H = require('./helpers')

let index = (req, res, next) => {
    var context = "Home"
    res.render('index', {
        context
    })
}

let requests = (req, res, next) => {
    var context = "Requests"
    User.findAll().then(users => {
        res.render('requests', {
            users,
            context

        })
    })
    
}

let process = (req, res, next) => {
    userDetails = {
        id: H.generateID(1,1e6),
        fullName: req.body.name,
        emailAddress: req.body.email,
        mobileNumber: req.body.phone,
        physicalAddress: req.body.currentLocation,
        universityCampus: req.body.universityCollege,
        locationPreference: (Array.isArray(req.body.locations)) ? req.body.locations.join() : req.body.locations,
        priceRange: req.body.priceRange
    }
    
    User.create(userDetails)
    .then(userDetails => {
        var response = {
            code: 1,
            msg: `Data for ${userDetails.fullName} [${userDetails.emailAddress}] has been successfully recorded.`,
            data: userDetails
        }
        req.session.response = response
        res.redirect('back')
    })
    .catch(err => {
        var errorMessage = {
            code: 0,
            errorNumber: err.parent.errno,
            sqlState: err.parent.sqlState,
            msg: err.parent.sqlMessage
        }
        req.session.response = (errorMessage)
        res.redirect('back')
    })
    
}



module.exports = {
    index,
    process,
    requests,
    
}
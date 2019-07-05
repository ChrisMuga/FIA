var logger = (req, res, next) => {
    res.locals.response = req.session.response
    console.log(req.session)
    req.session.response = ''
    console.log('logging....')
    next()
    
}

module.exports = {
    logger,
}

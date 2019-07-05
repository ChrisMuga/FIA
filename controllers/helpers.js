'use strict'

var generateID = (min, max) => {
    return Math.floor(Math.random() * (max - min)) + min
}

module.exports = {
    generateID,
}
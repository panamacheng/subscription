// Card Validator Service.
var cardValidator = require('@juspay/simple-card-validator');

// Define card validate handler.
var cardValidatorHandler = {};

// validate card detail.
cardValidatorHandler.validateCard = function(data, callback) {
    var cardNumber = data.cardNumber,
        expiryDate = data.expiryDate,
        cvc        = data.cvc;
        
    var card           = new cardValidator(cardNumber),
        validateCard   = card.validateCard(),
        validateCVV    = card.validateCvv(cvc),
        validateExpiry = card.validateExpiry(expiryDate)
        getCardDetails = card.getCardDetails(); 

    if (!validateCard || !validateCVV || !validateExpiry) {
        callback(false);
    } else {
        callback(getCardDetails);
    }
}

module.exports = cardValidatorHandler;
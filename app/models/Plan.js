// The Plan model
'use strict';

var Sequelize = require('sequelize');
var db = require('../services/database');

// 1. The model schema.
var modelDefinition = {
    name: {
        type: Sequelize.STRING,
        allowNull: true
    },
    cost: {
        type: Sequelize.DECIMAL,
        allowNull: true
    }
}

// 2. The model options.
var modelOptions = {}

// 3. Define the Plan model.
var PlanModel = db.define('tbl_plans', modelDefinition, modelOptions);

module.exports = PlanModel;
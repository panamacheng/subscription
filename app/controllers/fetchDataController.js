// authController.js
'use strict';

// Import Data from database.
var Activity = require('../models/Activity'),
    Challenge = require('../models/Challenge'),
    Country = require('../models/Country'),
    Major = require('../models/Major'),
    Plan = require('../models/Plan'),
    School = require('../models/School'),
    Sport = require('../models/Sport'),
    State = require('../models/State'),
    Year = require('../models/Year');

// The authentication controller.
var FetchDataController = {};

// Fetch all data from tbl_states table.
FetchDataController.fetchAllStates = function(req, res) {
    State.findAll().then(function(state) {
        if (state) {
            var stateArray = [];
            for(var obj of state) {
                stateArray.push(obj.dataValues);
            }

            res.status(201).json({
                data: stateArray
            });
        } else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
    });
}

// Fetch all data from tbl_schools table.
FetchDataController.fetchAllSchools = function(req, res) {
    School.findAll().then(function(school) {
        if(school) {
            var schoolArray = [];
            for(var obj of school) {
                schoolArray.push(obj.dataValues);
            }

            res.status(201).json({
                data: schoolArray
            });
        } else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
        
    });
}

// Fetch all data from tbl_years table.
FetchDataController.fetchAllYears = function(req, res) {
    Year.findAll().then(function(year) {
        if(year) {
            var yearArray = [];
            for(var obj of year) {
                yearArray.push(obj.dataValues);
            }

            res.status(201).json({
                data: yearArray
            });
        } else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
        
    });
}

// Fetch all data form tbl_majors table.
FetchDataController.fetchAllMajors = function(req, res) {
    Major.findAll().then(function(major) {
        if (major) {
            var majorArray = [];
            for(var obj of major) {
                majorArray.push(obj.dataValues);
            }

            res.status(201).json({
                data: majorArray
            });
        } else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
        
    });
}

// Fetch all data from tbl_sports table.
FetchDataController.fetchAllSports = function(req, res) {
    Sport.findAll().then(function(sport) {
        if(sport) {
            var sportArray = [];
            for(var obj of sport) {
                sportArray.push(obj.dataValues);
            }

            res.status(201).json({
                data : sportArray
            });
        } else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
       
    });
}

// Fetch all data from tbl_activities table.
FetchDataController.fetchAllActivities = function(req, res) {
    Activity.findAll().then(function(activity) {
        if(activity) {
            var activityArray = [];
            for(var obj of activity) {
                activityArray.push(obj.dataValues);
            }

            res.status(201).json({
                data : activityArray
            });
        }  else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
        
    });
}

// Fetch all data from tbl_challenges table.
FetchDataController.fetchAllChallenges = function(req, res) {
    Challenge.findAll().then(function(challenge) {
        if(challenge) {
            var challengeArray = [];
            for(var obj of challenge) {
                challengeArray.push(obj.dataValues);
            }

            res.status(201).json({
                data: challengeArray
            });
        } else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
    });
}

// Fetch all data from tbl_plan table.
FetchDataController.fetchAllPlans = function(req, res) {
    Plan.findAll().then(function(plan) {
        if(plan) {
            var planArray = [];
            for(var obj of plan) {
                planArray.push(obj.dataValues);
            }

            res.status(201).json({
                data: planArray
            });

        } else {
            res.status(404).json({
                message: 'database connection error!'
            });
        }
    });
}


module.exports = FetchDataController;

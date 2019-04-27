// api.js
'use strict';

var router = require('express').Router();

var config = require('../_core/config'),
    allowOnly = require('../services/routeHelper').allowOnly,
    AuthController = require('../controllers/authController'),
    UserController = require('../controllers/userController'),
    AdminController = require('../controllers/adminController'),
    FetchDataController = require('../controllers/fetchDataController');

var APIRoutes = function(passport) {
    // POST Routes.
    // router.post('/signup', AuthController.signUp);
    router.post('/signup/parent', AuthController.signUpParent);
    router.post('/signup/student', AuthController.signUpStudent);
    router.post('/signup/plan', AuthController.signUpPlan);
    router.post('/signup/parent/verify', AuthController.signUpParentVerify);
    router.post('/signup/setsuffix', AuthController.signUpSetSuffix);
    router.post('/authenticate', AuthController.authenticateUser);
    router.post('/signin/student', AuthController.signinStudent);

    router.post('/get/state', FetchDataController.fetchAllStates);
    router.post('/get/school', FetchDataController.fetchAllSchools);
    router.post('/get/year', FetchDataController.fetchAllYears);
    router.post('/get/major', FetchDataController.fetchAllMajors);
    router.post('/get/sport', FetchDataController.fetchAllSports);
    router.post('/get/activity', FetchDataController.fetchAllActivities);
    router.post('/get/challenge', FetchDataController.fetchAllChallenges);
    router.post('/get/plan', FetchDataController.fetchAllPlans);

    // GET Routes.
    router.get('/profile', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.user, UserController.index));
    router.get('/admin', passport.authenticate('jwt', { session: false }), allowOnly(config.accessLevels.admin, AdminController.index));

    return router;
};

module.exports = APIRoutes;
// app.js
(function() {
    'use strict';

    var app = angular.module('subscriptionApp', [
        'ui.router',
        'ngCookies',
        'ui.bootstrap'
    ]);

    // API Request Interceptor.
    app.factory('requestInterceptor', [
        '$cookies',
        function($cookies) {
            return {
                request: function(config) {
                    var user = $cookies.get('user'),
                        token = null;
                    
                    if(user) {
                        user = JSON.parse(user);
                        token = user.token ? user.token : null;
                    }

                    if(token) {
                        config.headers = config.headers || {};
                        config.headers.Authorization = token;
                    }

                    return config;
                }
            };
        }
    ]);

    // Static data constant.
    var staticData = {};

    var userRoles = staticData.userRoles = {
        student: 1,
        parent: 2,
        admin: 4
    };

    staticData.accessLevels = {
        student: userRoles.student | userRoles.parent | userRoles.admin,
        parent: userRoles.parent | userRoles.admin,
        admin: userRoles.admin
    };

    app.constant('staticData', staticData);

    // Config block.
    app.config([
        '$stateProvider',
        '$urlRouterProvider',
        '$httpProvider',
        '$locationProvider',
        'staticData',
        authConfig 
    ]);

    function authConfig(
        $stateProvider,
        $urlRouterProvider,
        $httpProvider,
        $locationProvider,
        staticData ) {
            $urlRouterProvider.otherwise("/");

            $stateProvider
                .state('home', {
                    url:'/',
                    templateUrl: 'app/views/home/home.html'
                })
                .state('signup/parent', {
                    url:'/signup',
                    templateUrl: 'app/views/signup/parent.html',
                    controller: 'ParentController as pc'
                })
                

            $locationProvider.html5Mode(true);
            $httpProvider.interceptors.push('requestInterceptor');
        }

    // Run block.
    app.run([
        '$rootScope',
        '$state',
        'authService',
        authRun
    ]);

    function authRun($rootScope, $state, authService) {
        $rootScope.$on('$stateChangeStart', function(event, toState) {
            if(toState.data && toState.data.accessLevel) {
                var user = authService.getUserData();

                if(!(toState.data.accessLevel & user.role)) {
                    event.preventDefault();
                    $state.go('index');
                    return;
                }
            }
        });
    }
})();
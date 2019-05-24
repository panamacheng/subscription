// authService.js
(function(){
    'use strict';

    angular
        .module('subscriptionApp')
        .factory('authService', [
            '$http',
            '$cookies',
            '$state',
            authService
        ]);

    /** @ngInject */
    function authService($http, $cookies, $state){
        var authService = {
            isAuthenticated: isAuthenticated,
            getUserData: getUserData,
            getRegisterState: getRegisterState,
            signupParent: signupParent,
            logout: logout
        }

        return authService;

        function logout() {
            $cookies.remove('user');
            $state.go('index');
        }

        function isAuthenticated() {
            var user = $cookies.get('user');
            return user && user !== 'undefined';
        }

        function getUserData() {
            if(isAuthenticated()) {
                return JSON.parse($cookies.get('user'));
            }

            return false;
        }

        function getRegisterState() {
            return JSON.parse($cookies.get('registerState'));
        }

        function signupParent(data) {
            var reqObj = {
                method: "POST",
                url: '/user/signup/parent',
                data: data
            }

            return $http(reqObj).then(function(response) {
                if(response && response.data) {
                    response = response.data;

                    var expires = new Date(),
                        registerState = {};

                    registerState.id = response.id;

                    expires.setTime(expires.getTime() + (24 * 60 * 60 * 1000));
                    $cookies.put(
                        'registerState',
                        JSON.stringify(registerState),
                        { expires: expires }
                    );
                }
            });
        }
    }

}());
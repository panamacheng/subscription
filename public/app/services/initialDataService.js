(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .factory('initialDataService', [
            '$http',
            '$cookies',
            '$state',
            initialDataService
        ]);

    function initialDataService($http, $cookies, $state) {
        var initialDataService = {
            getStates : getStates,
            getSchools : getSchools,
            getYears : getYears,
            getMajors : getMajors,
            getSports : getSports,
            getActivities: getActivities,
            getChallenges : getChallenges,
            getPlan : getPlan 
        };

        return initialDataService;

        function getStates() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/state'
            }

            return $http(reqObj);
        }

        function getSchools() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/school'
            }

            return $http(reqObj);
        }

        function getYears() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/year'
            }

            return $http(reqObj);
        }

        function getMajors() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/major'
            }

            return $http(reqObj); 
        }

        function getSports() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/sport'
            }

            return $http(reqObj);
        }

        function getActivities() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/activity'
            }

            return $http(reqObj);
        }

        function getChallenges() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/challenge'
            }

            return $http(reqObj);
        }

        function getPlan() {
            var reqObj = {
                method: 'POST',
                url: '/api/get/plan'
            }

            return $http(reqObj);
        }
    }
})();
(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('SignupStudentController', [
            '$scope',
            '$state',
            '$stateParams',
            'authService',
            'initialDataService', 
            SignupStudentController
        ]);

    function SignupStudentController($scope, $state, $stateParams, authService, initialDataService) {
        var vm = this;

        vm.parentEmail = $stateParams.obj.email
        vm.signupStudent = signupStudent;
        vm.init = init;

        vm.stateArray = [];
        vm.schoolArray = [];
        vm.yearArray = [];
        vm.majorArray = [];
        vm.sportArray = [];
        vm.activityArray = [];
        vm.challengeArray = [];

        function init() {
            initialDataService.getStates().then(function(res) {
                for(var obj of res.data.data) {
                    vm.stateArray.push(obj);
                }
            });

            initialDataService.getSchools().then(function(res) {
                for(var obj of res.data.data) {
                    vm.schoolArray.push(obj);
                }
            });

            initialDataService.getYears().then(function(res) {
                for(var obj of res.data.data) {
                    vm.yearArray.push(obj);
                }
            });

            initialDataService.getMajors().then(function(res) {
                for(var obj of res.data.data) {
                    vm.majorArray.push(obj);
                }
            });

            initialDataService.getSports().then(function(res) {
                for(var obj of res.data.data) {
                    vm.sportArray.push(obj);
                }
            });

            initialDataService.getActivities().then(function(res) {
                for(var obj of res.data.data) {
                    vm.activityArray.push(obj);
                }
            });

            initialDataService.getChallenges().then(function(res) {
                for(var obj of res.data.data) {
                    vm.challengeArray.push(obj);
                }
            });
        }

        function signupStudent() {
            var signupStudentData = {
                parentID: $stateParams.obj.parentID,
                firstName: vm.firstName,
                lastName: vm.lastName,
                email: vm.email,
                phoneNumber: vm.phoneNumber,
                state_id: vm.selectedState.id,
                school_id: vm.selectedShool.id,
                year: vm.selectedYear.id,
                major_id: vm.selectedMajor.id,
                sport_id: vm.selectedSport.id,
                activity_id: vm.selectedActivity.id,
                challenge_id: vm.selectedChallenge.id
            }

            authService.signupStudent(signupStudentData)
                .then(handleSuccessfulSignupStudent)
                .catch(handleFailedSignupStudent);
        }

        function handleSuccessfulSignupStudent(response) {
            vm.signupSuccess = true;
            vm.signupParentSuccessMessage = response.data.message;
            var sendDataObj = {
                parentID: $stateParams.obj.parentID,
                parentEmail: $stateParams.obj.email,
                studentID: response.data.studentID,
                studentEmail: response.data.studentEmail
            }
            setTimeout(() => {
                $state.go('signup/plan', { obj: sendDataObj});
            }, 800);
        }

        function handleFailedSignupStudent(response) {
            vm.signupSuccess = false;

            if(response && response.data) {
                vm.signupErrorMessage = response.data.message;
                vm.signupError = true;
            }
        }


    }
})();
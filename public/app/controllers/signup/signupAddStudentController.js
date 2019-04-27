(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('SignupAddStudentController', [
            '$scope',
            '$state',
            '$stateParams',
            'authService',
            'initialDataService', 
            SignupAddStudentController
        ]);

    function SignupAddStudentController($scope, $state, $stateParams, authService, initialDataService) {
        var vm = this;
        vm.signupAddStudent = signupAddStudent;
        vm.init = init;

        vm.emailError = false;
        vm.phoneNumberError = false;
        vm.majorError = false;
        vm.sportError = false;
        vm.activityError = false;
        vm.statTimeError = false;
        vm.endTimeError = false;
        vm.checkboxError = false;

        vm.emailErrorMsg = null;
        vm.phoneNumberErrorMSg = null;
        vm.majorErrorMsg = null;
        vm.sportErrorMsg = null;
        vm.activityErrorMsg = null;
        vm.statTimeErrorMsg = null;
        vm.endTimeErrorMsg = null;
        vm.checkboxErrorMsg = null;

        vm.majorArray = [];
        vm.sportArray = [];
        vm.activityArray = [];

        function init() {
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
        }

        
        function signupAddStudent() {
            if(!vm.email) {
                vm.emailError = true;
                vm.emailErrorMsg = '';
            } else {
                vm.emailError = false;
                vm.emailErrorMsg = null;
            }

            if(!vm.phoneNumber) {
                vm.phoneNumberError = true;
                vm.phoneNumberErrorMSg = '';
            } else {
                vm.phoneNumberError = false;
                vm.phoneNumberErrorMSg = null;
            }

            if(!vm.selectedMajor.id) {
                vm.majorError = true;
                vm.majorErrorMsg = '';
            } else {
                vm.majorError = false;
                vm.majorErrorMsg = null;
            }

            if(!vm.selectedSport.id) {
                vm.sportError = true;
                vm.sportErrorMsg = '';
            } else {
                vm.sportError = false;
                vm.sportErrorMsg = null;
            }

            if(!vm.selectedActivity.id) {
                vm.activityError = true;
                vm.activityErrorMsg = '';
            } else {
                vm.activityError = false;
                vm.activityErrorMsg = null;
            }

            if(!vm.startTime) {
                vm.statTimeError = true;
                vm.statTimeErrorMsg = '';
            } else {
                vm.statTimeError = false;
                vm.statTimeErrorMsg = null;
            }

            if(!vm.endTime) {
                vm.endTimeError = true;
                vm.endTimeErrorMsg = '';
            } else {
                vm.endTimeError = false;
                vm.endTimeErrorMsg = null;
            }

            if(!vm.checkbox) {
                vm.checkboxError = true;
                vm.checkboxErrorMsg = '';
            } else {
                vm.checkboxError = false;
                vm.checkboxErrorMsg = null;
            }

            if (vm.email && vm.phoneNumber && vm.selectedMajor && vm.selectedSport && vm.selectedActivity && vm.startTime && vm.endTime && vvm.checkbox) {
                var signupAddStudentData = {
                    parentId: $stateParams.obj.p_id,
                    email: vm.email,
                    phoneNumber: vm.phoneNumber,
                    majorId: vm.selectedMajor.id,
                    sportId: vm.selectedSport.id,
                    activityId: vm.selectedActivity.id,
                    startTime: vm.startTime,
                    endTime: vm.endTime
                }
                authService.signupAddStudent(signupAddStudentData)
                    .then(successfulHandler)
                    .catch(failedHandler);
            }
        }

        function successfulHandler(res) {
            console.log(res.data);
        }

        function failedHandler(res) {
            console.log(res.data);
        }
    }

})();

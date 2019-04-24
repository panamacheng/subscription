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

        vm.firstName = '';
        vm.lastName = '';
        vm.email = '';
        vm.phoneNumber = '';
        vm.selectedState = {};
        vm.selectedSchool = {};
        vm.selectedYear = {};
        vm.selectedMajor = {};
        vm.selectedSport = {};
        vm.selectedActivity = {};
        vm.selectedChallenge = {};

        vm.firstNameError = false;
        vm.lastNameError = false;
        vm.emailError = false;
        vm.phoneNumberError = false;
        vm.stateError = false;
        vm.schoolError = false;
        vm.yearError = false;
        vm.majorError = false;
        vm.sportError = false;
        vm.activityError = false;
        vm.challengeError = false;

        vm.firstNameErrorMsg = null;
        vm.lastNameErrorMsg = null;
        vm.emailErrorMsg = null;
        vm.phoneNumberErrorMsg = null;
        vm.stateErrorMsg = null;
        vm.schoolErrorMsg = null;
        vm.yearErrorMsg = null;
        vm.majorErrorMsg = null;
        vm.sportErrorMsg = null;
        vm.activityErrorMsg = null;
        vm.challengeErrorMsg = null;

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
            if(!vm.firstName) {
                vm.firstNameError = true;
                vm.firstNameErrorMsg = 'Please fill input field.';
            } else {
                vm.firstNameError = false;
                vm.firstNameErrorMsg = null;
            }

            if(!vm.lastName) {
                vm.lastNameError = true;
                vm.lastNameErrorMsg = 'Please fill input field.';
            } else {
                vm.lastNameError = false;
                vm.lastNameErrorMsg = null;
            }

            if(!vm.email) {
                vm.emailError = true;
                vm.emailErrorMsg = 'Please fill input field.';                
            } else {
                vm.emailError = false;
                vm.emailErrorMsg = null;   
            }

            if(!vm.phoneNumber) {
                vm.phoneNumberError = true;
                vm.phoneNumberErrorMsg = 'Please fill input field.';                
            } else {
                vm.phoneNumberError = false;
                vm.phoneNumberErrorMsg = null;    
            }

            if(!vm.selectedState.id) {
                vm.stateError = true;
                vm.stateErrorMsg = 'Please choose the state.';
            } else {
                vm.stateError = false;
                vm.stateErrorMsg = null;
            }

            if(!vm.selectedSchool.id) {
                vm.schoolError = true;
                vm.schoolErrorMsg = 'Please choose the school.';
            } else {
                vm.schoolError = false;
                vm.schoolErrorMsg = null;
            }

            if(!vm.selectedYear.id) {
                vm.yearError = true;
                vm.yearErrorMsg = 'Please choose the year.';
            } else {
                vm.yearError = false;
                vm.yearErrorMsg = null;
            }

            if(!vm.selectedMajor.id) {
                vm.majorError = true;
                vm.majorErrorMsg = 'Please choose the major.';
            } else {
                vm.majorError = false;
                vm.majorErrorMsg = null;
            }

            if(!vm.selectedSport.id) {
                vm.sportError = true;
                vm.sportErrorMsg = 'Please choose the sport.';
            } else {
                vm.sportError = false;
                vm.sportErrorMsg = null;
            }

            if(!vm.selectedActivity.id) {
                vm.activityError = true;
                vm.activityErrorMsg = 'Please choose the activity';
            } else {
                vm.activityError = false;
                vm.activityErrorMsg = null; 
            }

            if(!vm.selectedChallenge.id) {
                vm.challengeError = true;
                vm.challengeErrorMsg = 'Please choose the challenge';
            } else {
                vm.challengeError = false;
                vm.challengeErrorMsg = null;
            }
            

            var signupStudentData = {
                parentID:     $stateParams.obj.parentID,
                firstName:    vm.firstName,
                lastName:     vm.lastName,
                email:        vm.email,
                phoneNumber:  vm.phoneNumber,
                state_id:     vm.selectedState.id,
                school_id:    vm.selectedSchool.id,
                year:         vm.selectedYear.id,
                major_id:     vm.selectedMajor.id,
                sport_id:     vm.selectedSport.id,
                activity_id:  vm.selectedActivity.id,
                challenge_id: vm.selectedChallenge.id
            }
            
            if(vm.firstName && vm.lastName && vm.email && vm.phoneNumber) {
                if(vm.selectedState.id && vm.selectedSchool.id && vm.selectedYear.id && vm.selectedMajor.id) {
                    if(vm.selectedSport.id && vm.selectedActivity.id && vm.selectedChallenge.id) {
                        var signupStudentData = {
                            parentID:     $stateParams.obj.parentID,
                            firstName:    vm.firstName,
                            lastName:     vm.lastName,
                            email:        vm.email,
                            phoneNumber:  vm.phoneNumber,
                            state_id:     vm.selectedState.id,
                            school_id:    vm.selectedSchool.id,
                            year:         vm.selectedYear.id,
                            major_id:     vm.selectedMajor.id,
                            sport_id:     vm.selectedSport.id,
                            activity_id:  vm.selectedActivity.id,
                            challenge_id: vm.selectedChallenge.id
                        }

                        authService.signupStudent(signupStudentData)
                            .then(handleSuccessfulSignupStudent)
                            .catch(handleFailedSignupStudent);
                    }
                }
            }
           
        }

        function handleSuccessfulSignupStudent(response) {
            // vm.signupSuccess = true;
            // vm.signupParentSuccessMessage = response.data.message;
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
            vm.firstNameError = false;
            vm.lastNameError = false;
            vm.emailError = false;
            vm.phoneNumberError = false;
            vm.stateError = false;
            vm.schoolError = false;
            vm.yearError = false;
            vm.majorError = false;
            vm.sportError = false;
            vm.activityError = false;
            vm.challengeError = false;

            vm.firstNameErrorMsg = null;
            vm.lastNameErrorMsg = null;
            vm.emailErrorMsg = null;
            vm.phoneNumberErrorMsg = null;
            vm.stateErrorMsg = null;
            vm.schoolErrorMsg = null;
            vm.yearErrorMsg = null;
            vm.majorErrorMsg = null;
            vm.sportErrorMsg = null;
            vm.activityErrorMsg = null;
            vm.challengeErrorMsg = null;

            if(response && response.data) {
                vm.emailErrorMsg = response.data.message;
                vm.emailError = true;
            }
        }
    }
})();
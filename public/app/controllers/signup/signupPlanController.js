(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('SignupPlanController', [
            '$scope',
            '$state',
            '$stateParams',
            'authService',
            'initialDataService', 
            SignupPlanController
        ]);

    function SignupPlanController($scope, $state, $stateParams, authService, initialDataService) {
        var vm = this;

        vm.signupSuccess = false;
        vm.signupError = false;
        vm.selectedPlan = {};
        vm.planError = false;
        vm.cardNameError = false;
        vm.phoneNumberError = false;
        vm.cardNumberError = false;
        vm.expirationDateError = false;
        vm.cvcError = false;
        vm.checkboxError = false;

        vm.planErrorMsg = null;
        vm.cardNameErrorMsg = null;
        vm.phoneNumberErrorMsg = null;
        vm.cardNumberErrorMsg = null;
        vm.expirationDateErrorMsg = null;
        vm.cvcErrorMsg = null;
        vm.checkboxErrorMsg = null;

        vm.init = init;
        vm.planArray = [];
        vm.parentEmail = $stateParams.obj.parentEmail;
        vm.studentEmail = $stateParams.obj.studentEmail;

        vm.signupPlan = signupPlan;

        function init() {
            initialDataService.getPlan().then(function(res) {
                for(var obj of res.data.data) {
                    vm.planArray.push(obj);
                }
            });
        }

        function signupPlan() {
            if(!vm.selectedPlan.id) {
                vm.planError = true;
                vm.planErrorMsg = 'Choose your plan';
            } else {
                vm.planError = false;
                vm.planErrorMsg = null;
            }

            if(!vm.cardName) {
                vm.cardNameError = true;
                vm.cardNameErrorMsg = 'Input your card name';
            } else {
                vm.cardNameError = false;
                vm.cardNameErrorMsg = null;
            }

            if(!vm.phoneNumber) {
                vm.phoneNumberError = true;
                vm.phoneNumberErrorMsg = 'Please input your phone number';
            } else {
                vm.phoneNumberError = false;
                vm.phoneNumberErrorMsg = null;
            }

            if(!vm.expirationDate) {
                vm.expirationDateError = true;
                vm.expirationDateErrorMsg = 'Select your exprity date';
            } else {
                vm.expirationDateError = false;
                vm.expirationDateErrorMsg = null;
            }

            if(!vm.cvc) {
                vm.cvcError = true;
                vm.cvcErrorMsg = 'Input your cvv detail';
            } else {
                vm.cvcError = false;
                vm.cvcErrorMsg = null;
            }

            if(!vm.checkbox) {
                vm.checkboxError = true;
                vm.checkboxErrorMsg = 'You need to agree our privacy';
            } else {
                vm.checkboxError = false;
                vm.checkboxErrorMsg = null;
            }

            if(vm.selectedPlan.id && vm.cardName && vm.phoneNumber && vm.cardNumber && vm.expirationDate && vm.cvc) {
                var signupPlanData = {
                    parentID       : $stateParams.obj.parentID,
                    planID         : vm.selectedPlan.id,
                    cardName       : vm.cardName,
                    phoneNumber    : vm.phoneNumber,
                    cardNumber     : vm.cardNumber,
                    expirationDate : vm.expirationDate,
                    cvc            : vm.cvc                 
                }
    
                console.log(signupPlanData);
                
                authService.signupPlan(signupPlanData)
                    .then(handleSuccessfulSignupPlan)
                    .catch(handleFailedSignupPlan);
            }
        }

        function handleSuccessfulSignupPlan(response) {
            // vm.signupSuccess = true;
            // vm.signupSuccessMessage = response.data.message;

            setTimeout(() => {
                $state.go('signup/parent/verify', { obj: response.data});
            }, 800);
        }

        function handleFailedSignupPlan(response) {
            console.log(response.data);
            // vm.signupSuccess = false;
            vm.cardNumberError = true;
            vm.cardNumberErrorMsg = response.data.message;
        }
    }

})();
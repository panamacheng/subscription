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

        function handleSuccessfulSignupPlan(response) {
            // vm.signupSuccess = true;
            // vm.signupParentSuccessMessage = response.data.message;
            // var sendDataObj = {
            //     parentID: $stateParams.obj.parentID,
            //     parentEmail: $stateParams.obj.email,
            //     studentID: response.data.studentID,
            //     studentEmail: response.data.studentEmail
            // }
            setTimeout(() => {
                $state.go('signup/parent/verify', { obj: response.data});
            }, 800);
        }

        function handleFailedSignupPlan(response) {
            console.log(response);
            // vm.signupSuccess = false;

            // if(response && response.data) {
            //     vm.signupErrorMessage = response.data.message;
            //     vm.signupError = true;
            // }
        }

        // console.log($stateParams);
    }

})();
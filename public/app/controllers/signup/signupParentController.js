(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('SignupParentController', [
            '$scope',
            '$state',
            'authService', 
            SignupParentController
        ]);

    function SignupParentController($scope, $state, authService) {
        var vm = this;

        vm.signupSuccess = false;

        vm.firstNameError = false;
        vm.firstNameErrorMsg = null;
        vm.lastNameError = false;
        vm.lastNameErrorMsg = null;
        vm.emailError = false;
        vm.emailErrorMsg = null;
        vm.passwordError = false;
        vm.passwordErrorMsg = null;
        vm.firstName = '';
        vm.lastName = '';
        vm.email = '';
        vm.password = '';

        vm.signupParent = signupParent;

        function signupParent() {
            if(!vm.firstName) {
                vm.firstNameError = true;
                vm.firstNameErrorMsg = 'Please input your first name';
            }
            if(!vm.lastName) {
                vm.lastNameError = true;
                vm.lastNameErrorMsg = 'Please input your last name';
            }

            if(!vm.email) {
                vm.emailError = true;
                vm.emailErrorMsg = 'Please input your email to set your account';
            }

            if(!vm.password) {
                vm.passwordError = true;
                vm.passwordErrorMsg = 'Please input your password to set your account';
            }

            if(vm.firstName && vm.lastName && vm.email && vm.password) {
                var signupParentData = {
                    firstName: vm.firstName,
                    lastName: vm.lastName,
                    email: vm.email,
                    password: vm.password
                }

                authService.signupParent(signupParentData)
                    .then(handleSuccessfulSignupParent)
                    .catch(handleFailedSignupParent);
            }
        }

        function handleSuccessfulSignupParent(response) {
            vm.signupSuccess = true;
            vm.signupParentSuccessMessage = response.data.message;
            setTimeout(() => {
                $state.go('signup/student', { obj: response.data });
            }, 800);
        }

        function handleFailedSignupParent(response) {
            vm.firstNameError = false;
            vm.firstNameErrorMsg = null;
            vm.lastNameError = false;
            vm.lastNameErrorMsg = null;
            vm.emailError = false;
            vm.emailErrorMsg = null;
            vm.passwordError = false;
            vm.passwordErrorMsg = null;
            vm.signupSuccess = false;

            if(response && response.data) {
                vm.emailError = true;
                vm.emailErrorMsg = response.data.message;
                
            }
        }
    }

})();
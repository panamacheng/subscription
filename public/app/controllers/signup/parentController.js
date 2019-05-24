(function(){
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('ParentController', [
            '$rootScope',
            'authService',
            ParentController
        ])

    /** @ngInject */
    function ParentController($rootScope, authService){
        var vm = this;
        vm.signupParent = signupParent;

        vm.firstNameError = false;
        vm.lastNameError = false;
        vm.emailError = false;
        vm.passwordError = false;
        vm.singupParentError = false;

        vm.firstNameErrorMsg = null;
        vm.lastNameErrorMsg = null;
        vm.emailErrorMsg = null;
        vm.passwordErrorMsg = null;
        vm.singupParenErrorMsg = null;

        init();

        function init(){
            $rootScope.$emit('isSignup', true);
        }

        function signupParent() {
            if(!vm.firstName) {
                vm.firstNameError = true;
                vm.firstNameErrorMsg = 'invalid first name';
            } else {
                vm.firstNameError = false;
                vm.firstNameErrorMsg = null;
            }

            if(!vm.lastName) {
                vm.lastNameError = true;
                vm.lastNameErrorMsg = 'invalid last name';
            } else {
                vm.lastNameError = false;
                vm.lastNameErrorMsg = null;
            }

            if(!vm.email) {
                vm.emailError = true;
                vm.emailErrorMsg = 'invalid email';
            } else {
                vm.emailError = false;
                vm.emailErrorMsg = null;
            }

            if(!vm.password) {
                vm.passwordError = true;
                vm.passwordErrorMsg = 'invalid password.';
            } else {
                vm.passwordError = false;
                vm.passwordErrorMsg = null;
            } 

            if(vm.firstName && vm.lastName && vm.email && vm.password) {
                var signupParentData = {
                    firstName: vm.firstName,
                    lastName : vm.lastName,
                    email    : vm.email,
                    password : vm. password
                }

                authService.signupParent(signupParentData)
                    .then(successHandle)
                    .catch(failedHandle);
            }
        }

        function successHandle() {
            $state.go('signup/student');
        }

        function failedHandle(response) {
            if(response && response.data) {
                vm.singupParentError = true;
                vm.singupParenErrorMsg = response.data.message;
            }
        }
    }
}());
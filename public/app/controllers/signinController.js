(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('LoginController', [
            '$state',
            'authService',
            LoginController
        ]);

    function LoginController($state, authService) {
        var vm = this;

        vm.emailError = false;
        vm.passwordError = false;
        vm.studentEmailError = false;
        vm.parentEmailError = false;

        vm.emailErrorMsg = null;
        vm.passwordErrorMsg = null;
        vm.studentEmailErrorMsg = null;
        vm.parentEmailErrorMsg = null;

        vm.login = login;
        vm.studentSignin = studentSignin;

        function login() {
            vm.loginError = false
            vm.loginErrorMessage = null;

            if(!vm.email || !vm.password) {
                vm.loginError = true;
                vm.loginErrorMessage = 'Email and password required!';
                return;
            }

            authService.login(vm.email, vm.password)
                .then(handleSuccessfulLogin)
                .catch(handleFailedLogin);
        }

        function studentSignin() {
            if(!vm.studentEmail) {
                vm.studentEmailError = true;
                vm.studentEmailErrorMsg = 'Please input your student email';
            } else {
                vm.studentEmailError = false;
                vm.studentEmailErrorMsg = null;
            }

            if(!vm.parentEmail) {
                vm.parentEmailError = true;
                vm.parentEmailErrorMsg = 'Please input your parent email';
            } else {
                vm.parentEmailError = false;
                vm.parentEmailErrorMsg = null;
            }

            if (vm.studentEmail && vm.parentEmail) {
                var signinStudentData = {
                    studentEmail : vm.studentEmail,
                    parentEmail : vm.parentEmail
                }
                authService.studentSignin(signinStudentData)
                    .then(handleSuccessfulLogin)
                    .catch(handleFailedLogin);
            }
        }

        function handleSuccessfulLogin() {
            $state.go('index');
        }

        function handleFailedLogin(response) {
            if(response && response.data) {
                vm.loginErrorMessage = response.data.message;
                vm.loginError = true;
            }
        }

    }
})();
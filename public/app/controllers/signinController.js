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

        vm.loginError = false
        vm.loginErrorMessage = null;

        vm.login = login;

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
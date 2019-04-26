(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('signupVerifyStudentController', [
            '$scope',
            '$state',
            'authService', 
            signupVerifyStudentController
        ]);

    function signupVerifyStudentController($scope, $state, authService) {
        var vm = this;

        vm.verifyError = false;
        vm.verifyErrorMsg = null;

        vm.verifyStudent = verifyStudent;

        function verifyStudent() {
            if(!vm.verify) {
                vm.verifyError = true;
                vm.verifyErrorMsg = '';
            } else {
                vm.verifyError = false;
                vm.verifyErrorMsg = null;

                authService.verifyStudent(vm.verify)
                    .then(successfulHandler)
                    .catch(failedHandler);
            }

            function successfulHandler(res) {
                console.log(res.data);
            }

            function failedHandler(res) {
                console.log(res.data);
            }
        }
    }
})();
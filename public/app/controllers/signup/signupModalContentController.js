(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('SignupModalContentController', [
            '$scope',
            '$state',
            '$stateParams',
            '$uibModalInstance',
            'authService',
            'initialDataService', 
            SignupModalContentController
        ]);

    function SignupModalContentController($scope, $state, $stateParams, $uibModalInstance, authService, initialDataService) {
        vm = this;

        vm.open = ok;
        vm.cancel = cancel;

        function ok() {
            $uibModalInstance.close("Ok");
        }
        
        function cancel() {
            $uibModalInstance.dismiss();
        }
    }
})();
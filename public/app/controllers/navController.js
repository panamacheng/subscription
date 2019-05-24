(function(){
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('NavController', [
            '$rootScope',
            '$state',
            'authService',
            NavController
        ])

    /** @ngInject */
    function NavController($rootScope, $state, authService){
        var vm = this;
        init();
        function init(){
            vm.isRegisterUser = false;
            vm.isLogin = false;

            $rootScope.$on('isSignup', data => {
                vm.isRegisterUser = data;
                vm.isLogin = false;
                vm.isAuthenticated = authService.isAuthenticated;
            });
            // $state.go("/");
        }
    }
}());
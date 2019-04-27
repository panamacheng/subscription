(function() {
    'use strict';

    angular
        .module('subscriptionApp')
        .controller('SignupAddSuffixController', [
            '$scope',
            '$state',
            '$uibModal',
            '$stateParams',
            'authService', 
            SignupAddSuffixController
        ]);

    function SignupAddSuffixController($scope, $state,$uibModal, $stateParams, authService) {
        var vm = this;

        vm.setSuffix = setSuffix;
        vm.moveToAddPage = moveToAddPage;
        vm.flag = false;

        function moveToAddPage() {
            if(vm.flag == false) {
                vm.flag = true;
            } else {
                vm.flag = false;
            }

            var setSuffixData = {
                suffix : vm.setInputedSuffix,
                parentID : $stateParams.obj.parentID
            }
            
            authService.setSuffix(setSuffixData)
                .then(function(res) {
                    var data = {
                        parentID: $stateParams.obj.parentID
                    }

                    $state.go('signup/add/student', { obj: data });
                })
                .catch(function(res) {
                    console.log(res.data);
                });
            
        }

        vm.open = open;
        function open() {
            var modalInstance =  $uibModal.open({
              templateUrl: "app/views/partials/signup/partial-signup-modal.html",
              controller: "SignupModalContentController",
              size: '',
            });
            
            modalInstance.result.then(function(response){
                $scope.result = `${response} button hitted`;
            });
        };

        function setSuffix() {
            if(vm.flag == false) {
                console.log('res');
            } else {
                var setSuffixData = {
                    suffix : vm.setInputedSuffix,
                    parentID : $stateParams.obj.parentID
                }
                
                authService.setSuffix(setSuffixData)
                    .then(signupSuccessfulHandler)
                    .catch(signupFailedHandler);
            }
        }

        function signupSuccessfulHandler(response) {
            var data = {
                parentID: $stateParams.obj.parentID
            }

            $state.go('signup/verify/student', { obj: data });
        }

        function signupFailedHandler(response) {
            console.log(response.data);
        }
    }

})();
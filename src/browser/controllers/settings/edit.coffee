GitSettings = require '../../../backend/git-settings'

settingsEditCtrl = ($scope) ->
  gitSettings = new GitSettings()

  $scope.user = gitSettings.config.user
  $scope.user.name ?= ''
  $scope.user.email ?= ''

  $scope.save = ->
    gitSettings.save()




angular.module('GitodoApp').controller 'settingsEditCtrl', [
  '$scope', settingsEditCtrl
]
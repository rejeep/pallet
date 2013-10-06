Feature: Bootstrapping Pallet
  In order to manage my installed packages
  As a Pallet user
  I want to bootstrap a Cask/Pallet setup

  Scenario: Initialising Pallet from an existing package setup
    Given I have run package-initialize
    And I have added MELPA to the archive sources
    When I run pallet-init
    Then I should have a Cask file listing my packages
    And I should have a .cask directory containing my packages

  Scenario: Initialising Pallet from a new Emacs install
    Given I have created a Cask file
    And I have added MELPA as a source
    And I have added Pallet as a dependency
    And I have run `cask install`
    Then I should have a .cask directory containing the Pallet package

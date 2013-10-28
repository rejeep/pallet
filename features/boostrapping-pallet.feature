Feature: Bootstrapping Pallet
  In order to manage my installed packages
  As a Pallet user
  I want to bootstrap a Cask/Pallet setup

  Scenario: Initialising Pallet from an existing package setup
    Given I have required package.el
    And I have added "localhost" "http://127.0.0.1:9191/packages/" as an archive
    And I have installed packages:
    | name          |
    | package-one   |
    | package-two   |
    | package-three |
    And I have run package-initialize
    When I run pallet-init
    # Then I should have a Cask file listing packages:
    # | name      |
    # | package-1 |
    # | package-2 |
    # | package-3 |
    # And I should have a Cask file listing archives:
    # | name      | location                        |
    # | localhost | http://127.0.0.1:9191/packages/ |
    # And I should have a .cask directory containing packages:
    # | name      |
    # | package-1 |
    # | package-2 |
    # | package-3 |

  # Scenario: Initialising Pallet from a new Emacs install
  #   Given I have created a Cask file
  #   And I have added Pallet as a dependency
  #   And I have run `cask install`
  #   Then I should have a .cask directory containing packages:
  #   | name   |
  #   | pallet |

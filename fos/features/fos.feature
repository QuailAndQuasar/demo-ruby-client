Feature: My bootstrapped app kinda works
  In order to get going on coding my awesome app
  I want to have aruba and cucumber setup
  So I don't have to do it myself

  Scenario: App just runs
    When I get help for "fos"
    Then the exit status should be 0

  Scenario: User Can Enroll
    When I run `bundle exec bin/fos enroll aabacd sam@email.com`
    Then the exit status should be 0

*** Settings ***
Test Setup   J'accède à l'url
Test Teardown    Fermeture du navigateur
Resource    ../Conf/Resources.txt

*** Test Cases ***
test1
    Given J'accède à l'application
    And Je suis dans la page d'authentification
    When Je saisis l'email
    And Je saisis le mot de passe
    And Je clique sur le bouton
    Then La page Myaccount s'affichera avec l'email saisi

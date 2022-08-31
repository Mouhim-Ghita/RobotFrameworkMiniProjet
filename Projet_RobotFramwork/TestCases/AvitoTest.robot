*** Settings ***
Resource    ../Conf/Resources.txt
Test Setup   TestSetUp
Test Teardown   TestTearDown

*** Variables ***
${avito_url}    https://www.avito.ma/
${navigateur}   chrome
${valeur_recherchee}   Voiture

*** Test Cases ***

RechercheAvito
    OuvrirUrlAvito  ${avito_url}   ${navigateur}
    RechercherUnBien  ${avito.champ.recherche}    ${valeur_recherchee}
    CliquerButtonRecherche  ${avito.button.rechercher}


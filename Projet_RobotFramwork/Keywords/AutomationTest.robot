*** Settings ***
Resource    ../Conf/Resources.txt
*** Keywords ***
J'accède à l'url

    [Documentation]  ce keyword sert à l'ouverture de l'url dans le browser
    open browser    ${url}      ${browser}
    maximize browser window
J'accède à l'application
    No operation

Open Browser And Login
    [Documentation]  ce keyword sert à faire le login dans l'application
    open browser    ${url}      ${browser}
    maximize browser window
    Wait Until Element is Visible    ${xpath_email_login}    ${default_timeout}
    Input Text    ${xpath_email_login}    ${email_login}
    Wait Until Element is Visible    ${xpath_password_login}    ${default_timeout}
    Input Text    ${xpath_password_login}    ${password_login}
    Wait Until Element is Visible    ${xpath_button_login}    ${default_timeout}
    Click Element    ${xpath_button_login}

Je saisis l'email
    #${email}    Generate Random String    5
    ${email}    Catenate       SEPARATOR=.    ${valeur1}    ${valeur2}    @gmail.com
    log to console  ecriture de de mail
    Wait Until Element Is Visible    ${xpath_email_register}      ${default_timeout}
    Input Text      ${xpath_email_register}      ${email}

Je saisis le mot de passe
     Input Text      ${xpath_password_register}      ${password}

Je clique sur le bouton
    Wait until element is visible   ${xpath_message_strong}    ${default_long_timeout}
    click element   ${xpath_bouton_register}

    log to console  element bien cliquer

La page Myaccount s'affichera avec l'email saisi
    Wait until element is visible    ${message_page_accueil}    ${default_long_timeout}
    log to console      compte bien cree

Fermeture du navigateur
    Close Browser
    Log to console    Browser is closed

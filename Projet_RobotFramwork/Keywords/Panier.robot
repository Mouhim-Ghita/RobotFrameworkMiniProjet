*** Settings ***
Resource    ../Conf/Resources.txt
*** Keywords ***

J accede a la page panier

   # [Documentation]  ce keyword sert à l'ouverture de l'url dans le browser
    #Wait Until Element Is Visible    ${button_panier}    ${default_timeout}
    #Click Element    ${button_panier}
    #Log to console  Bouton Panier cliquer
    #Wait until Element Is Visible    ${page_panier}    ${default_timeout}
    Log to console    Je suis dans la page panier

Je click sur le bouton "proceed to checkout"

    Wait until element is visible   ${XpathProceed}    ${default_long_timeout}
    click element   ${XpathProceed}
    log to console  element cliquer

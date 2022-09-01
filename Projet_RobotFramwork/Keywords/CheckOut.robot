*** Settings ***
Resource    ../Conf/Resources.txt
*** Keywords ***

je saisis les champs

    Wait Until Element Is Visible    ${XpathFirstName}
    Input Text    ${XpathFirstName}    ${Firstname}
    Input Text    ${XpathLastName}    ${Lastname}
    Input Text    ${XpathEmail}    ${E-mail}
    Input Text    ${XpathPhone}    ${Phone}
    Input Text    ${XpathAdress}    ${Adress}
    Input Text    ${XpathCity}    ${city}
    #Input Text    ${XpathState}    ${State}
    Input Text    ${XpathZip}    ${Zip}
      log to console  elements remplis

je choisis un methode de paiement
  Page should contain radio button    ${XpathRadiobutton}
  select radio button    ${NameRadioButton}    ${ValueRadioButton}



je click sur le bouton "placeorder"

    Wait until element is visible    ${XpathPlace}    ${default_long_timeout}
    click element    ${XpathPlace}
    log to console  element cliquer

*** Keywords ***

Je suis dans la page panier
    Wait Until Element Is Visible    ${button_panier}    ${default_timeout}
    Click Element    ${button_panier}
    Wait until element is visible    ${page_panier}
    Log to console    Je suis dans la page panier

Je clique sur le bouton "Proceed Checkout"
    Click element     ${xpath_proceedtocheckout}
    Log to console  Le bouton Proceed to checkout est cliqué
    Sleep    15s

Je serais rediriger vers la page "Checkout"
    Wait until element is visible    ${checkout_page}
    Log to console   Je suis dans la page checkout
*** Keywords ***

J'ai déja ajouté un article dans le panier
    No operation

Je clique sur le panier
    Wait Until Element Is Visible    ${button_panier}    ${default_timeout}
    Click Element    ${button_panier}
    Log to console  Bouton Panier cliquer

Je suis sur la page panier
    Element Should Be Visible   ${page_panier}
    Log to console    page panier vérifier

La page panier affichera les détails de l'article ajouté
    [Arguments]   ${article_name}    ${price}    ${quantity}    ${total_price}
    Wait until Element Is Visible    ${page_panier}
    Element Should Contain    ${xpath_articlename}     ${article_name}
    Log to console    Article name vérifier
    Element Should Contain    ${xpath_price}     ${price}
    Log to console    Price bien vérifier
    Wait until Element Is Visible     ${xpath_quantity}    ${default_long_timeout}
    ${value_quantity}   Get value     ${xpath_quantity}
    Log to console    la valeur de la quantité : ${value_quantity}
    Should be equal    ${value_quantity}    ${quantity}
    #Element text should be    ${xpath_quantity}     $'}}
    Element Should Contain    ${xpath_totalprice}     ${total_price}
    Log to console     Tous les élements sont vérifiés!

Le bouton de suppression s'affichera
    Element Should Be Enabled    ${xpath_delete_button}
    Log to console    Bouton de suppression vérifier

Le champ quantité sera modifiable
    Element Should Be Enabled    ${xpath_quantity}
    Log to console  l'element quantity est modifiable

Le pavet "Basket Totals" s'affichera avec ces éléments
    [Arguments]    ${subtotal}    ${tax}    ${total}
     Wait until Element Is Visible     ${xpath_basket_title}    ${default_long_timeout}
     Log to console     le titre Basket Totals est visible
     Element Should Contain    ${xpath_basket_subtotal}    ${subtotal}
     Log to console     le Subtotal est bien vérifier
     Element Should Contain    ${xpath_basket_tax}    ${tax}
     Log to console     la taxe est bien vérifier
     Element Should Contain    ${xpath_basket_totalprice}    ${total}
     Log to console     le totale est bien vérifier

Le bouton "Proceed To Checkout" s'affichera
    Wait until element is visible    ${page_panier}
    Element Should Be Enabled    ${xpath_proceedtocheckout}
    Log to console      Le bouton proceed to chekcout est bien vérifier

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






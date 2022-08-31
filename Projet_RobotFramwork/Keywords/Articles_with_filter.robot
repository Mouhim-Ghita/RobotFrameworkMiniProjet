*** Keywords ***

je clique sur "Shop"
   [Documentation]     ce keyword permet de cliquer sur Shop
    Wait Until Element Is Visible    ${Xpath_shop}      ${default_timeout}
    log to console     Opening Shoping page
    Click Element    ${Xpath_shop}

les articles en vente sont affichés
     [Documentation]     ce keyword permet de voir les articles apres le filtre par catégorie
     Wait Until Element Is Visible   ${Xpath_articles_affiche}      ${default_timeout}
     log to console     les articles sont bien affichés

je clique sur la catégorie
    [Arguments]    ${Xpath_categorie_name}
    [Documentation]     ce keyword permet de cliquer sur la catégorie souhaitée
     Wait Until Element Is Visible  ${Xpath_categorie_name}      ${default_timeout}
     log to console     la catégorie souhaité bien affiché
     Click Element    ${Xpath_categorie_name}

Toutes les articles avec la catégorie choisie s'affichent
        [Arguments]    ${url_categ_choisi}
        [Documentation]     ce keyword permet d'afficher les articles qui ont la catégorie choisie
        Location Should be    ${url_categ_choisi}
        log to console     on est dans la bonne catégorie

les articles s'affichent avec une photo, un libellé et un prix
        [Arguments]    ${xpath_photo}    ${xpath_libelle}    ${xpath_prix}
        [Documentation]     ce keyword permet de verifier si les articles s'affichent avec photo, prix, libelle
        Page Should Contain Element    ${xpath_photo}
        log to console    La photo est bien affiché
        Page Should Contain Element     ${xpath_libelle}
        log to console    la libellé est bien affiché
        Page Should Contain Element    ${xpath_prix}
        log to console    Le prix est bien affiché
        sleep   3s






Close du navigateur
    Close Browser

*** Keywords ***
Je suis dans la page "MYACCOUNT"
    Wait Until Element Is Visible    ${xpaths_dashboard}    ${default_long_timeout}
    Click element    ${xpaths_dashboard}
    Log To Console    la page ouverte est MyACCOUNT
Je clique sur le bouton "ORDERS"
    Wait until element is visible    ${xapths_order}    ${default_long_timeout}
    click element    ${xapths_order}
    Log to console    element bien cliquer
Un tableau des commandes avec un bouton View s'affiche
    Wait Until element is visible    //a[contains(text(),'View')]    ${default_long_timeout}
    Log to console    le tableau existe avec succés
Je clique sur le bouton "View"
    click element    //a[contains(text(),'View')]
la page contient "<Numero de commande>" et "<Date de commande>"
    Wait until element is visible    ${xpath_numero_ordre}    ${default_long_timeout}
    ${valeur_N_ordre}    get text    ${xpath_numero_ordre}
    Log To Console    Numero de commande est visible et sa valeur est: ${valeur_N_ordre}
    Wait until element is visible    ${xpath_Date_de_commande}
    ${valeur_date_comande}    get text    ${xpath_Date_de_commande}
    Log To Console    Date de commande est visible et sa valeur est: ${valeur_date_comande}

un tableau avec "<Montant de commande>","<Moyen de paiement>" est affiché
    Wait until element is visible    ${xpath_Montant_de_commande}    ${default_long_timeout}
    ${valeur_montant}    get text    ${xpath_Montant_de_commande}
    Log to console    le montant existe et sa valeur est: ${valeur_montant}
    Wait until element is visible    ${xpath_Moyen_de_paiement}    ${default_long_timeout}
    ${valeur_moyen_paiement}    get text    ${xpath_Moyen_de_paiement}
    Log to console    le moyen de paiement existe et sa valeur est: ${valeur_moyen_paiement}
un tableau contenant les informations de clients "<email>" et "<telephone>" est affiché
    wait until element is visible    ${xpath_email_historique}    ${default_long_timeout}
    ${valeur_email}    get text    ${xpath_email_historique}
    log to console    le mail du client est bien affiché ${valeur_email}
    wait until element is visible    ${xpath_phone_historique}    ${default_long_timeout}
    ${valeur_phone}    get text    ${xpath_phone_historique}
    log to console    le telephone du client est bien affiché: ${valeur_phone}
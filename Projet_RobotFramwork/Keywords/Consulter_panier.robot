
*** Keywords ***
j'ai basculé vers l'article souhaité
     [Arguments]     ${article_name}
    [Documentation]     ce keyword permet de basculer vers l'article souhaité
     Wait Until Element Is Visible   ${article_name}      ${default_long_timeout}
     Mouse Over    ${article_name}
     log to console     hovering the mouse over the article well done

j'ai cliquée sur le boutton "Add to Basket" pour ajouter l'article souhaité au panier
        [Arguments]     ${xpath_Add_To_Basket}
        [Documentation]     ce keyword permet d'ajouter un article au panier
         Wait Until Element Is Visible    ${article_name}      ${default_timeout}
          log to console     le bouton "Add to basket" est bien affiché
          Click Element    ${xpath_Add_To_Basket}
          log to console     "Add to Basket" button was clicked

le lien "View Basket" est ajouté au dessus de l'article
        [Documentation]     ce keyword permet d'ajouter un article au panier
         Wait Until Element Is Visible    ${xpath_view_basket}      ${default_timeout}
         Page Should Contain Link    ${xpath_view_basket}
         log to console  le lien "view basket" est bien affiché sur la page


je clique sur le lien "view Basket"
       [Arguments]     ${xpath_view_basket}
       [Documentation]     ce keyword permet de cliquer sur le link VIEW baseket
       Click Link    ${xpath_view_basket}
       log to console  le lien "view basket" est bien cliqué

je vais me rediriger vers la page de panier
        [Arguments]    ${url_panier}
        [Documentation]     ce keyword permet d'afficher les articles qui ont la catégorie choisie
        Location Should be    ${url_panier}
        log to console     on est dans l'éspace panier

l'article choisi est bien ajouté dans l'espace panier
         [Arguments]    ${table_aricles}
         Table Cell Should Contain    ${table_aricles}    2    3    ${article_namee}
         log to console     le produit ${article_namee}est bien ajouté
          sleep   3s

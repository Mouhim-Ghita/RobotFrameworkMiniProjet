
*** Keywords ***
je suis sur la page des articles filtrés par une catégorie
     Wait until element is visible    //h3[contains(.,'JS')]    ${default_long_timeout}
     log to console    nous sommes dans la bonne categorie

je bascule vers l'article souhaité
     [Arguments]     ${article_name}
    [Documentation]     ce keyword permet de basculer vers l'article souhaité
     Wait Until Element Is Visible   ${article_name}      ${default_long_timeout}
     Mouse Over    ${article_name}
     log to console     hovering the mouse over the article well done

je clique sur le boutton "Add to Basket" pour ajouter l'article souhaité au panier
        [Arguments]     ${xpath_Add_To_Basket}
        [Documentation]     ce keyword permet d'ajouter un article au panier
         Wait Until Element Is Visible    ${article_name}      ${default_timeout}
          log to console     le bouton "Add to basket" est bien affiché
          Click Element    ${xpath_Add_To_Basket}
          log to console     "Add to Basket" button was clicked

le lien "View Basket" sera ajouter au dessus de l'article
        [Documentation]     ce keyword permet d'ajouter un article au panier
         Wait Until Element Is Visible    ${xpath_view_basket}      ${default_timeout}
         Page Should Contain Link    ${xpath_view_basket}
         log to console  le lien "view basket" est bien affiché sur la page
          sleep   3s

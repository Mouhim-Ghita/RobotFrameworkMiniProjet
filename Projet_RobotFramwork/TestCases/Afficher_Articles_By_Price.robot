*** Settings ***
Suite Setup    Open Browser And Login
Resource  ../Conf/Resources.txt

*** Test Cases ***

Scenario: Afficher les articles filtrés par catégorie
     Given je clique sur "Shop"
     And les articles en vente sont affichés
     When je clique sur la catégorie    ${Xpath_categorie_name}
     Then Toutes les articles avec la catégorie choisie s'affichent    ${url_categ_choisi}
     And les articles s'affichent avec une photo, un libellé et un prix    ${xpath_photo}    ${xpath_libelle}    ${xpath_prix}

Scenario: Ajouter un article au panier et conulter le panier
      Given je suis sur la page des articles filtrés par une catégorie
      When je bascule vers l'article souhaité    ${article_name}
      And je clique sur le boutton "Add to Basket" pour ajouter l'article souhaité au panier    ${xpath_Add_To_Basket}
      Then le lien "View Basket" sera ajouter au dessus de l'article
Scenario: Consulter le panier apres l'ajout d'un article

       Given je suis sur la page des articles filtrés par une catégorie
       And j'ai basculé vers l'article souhaité    ${article_name}
       And j'ai cliquée sur le boutton "Add to Basket" pour ajouter l'article souhaité au panier    ${xpath_Add_To_Basket}
       And le lien "View Basket" est ajouté au dessus de l'article
       When je clique sur le lien "view Basket"    ${xpath_view_basket}
       Then je vais me rediriger vers la page de panier    ${url_panier}
       And l'article choisi est bien ajouté dans l'espace panier    ${table_aricles}








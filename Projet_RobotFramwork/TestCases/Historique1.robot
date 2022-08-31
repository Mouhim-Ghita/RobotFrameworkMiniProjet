*** Settings ***
Test Setup    Open Browser And Login
Resource  ../Conf/Resources.txt
*** Test Cases ***
Historique1
    Given Je suis dans la page "MYACCOUNT"
    When Je clique sur le bouton "ORDERS"
    Then Un tableau des commandes avec un bouton View s'affiche

Historique2
   Given Je suis dans la page "MYACCOUNT"
   When Je clique sur le bouton "ORDERS"
   And Un tableau des commandes avec un bouton View s'affiche
   And Je clique sur le bouton "View"
   Then la page contient "<Numero de commande>" et "<Date de commande>"
   And un tableau avec "<Montant de commande>","<Moyen de paiement>" est affiché
   And un tableau contenant les informations de clients "<email>" et "<telephone>" est affiché



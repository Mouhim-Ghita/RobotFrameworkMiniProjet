*** Settings ***
Resource    ../Conf/Resources.txt
*** Keywords ***


je suis rederiger vers la page de confirmation

   Wait until element is visible    ${checkout_page}
   log to console    nous somme dans la page de confirmation

je verifie les details de la commande
    Wait until element is visible    ${XpathOrderReceived}

    ${Order_Number}    Get text    ${XpathVerifOrderNumber}
    ${Date}    Get text    ${XpathVerifDate}
    ${Total}    Get text    ${XpathVerifTotal}
    ${Payment_Methode}    Get text    ${XpathVerifMethode}
    ${Product_name}    Get text    ${XpathVerifProductName}
    ${Product_Quantity}    Get text    ${XpathVerifProductquatity}

    log to console    ${Order_Number}
    log to console    Order ${Date}
    log to console    Order ${Total}
    log to console    ${Payment_Methode}
    log to console    Product Name : ${Product_name}
    log to console    Product Quantity : ${Product_Quantity}
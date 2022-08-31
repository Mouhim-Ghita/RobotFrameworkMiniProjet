*** Settings ***
Resource    ../Conf/Resources.txt
Test Setup   TestSetUp

*** Variables ***
${Lambdatest_url}    https://www.lambdatest.com
${navigateur}   chrome
${valeur_recherchee}   Cross Browser\nTesting Cloud
${Name}     Hakima
${Email}    souad12@gmail.com
${Password}     commitzakariae
${Phone}        0635621846
${PhoneError}       Please enter your phone
${EmailVerification}        Please verify your email
*** Test Cases ***

TestLambdaAccueil
    OuvrirUrlLambda     ${Lambdatest_url}       ${navigateur}
    VerifierElement     ${TitrePage}        ${valeur_recherchee}
    CliquerButton       ${SignupButton}
    Remplirleschamps    ${Name}     ${Email}        ${Password}
    Sleep   5s
    RemplirPhone        ${Phone}
    CliquerButton       ${XpathFreeSignup}
    VerifierElement    ${XpathVerificationEmail}       ${EmailVerification}

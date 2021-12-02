*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${Browser}      chrome
${homepage}     automationpractice.com/index.php
${scheme}       http
${testURL}      ${scheme}://${homepage}

*** Keyword ***
Open Homepage
    Open Browser    ${testURL}     ${Browser}

*** Test Cases ***
001 Hacer Click en Contenedores
    Open Homepage
    Set Global Variable     @{nombreDeContenedores}     /html/body/div/div[2]/div/div[2]/div/div[1]/ul[1]/li[1]/div/div[2]/h5/a     /html/body/div/div[2]/div/div[2]/div/div[1]/ul[1]/li[2]/div/div[2]/h5/a     /html/body/div/div[2]/div/div[2]/div/div[1]/ul[1]/li[3]/div/div[2]/h5/a
    FOR    ${nombreDeContenedor}   IN      @{nombreDeContenedores}
       Wait Until Element is Visible    xpath=${nombreDeContenedor}
       Click Element       xpath=${nombreDeContenedor}
       Wait Until Element is Visible   xpath=//*[@id="bigpic"]
       Click Element       xpath=/html/body/div/div[1]/header/div[3]/div/div/div[1]/a/img
    END
    Close Browser

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
001 Abrir página y cambiar tamaño
    Open Browser    https://mobilepractice.io/      chrome
    Wait Until Element is Visible   xpath=//*[@id="hs-eu-confirmation-button"]
    Click Element   xpath=//*[@id="hs-eu-confirmation-button"]
    Set Window Size     767     600
    Element Should Be Visible    xpath=/html/body/header/div[3]/button
    Set Window Size      1000       600
    Element Should Not Be Visible    xpath=/html/body/header/div[3]/button
    Close Browser

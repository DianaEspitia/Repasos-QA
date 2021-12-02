*** Settings ***
Documentation   Existe en un documento de texto los pasos manuales

Library         Selenium2Library

*** Variables ***
${palabrasBuscar}   casos de prueba
${Buscador}     chrome
${URL}      https://www.google.com/

*** Test Cases ***
G001 Búsqueda de palabras en google
    Open Browser    ${URL}    ${Buscador}
    Wait Until Element is Visible    xpath=//*[@id="hplogo"]
    Input Text      xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    ${palabrasBuscar}
    Click Element       xpath=//*[@id="hplogo"]
    Click Element       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be     ${palabrasBuscar} - Buscar con Google
    Page Should Contain     ${palabrasBuscar}
    Close Browser

G002 Hacer click en el botón de búsqueda sin escribir palabras en Google
    Open Browser    ${URL}    ${Buscador}
    Wait Until Element is Visible    xpath=//*[@id="hplogo"]
    Click Element       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser
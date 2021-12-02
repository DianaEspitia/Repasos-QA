*** Settings ***
Documentation   Existe en un documento de texto los pasos manuales
Library         Selenium2Library

*** Variables ***
${palabrasBuscar}   casos de prueba
${Buscador}     chrome
${URL}      https://www.google.com/

*** Keywords ***
Abrir Navegador y Esperar Logo
    Open Browser    ${URL}    ${Buscador}
    Wait Until Element is Visible    xpath=//*[@id="hplogo"]
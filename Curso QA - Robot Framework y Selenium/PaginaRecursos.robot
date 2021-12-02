*** Settings ***
Resource    recursos.robot

*** Test Cases ***
G001 Búsqueda de palabras en google
    Abrir Navegador y Esperar Logo
    Input Text      xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    ${palabrasBuscar}
    Click Element       xpath=//*[@id="hplogo"]
    Click Element       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be     ${palabrasBuscar} - Buscar con Google
    Page Should Contain     ${palabrasBuscar}
    Close Browser

G002 Hacer click en el botón de búsqueda sin escribir palabras en Google
    Abrir Navegador y Esperar Logo
    Click Element       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser
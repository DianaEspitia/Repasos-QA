*** Settings ***
Library     SeleniumLibrary
Resource     recursos.robot

*** Test Cases ***
001 Ir al blog de Wiston Castillo
    Open homepage
    Title Should Be     Hola Mundo!
    Set Focus to Element   xpath=/html/body/div[1]/div/div[2]/a[1]
    Click Link   xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element is Visible   xpath=/html/body/div[1]/div[1]/div[1]/div/div/div/a
    Title Should Be     Winston Castillo – Un sitio para comunicarse

002 Abrir ventana modal
    [Tags]      TestError
    Open homepage
    Title Should Be     Hola Mundo!
    Set Focus to Element   xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link      xpath=/html/body/div[1]/div/div[2]/a[2]
    Title Should Be     Hola Mundo!
    Wait Until Element is Visible   xpath=/html/body/div[2]/div/div/div[1]



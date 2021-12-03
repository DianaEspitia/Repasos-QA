*** Settings ***
Library     String
Resource    recursos.robot

*** Variables ***
${Homepage}     http://automationpractice.com/index.php
@{items}       1        2       3       4       5       6       7

*** Test Cases ***
AP001 Verificar que la previsualización está funcionando correctamente a través del icono del ojo
    Open Browser        ${Homepage}         ${browser}
    Set Focus to Element    css=#home-page-tabs > li.active > a
    Set Window Size     1100    900
    Set Selenium Speed      0.2 second
    FOR     ${cadaItem}     IN      @{items}
        Set Focus to Element    css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > div.quick-view-wrapper-mobile > a > i
        ${NombreTitulo}=    Get Text    css=#homefeatured > li:nth-child(${cadaItem}) > div > div.right-block > h5 > a
        Click Element   css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > div.quick-view-wrapper-mobile > a > i
        Wait Until Element is Visible   css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
        Select Frame    css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
        Wait Until Element is Visible   css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1
        Element Text Should Be      css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1     ${NombreTitulo}
        Unselect Frame
        Click Element   css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a
    END
    Close Browser



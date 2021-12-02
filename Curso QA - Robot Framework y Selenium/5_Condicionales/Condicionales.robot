***Setting***
Library     SeleniumLibrary

***Variables***
${Browser}      chrome
${homepage}     http://automationpractice.com/
${Seleccion}    Other

***Keyword***
Select Women Option
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Title Should Be     Women - My Store

Select Dresses Option
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[2]/a
    Title Should Be     Dresses - My Store

***Test Cases***
001 Caso con Condicionales
    Open Browser    ${homepage}     ${Browser}
    Wait Until Element is Visible       xpath=//*[@id="header_logo"]/a/img
    Run Keyword If      '${Seleccion}'=='Women'     Select Women Option     Else    Select Dresses Option
    Close Browser

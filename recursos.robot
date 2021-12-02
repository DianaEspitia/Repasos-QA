*** Settings ***
Library     String

*** Variables ***
${Browser}      chrome
${homepage}     http://www.winstoncastillo.com/udemy/

*** Keyword ***
Open homepage
    Open Browser    ${homepage}     ${Browser}


*** Settings ***
Documentation   Existe en un documento de texto los pasos manuales

Library         Selenium2Library


*** Test Cases ***
G001 Búsqueda de palabras en google
    Open Browser    https://www.google.com/    chrome
    Wait Until Element is Visible    xpath=//*[@id="hplogo"]
    Input Text      xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    casos de prueba
    Click Element       xpath=//*[@id="hplogo"]
    Click Element       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be     casos de prueba - Buscar con Google
    Page Should Contain     casos de prueba
    Close Browser







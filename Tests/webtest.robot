*** Settings ***
Documentation  hello
Library  SeleniumLibrary

*** Test Cases ***
User Can Access Website

        [Documentation]
        [Tags]  Test 1
        Open Browser  about:blank  chrome
        Go To https//www.mediamarkt.se
        Wait Until Page Contains  Om Mediamarkt
        Close Browser
*** Settings ***
Documentation  hello
Library     SeleniumLibrary
Resource  ../Resources/keywords.robot
Suite Setup  Start Test
Suite Teardown  End Test



*** Test Cases ***
User Can Access WebSite
    [Documentation]  Test for Access Of WebPage
    [Tags]  Test 1
    Go To Web Page

User Can Access Website And Search For A Product
    [Documentation]    test info
    [Tags]  Test 2
    Go To Web Page
    Search For Product  Game & Watch: The Legend Of Zelda  Game & Watch: The Legend Of Zelda

User Can Search For Another Product
    [Documentation]  hello
    [Tags]  Test 3
    Go To Web Page
    Search For Product  NINTENDO Switch 2019 - Grå  NINTENDO Switch 2019 - Grå


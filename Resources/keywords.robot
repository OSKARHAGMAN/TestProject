*** Settings ***
Library   ../Scripts/remove_parenthesis.py

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.mediamarkt.se
*** Keywords ***
Start Test
    Open Browser  about:blank  ${BROWSER}

Go To Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains  Om MediaMarkt

Search For Product
    [Arguments]  ${Search-Term}
    Enter Search Term  ${Search-Term}
    Submit Search
    Verify Search Completed

Enter Search Term
    [Arguments]  ${Search-Term}
    Input Text  //*[@id="search-autocomplete"]/form/input[1]  ${Search-Term}
Submit Search
    Press Keys   //*[@id="search-autocomplete"]/form/input[1]  RETURN

Verify Search Completed
    Wait Until Page Contains Element  //*[@id="category"]/hgroup/h1/em
    ${Element-Text}  Get Text  //*[@id="category"]/hgroup/h1/em
    ${Actual-Amount}  convert_into_number  ${Element-Text}
    Should Be True  ${Actual-Amount}  >0

End Test
    Close Browser

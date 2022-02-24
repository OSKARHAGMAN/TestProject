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
    [Arguments]  ${Search-Term}  ${Search-Result}
    Enter Search Term  ${Search-Term}
    Submit Search
    Verify Search Completed  ${Search-Result}

Enter Search Term
    [Arguments]  ${Search-Term}
    Input Text  //*[@id="search-autocomplete"]/form/input[1]  ${Search-Term}
Submit Search
    Press Keys   //*[@id="search-autocomplete"]/form/input[1]  RETURN

Verify Search Completed
    [Arguments]  ${Search-Result}
    Wait Until Page Contains   ${Search-Result}

End Test
    Close Browser

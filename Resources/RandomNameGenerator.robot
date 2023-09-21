*** Settings ***
Library    String

*** Keywords ***
Generate Random First Name
    ${first_names}    Create List    John    Jane    Michael    Sarah    David
    ${random_first_name}    Evaluate    random.choice($first_names)
    [Return]    ${random_first_name}

Generate Random Last Name
    ${last_names}    Create List    Smith    Johnson    Brown    Davis    Wilson
    ${random_last_name}    Evaluate    random.choice($last_names)
    [Return]    ${random_last_name}

Generate Random Email
    ${random_string}    Generate Random String    10    [NUMBERS][LOWER]
    ${email}    Set Variable    ${random_string}@example.com
    [Return]    ${email}

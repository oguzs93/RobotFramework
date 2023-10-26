*** Settings ***
Library    String
Library    Collections
Variables  email      

*** Variables ***
${random_first_name}
${random_last_name}
${email}

*** Keywords ***
Generate Random First Name
    ${first_names}    Create List    John    Jane    Michael    Sarah    David
    ${random_first_name}        Evaluate    random.choice($first_names)
    [Return]    ${random_first_name}

Generate Random Last Name
    ${last_names}    Create List    Smith    Johnson    Brown    Davis    Wilson
    ${random_last_name}    Evaluate    random.choice($last_names)
    [Return]    ${random_last_name}

Generate Random Email
    ${random_string}    Generate Random String    10    [NUMBERS][LOWER]
    Set global Variable  ${email}      ${random_string}@example.com
    [Return]    ${email}

Generate Random city
    ${city}    Create List    Amsterdam    Utrecht    Almere    Lelystad    Eindhoven    Tilburg    Rotterdam
    ${random_city}    Evaluate    random.choice($city)
    [Return]    ${random_city}



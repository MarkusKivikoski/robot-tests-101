*** Settings ***
Library    PythonKeywords.py
Library    REST

*** Variables ***
${thing} =  Default

*** Keywords ***
Check Array Length
    GET     http://espoonkopsu.fi:8022/data/things/
    ${arrayOfThings} =    Array  $.things
    return array Length     ${arrayOfThings}

Set Input Element
    ${thing} =  generate thing
    Set Global Variable     ${generatedThing}  ${thing}
    Fill Text   id=thing ${generatedThing}
    ${text} =   Get Text    id=thing
    Log To Console  ${text}

Say Hello World
    Log To Console    Hello World

Call A Library Keyword
    Lib Keyword    Hello Robot

Fill Thing Input
    ${text} =   Get Text    id=thing
    Fill Text   id=thing     macaroni
    Log To Console  ${text}

Answer Questions
    Click   id=answer_radio_yes_1
    Click   id=answerradio_yes_5

Submit Answers
    Click   .btn-primary

Check Answer
    GET     http://espoonkopsu.fi:8022/data/things/
    ${arrayOfThings} =    Array  $.things
    Integer  $.things[*].id
    find answer ${arrayOfThings} ${generatedThing}

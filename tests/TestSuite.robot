*** Settings ***
Library     Browser
Resource    keywords.resource
Resource    variables.resource

*** Test Cases ***

Test Teaching
    New Page    http://espoonkopsu.fi:8022/teach
    Get Title   ==  Things
    Fill Thing Input
    Answer Questions
    Submit Answers
    Check Answer
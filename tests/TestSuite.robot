*** Settings ***
Library     Browser
Resource    keywords.resource
Resource    variables.resource
*** comment ***
*** Test Cases ***
Test Case 1
    Say Hello World

Example Test
    New Page    http://espoonkopsu.fi:8022/
    Get Title   ==  Things


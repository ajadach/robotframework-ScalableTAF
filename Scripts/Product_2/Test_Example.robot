*** Settings ***
Resource    ..${/}..${/}Resources${/}Product_Keywords${/}Project_2${/}PK-Handler.robot

*** Test Cases ***
Example
    Log    TEST IMPORT
    PK-Example.Example PK Keyword

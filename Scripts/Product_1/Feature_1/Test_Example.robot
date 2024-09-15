*** Settings ***
Resource    ..${/}..${/}..${/}Resources${/}Product_Keywords${/}Project_1${/}PK-Handler.robot

Force Tags    test_example

*** Test Cases ***
Example
    Log    TEST IMPORT
    GK-Example.GK Keyword Example

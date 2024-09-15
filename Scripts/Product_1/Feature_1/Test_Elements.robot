*** Settings ***
Resource    ..${/}..${/}..${/}Resources${/}Product_Keywords${/}Project_1${/}PK-Handler.robot

Test Setup    Run Keywords    FK-DemoQA.Open Browser And Navigate To Page    url=${ui_url}
Test Teardown    DemoQADriver.Close Browser

Force Tags    TEST

*** Test Cases ***
Feature 1: Test 1
    PK-DemoQA.Flow

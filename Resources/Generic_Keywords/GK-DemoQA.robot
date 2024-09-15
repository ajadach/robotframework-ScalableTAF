*** Settings ***
Resource    ..${/}Functionality_Keywords${/}FK-Handler.robot

*** Keywords ***
Elements CheckBox: Navigate To Page And Choose Parameters And Read All Parameters
    [Documentation]    Elements CheckBox: Navigate To Page And Choose Parameters And Read All Parameters
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...    | param_and_values | list of couples param and value | Downloads   Notes |
    ...    | expected_data | dict of expected param with value. One key results with list of expected files | result=['downloads', 'wordFile', 'excelFile'] |
    ...
    ...    *Steps:*
    ...    - FK-DemoQA.Elements CheckBox: Navigate To Page
    ...    - FK-DemoQA.Elements CheckBox: Choose Parameters
    ...    - FK-DemoQA.Elements CheckBox: Read And Verify All Parameters
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | results | list of values |
    [Arguments]    @{param_and_values}    &{expected_values}
    FK-DemoQA.Elements CheckBox: Navigate To Page
    FK-DemoQA.Elements CheckBox: Choose Parameters    @{param_and_values}
    ${result}    FK-DemoQA.Elements CheckBox: Read And Verify All Parameters    &{expected_values}
    RETURN    ${result}

Elements TextBox: Navigate To Page And Choose Parameters And Read All Parameters
    [Documentation]    Elements TextBox: Navigate To Page And Choose Parameters And Read All Parameters
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...    | param_and_values | list of couples param and value | Downloads   Notes |
    ...
    ...    *Steps:*
    ...    - FK-DemoQA.Elements TextBox: Navigate To Page
    ...    - FK-DemoQA.Elements TextBox: Choose Parameters
    ...    - FK-DemoQA.Elements TextBox: Read And Verify All Parameters
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | results | list of values |
    [Arguments]    @{param_and_values}    &{expected_data}
    FK-DemoQA.Elements TextBox: Navigate To Page
    FK-DemoQA.Elements TextBox: Choose Parameters    @{param_and_values}
    ${result}    FK-DemoQA.Elements TextBox: Read And Verify All Parameters    &{expected_data}
    RETURN    ${result}
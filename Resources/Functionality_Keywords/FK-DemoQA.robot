*** Settings ***
Resource    Libs_And_Variables_Handler.robot


*** Keywords ***
Open Browser And Navigate To Page
    [Documentation]    Open Browser And Navigate To Page.
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...
    ...    *Steps:*
    ...    - DemoQADriver.Open Browser
    ...    - DemoQADriver.Navigate To Page
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | Nothing | None |
    DemoQADriver.Open Browser
    DemoQADriver.Navigate To Page

Elements CheckBox: Navigate To Page
    [Documentation]    Elements CheckBox: Navigate To Page.
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...
    ...    *Steps:*
    ...    - DemoQADriver.Elements.Navigate To Page
    ...    - DemoQADriver.Elements.CheckBox.Navigate To Page
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | Nothing | None |
    DemoQADriver.Navigate To Page
    DemoQADriver.Elements.Navigate To Page
    DemoQADriver.Elements.CheckBox.Navigate To Page

Elements CheckBox: Choose Parameters
    [Documentation]    Elements CheckBox: Choose Parameters.
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...    | param_and_values | list of couples param and value | Downloads   Notes |
    ...
    ...    *Steps:*
    ...    - DemoQADriver.Elements.CheckBox.Choose Parameters
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | Nothing | None |
    [Arguments]    @{param_and_values}
    DemoQADriver.Elements.CheckBox.Choose Parameters    @{param_and_values}

Elements CheckBox: Read And Verify All Parameters
    [Documentation]    Elements CheckBox: Read And Verify All Parameters.
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...    | expected_data | dict of expected param with value. One key results with list of expected files | result=['downloads', 'wordFile', 'excelFile'] |
    ...
    ...    *Steps:*
    ...    - DemoQADriver.Elements.CheckBox.Read All Parameters
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | results | list of values |
    [Arguments]    &{expected_values}
    ${result}    DemoQADriver.Elements.CheckBox.Read And Verify All Parameters    &{expected_values}
    RETURN    ${result}

Elements TextBox: Navigate To Page
    [Documentation]    Elements TextBox: Navigate To Page.
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...
    ...    *Steps:*
    ...    - DemoQADriver.Elements.Navigate To Page
    ...    - DemoQADriver.Elements.TextBox.Navigate To Page
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | Nothing | None |
    DemoQADriver.Navigate To Page
    DemoQADriver.Elements.Navigate To Page
    DemoQADriver.Elements.TextBox.Navigate To Page

Elements TextBox: Choose Parameters
    [Documentation]    Elements TextBox: Choose Parameters.
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...    | param_and_values | list of couples param and value | Full Name    Artur Ziolkowski |
    ...
    ...    *Steps:*
    ...    - DemoQADriver.Elements.TextBox.Choose Parameters
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | Nothing | None |
    [Arguments]    @{param_and_values}
    DemoQADriver.Elements.TextBox.Choose Parameters    @{param_and_values}

Elements TextBox: Read And Verify All Parameters
    [Documentation]    Elements TextBox: Read And Verify All Parameters
    ...
    ...    *Arguments:*
    ...    | =Name= | =Description= | =Example value= |
    ...    | expected_data | dict of expected param with value | Name=Artur Ziolkowski |
    ...
    ...    *Steps:*
    ...    - DemoQADriver.Elements.TextBox.Read And Verify All Parameters
    ...
    ...    *Return:*
    ...    | =Description= | =Example value= |
    ...    | Nothing | None |
    [Arguments]    &{expected_data}
    ${result}    DemoQADriver.Elements.TextBox.Read And Verify All Parameters    &{expected_data}
    RETURN    ${result}

*** Settings ***
Resource    ..${/}..${/}Generic_Keywords${/}GK-Handler.robot

*** Keywords ***
Flow
    # There can be randomize for choose parameters and expected values
    ${expected_values}    Create List    notes    downloads    wordFile    excelFile
    ${files}    GK-DemoQA.Elements CheckBox: Navigate To Page And Choose Parameters And Read All Parameters    Downloads   Notes    result=${expected_values}
    # There can be randomize for choose parameters and expected values
    GK-DemoQA.Elements TextBox: Navigate To Page And Choose Parameters And Read All Parameters    Full Name    Artur Ziolkowski    Name=Artur Ziolkowski
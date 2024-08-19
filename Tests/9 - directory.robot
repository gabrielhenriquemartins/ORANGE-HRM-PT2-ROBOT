*** Settings ***
Resource   ../Resources/9 - directory/kw_directory.robot
Resource   ../Resources/2 - pim/kw_pim.robot
Resource   ../Resources/Common/common.robot
Suite Teardown   Close Browser

*** Test Cases ***
[Robot] Pim - Add Employee
    Log To Console  Jira Issue: OTS-113 
    Open Left Menu    PIM
    ${id}     Add Employee     first_name=Gabriel    last_name=Martins
    Set Global Variable    ${id}    ${id}
    Check Toast Message    Successfully Saved

[Robot] Directory - Find Professional
    Log To Console    Jira Issue: OTS-114 
    Open Left Menu    Directory
    Find Professional    Gabriel    Martins

[Robot] Pim - Delete Employee
    Log To Console  Jira Issue: OTS-115
    Open Left Menu    PIM
    Delete Employee    id=${id}
    Check Toast Message    Successfully Deleted
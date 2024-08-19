*** Settings ***
Resource   ../Resources/3 - leave/kw_leave.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   Leave

*** Test Cases ***
[Robot] Leave - Create Leave Type
    Log To Console  Jira Issue: OTS-96  
    ${random_number}     Generate Random String     length=8   chars=[NUMBERS]
    Set Global Variable    ${random_number}    ${random_number}
    Create Leave Type      type=Carnival${random_number}
    Check Toast Message    Successfully Saved

[Robot] Leave - Delete Leave Type
    Log To Console  Jira Issue: OTS-97 
    Delete Leave Type      type=Carnival${random_number}
    Check Toast Message    Successfully Deleted
*** Settings ***
Resource   ../Resources/10 - maintenance/kw_maintenance.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   Maintenance

*** Test Cases ***
[Robot] Maintenance - Candidate Records
    Log To Console    Jira Issue: OTS-79  
    Candidate Records    Software Engineer
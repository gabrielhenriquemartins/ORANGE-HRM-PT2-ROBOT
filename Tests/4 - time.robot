*** Settings ***
Resource   ../Resources/4 - time/kw_time.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   Time

*** Test Cases ***
[Robot] Time - Add Punch in Punch Out
    Log To Console   Jira Issue: OTS-98 
    Add Punch in Punch Out

[Robot] Time - Delete Punch in Punch Out
    Log To Console   Jira Issue: OTS-99 
    Delete Punch in Punch Out
    Check Toast Message    Successfully Deleted

[Robot] Time - Add Costumer
    Log To Console   Jira Issue: OTS-100 
    Add Customer    customer=Amazon
    Check Toast Message    Successfully Saved

[Robot] Time - Add Project and Activities
    Log To Console   Jira Issue: OTS-101 
    Add Project and Activities    project_name=Arquiteture    customer=Amazon    activity=Bug Fix
    Check Toast Message    Successfully Saved

[Robot] Time - Add Row in My Timesheet
    Log To Console   Jira Issue: OTS-102 
    Add Row in My Timesheet    project=Arquiteture    activity=Bug Fix
    Check Toast Message    Successfully Saved

[Robot] Time - Delete Costumer
    Log To Console   Jira Issue: OTS-103  
    Delete Customer    customer=Amazon
    Check Toast Message    Successfully Deleted
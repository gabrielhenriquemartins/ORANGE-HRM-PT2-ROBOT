*** Settings ***
Resource   ../Resources/7 - performance/kw_performance.robot
Resource   ../Resources/1 - admin/kw_admin.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   Performance

*** Test Cases ***
[Robot] Admin - Add Job Title
    Log To Console   Jira Issue: OTS-108
    Open Left Menu   Admin
    Add Job Title          Senior DevOps
    Sleep    3s
    Check Toast Message    Successfully Saved

[Robot] Performance - Add KPI
    Log To Console   Jira Issue: OTS-109
    Open Left Menu   Performance
    Add KPI       kpi=Active Defects    job_title=Senior DevOps 
    Check Toast Message    Successfully Saved

[Robot] Performance - Delete KPI
    Log To Console   Jira Issue: OTS-110 
    Open Left Menu   Performance
    Delete KPI    kpi=Active Defects
    Check Toast Message    Successfully Deleted
    
[Robot] Admin - Delete Job Title
    Log To Console   Jira Issue: OTS-111
    Open Left Menu   Admin 
    Delete Job Title       Senior DevOps
    Check Toast Message    Successfully Deleted
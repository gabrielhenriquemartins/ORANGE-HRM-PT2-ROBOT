*** Settings ***
Resource   ../Resources/2 - pim/kw_pim.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   PIM

*** Test Cases ***
[Robot] Pim - Add Termination Reason
    Log To Console  Jira Issue: OTS-92 
    Add Termination Reason    reason=Vacation
    Check Toast Message    Successfully Saved

[Robot] Pim - Delete Termination Reason
    Log To Console  Jira Issue: OTS-93 
    Delete Termination Reason   reason=Vacation
    Check Toast Message    Successfully Deleted

[Robot] Pim - Add Reporting Method
    Log To Console  Jira Issue: OTS-94 
    Add Reporting Method   method=One-o-One
    Check Toast Message    Successfully Saved

[Robot] Pim - Delete Reporting Method
    Log To Console  Jira Issue: OTS-95
    Delete Reporting Method   method=One-o-One
    Check Toast Message    Successfully Deleted
*** Settings ***
Resource   ../Resources/11 - claim/kw_claim.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   Claim

*** Test Cases ***
[Robot] Claim - Create an Event
    Log to Console   Jira Issue: OTS-80 
    Create an Event    Event Test
    Check Toast Message    Successfully Saved

[Robot] Claim - Delete Event
    Log To Console   Jira Issue: OTS-81 
    Delete Event    Event Test
    Check Toast Message    Successfully Deleted

[Robot] Claim - Create an Expense Type
    Log to Console   Jira Issue: OTS-82  
    Create an Expense Type    Expense Test
    Check Toast Message    Successfully Saved

[Robot] Claim - Submit Claim
    Log to Console   Jira Issue: OTS-83  
    Wait Until Keyword Succeeds   3x   2s    Submit Claim   Accommodation    Canadian Dollar
    Check Toast Message    Successfully Saved

[Robot] Claim - Add Expenses
    Log To Console   Jira Issue: OTS-84 
    Add Expenses    Expense Test    20
    Check Toast Message    Successfully Saved
    Verify Added Expense    Expense Test

[Robot] Claim - Delete Expenses
    Log To Console   Jira Issue: OTS-85 
    Delete Item
    Check Toast Message    Successfully Deleted

[Robot] Claim - Add PDF File
    Log To Console   Jira Issue: OTS-86 
    Add PDF File
    Verify Pdf Uploaded    pdf_test.pdf
    Check Toast Message    Successfully Saved

[Robot] Claim - Delete Pdf
    Log To Console   Jira Issue: OTS-87 
    Delete Item
    Check Toast Message    Successfully Deleted

[Robot] Claim - Delete Expense Type
    Log to Console   Jira Issue: OTS-88 
    Delete Expense Type    Expense Test
    Check Toast Message    Successfully Deleted


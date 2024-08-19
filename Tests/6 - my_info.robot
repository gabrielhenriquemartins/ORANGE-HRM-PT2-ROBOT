*** Settings ***
Resource   ../Resources/6 - my_info/kw_my_info.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   My Info

*** Test Cases ***
[Robot] Performance - Add PDF to Profile
    Log To Console   Jira Issue: OTS-106  
    Add PDF to Profile
    Verify Pdf Uploaded    pdf_test.pdf
    Check Toast Message    Successfully Saved

[Robot] Performance - Delete PDF from Profile
    Log To Console   Jira Issue: OTS-107 
    Delete PDF from Profile     pdf_test.pdf
    Check Toast Message    Successfully Deleted
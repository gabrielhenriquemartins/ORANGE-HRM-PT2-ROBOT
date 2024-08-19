*** Settings ***
Resource   ../Resources/1 - admin/kw_admin.robot
Resource   ../Resources/Common/common.robot
Suite Setup    Open Left Menu   Admin

*** Test Cases ***
[Robot] Admin - Add Location
    Log To Console   Jira Issue: OTS-68  
    Add Location           name=R&D   city=New York  state=California  
    Check Toast Message    Successfully Saved

[Robot] Admin - Delete Location
    Log To Console   Jira Issue: OTS-69 
    Delete Location        name=R&D
    Check Toast Message    Successfully Deleted

[Robot] Admin - Add Language
    Log To Console   Jira Issue: OTS-70 
    Add Language           language=Brazilian
    Check Toast Message    Successfully Saved

[Robot] Admin - Delete Language
    Log To Console   Jira Issue: OTS-71 
    Delete Language        language=Brazilian
    Check Toast Message    Successfully Deleted

[Robot] Admin - Add Membership
    Log To Console   Jira Issue: OTS-72 
    Add Membership     membership=ISTQB
    Check Toast Message    Successfully Saved

[Robot] Admin - Delete Membership
    Log To Console   Jira Issue: OTS-73 
    Delete Membership    membership=ISTQB
    Check Toast Message    Successfully Deleted

[Robot] Admin - Add Nationality
    Log To Console   Jira Issue: OTS-74 
    ${random_number}     Generate Random String     length=8   chars=[NUMBERS]
    Set Global Variable    ${random_number}    ${random_number}
    Add Nationality    nationality=Brazilian${random_number}
    Check Toast Message    Successfully Saved

[Robot] Admin - Delete Nationality
    Log To Console   Jira Issue: OTS-75 
    Delete Nationality    nationality=Brazilian${random_number}
    Check Toast Message    Successfully Deleted
    
[Robot] Admin - Send Email Configuration
    Log To Console   Jira Issue: OTS-76 
    Send Email Configuration   email_sender=test_sender@hotmail.com       email_destination=test_destination@hotmail.com
    Check Toast Message    Successfully Saved
    Check Toast Message    Test Email Sent

[Robot] Admin - Add Social Media Authentication
    Log To Console   Jira Issue: OTS-77 
    Add Social Media Authentication       name=provider_test   provider_url=provider.com   client_id=123456   client_secret=123456
    Check Toast Message    Successfully Saved

[Robot] Admin - Delete Social Media Authentication
    Log To Console   Jira Issue: OTS-78 
    Delete Social Media Authentication    name=provider_test
    Check Toast Message    Successfully Deleted
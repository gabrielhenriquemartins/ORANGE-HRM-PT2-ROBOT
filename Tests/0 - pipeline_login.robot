*** Settings ***
Resource   ../Resources/0 - login/kw_login.robot
Suite Setup      Wait Until Keyword Succeeds    5x    2s     Open Orange Home Page

*** Test Cases ***
[Robot] Home - Check Invalid Credentials
    Log To Console  Jira Issue: OTS-61
    Invalid Login

[Robot] Home - Check Required Username Message
    Log To Console  Jira Issue: OTS-62
    Username Required

[Robot] Home - Check Required Password Message
    Log To Console  Jira Issue: OTS-63 
    Password Required

[Robot] Home - Check Required Username and Password Message
    Log To Console  Jira Issue: OTS-64 
    Username and Password Required

[Robot] Home - Check Official Orange Home Page
    Log To Console  Jira Issue: OTS-65 
    Check Orange HRM link

[Robot] Home - Check Forgot Password and Email Message Sent
    Log To Console  Jira Issue: OTS-66 
    Check Forgot Password

[Robot] Home - Login as Admin
    Log To Console  Jira Issue: OTS-67 
    Login With the User Admin
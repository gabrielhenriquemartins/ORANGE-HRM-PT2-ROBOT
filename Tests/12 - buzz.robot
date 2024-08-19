*** Settings ***
Resource   ../Resources/12 - buzz/kw_buzz.robot
Resource   ../Resources/Common/common.robot
Suite Setup      Open Left Menu    Buzz

    
*** Test Cases ***
[Robot] Buzz - Post a Message
    Log To Console   Jira Issue: OTS-89 
    Write and Post    message=Hello There
    Check Toast Message    Successfully Saved

[Robot] Buzz - Check Published Message
    Log To Console   Jira Issue: OTS-90  
    Check Published Message    message=Hello There

[Robot] Buzz - Like a Message
    Log To Console   Jira Issue: OTS-91 
    React to the first Message with a Heart
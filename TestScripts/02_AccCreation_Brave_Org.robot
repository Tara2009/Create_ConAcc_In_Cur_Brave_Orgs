# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource          ../ConnectResourcefiles/BraveOrg_Connections.robot
Suite Setup       Setup Browser
Suite Teardown    End suite

*** Variables ***
${AccMessage}    Hup!Account Created Successfully.

*** Test Cases ***
Entering A Account
    [Tags]        Account
    Appstate      Home
    LaunchApp     Sales
    ClickText     Accounts
    ClickUntil    New Account                 New
    UseModal      On
    TypeText      Phone                       7207207174
    TypeText      Name                        tara siri Insurance82
    TypeText      Website                     www.tvsh.com
    VerifyText    Additional Information
    PickList      Type                        Prospect
    TypeText      Employees                   88
    PickList      Industry                    Apparel
    TypeText      Annual Revenue              84000000
    TypeText      Description                 New need to do hardwork to improve the business
    TypeText      Billing Street              My New House Hanumannagar 4th line
    TypeText      Billing City                guntur
    TypeText      Billing State/Province      ap
    TypeText      Billing Zip/Postal Code     522006
    TypeText      Billing Country             india
    TypeText      Shipping Street             My New House hanumannagar 4th line
    TypeText      Shipping City               guntur
    TypeText      Shipping State/Province     ap
    TypeText      Shipping Zip/Postal Code    52206
    TypeText      Shipping Country            india
    ClickText     Save                        partial_match=False
    UseModal      Off
    Log           ${AccMessage}

    ClickText     Details
    VerifyText    tara siri Insurance82
    VerifyText    7207207174
    VerifyText    www.tvsh.com

    # End Account creation test case

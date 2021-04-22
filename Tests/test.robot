*** Settings ***
Documentation           Testar att sätta igång ett prjekt och komma ut på hemsidan
Library                 SeleniumLibrary



*** Keywords ***


*** Test Cases ***

Accessing testscouts.se
    [Documentation]             Trying to acces the website testscouts.se
    [Tags]                      Test 1
    Set Selenium speed          1s
    Open Browser                about:blank  chrome
    go to                       http://www.testscouts.se
    wait until page contains    Test Scouts – proffs inom alla aspekter av test
    close browser

Clicking a link
    [Documentation]             Trying to click a click click link
    [Tags]                      Test 2
    Open Browser                about:blank  chrome
    go to                       http://www.testscouts.se
    wait until page contains    Test Scouts – proffs inom alla aspekter av test
    click link                  xpath://*[@id="top-menu"]/li[1]/a
    wait until page contains    Om oss
    close browser
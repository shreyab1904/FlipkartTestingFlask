*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_flipkart}  Flipkart
${url}  https://www.google.com/

*** Test Cases ***
Google search
    [Documentation]  google search test
    [Tags]  google
    start testcase
    input text  name:q  ${search_flipkart}
    submit form
    click element  class:LC20lb

Flipkart Product Search
    [Documentation]  searching products on flipkart website
    [Tags]  flipkart
    sleep  2s
    click button  class:_2KpZ6l
    flipkart search
    sleep  2s

Flipkart product seletion
    [Documentation]  selecting a product
    [Tags]  flipkart
    click element  xpath=//html/body/div/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[2]/div[1]/div[1]

Flipkart product buy
    [Documentation]  product purchase
    [Tags]  flipkart
    switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    click element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button


Flipkart User Login
    [Documentation]  login
    [Tags]  flipkart search
    sleep  5s
    input text  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[1]/input  test@gmail.com
    click button  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[3]/button

    stop testcase

*** Keywords ***
start testcase
    open browser  ${url}  chrome
    maximize browser window
stop testcase
    close browser
flipkart search
    input text  name:q  iphone13
    click button  class:L0Z3Pu

//
//  BDDUITests.swift
//  BDDUITests
//
//  Created by Shashikant Jagtap on 26/10/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//


/*
 
 Feature: Hello BDDX
 
 Scenario: Welcome User
 
   Given I launched app
   When I tap on Hello Button
   Then I should See Welcome Message
 
 */



import XCTest

enum HelloBDDXElements: String {
    
    case helloButton
    case welcomeText
    
    var element: XCUIElement {
        
        switch self {
        case .helloButton:
            return XCUIApplication().buttons["Hello"]
        case .welcomeText:
            return XCUIApplication().staticTexts["Welcome To BDDX"]
        }
        
    }
}



protocol HelloBDDX {
    
    func testWelcomeUser()
    
}

extension HelloBDDX {
    
    func givenILaunchedApp(){
        
        XCTContext.runActivity(named: "Given I launch My App") { (activity) in
            XCUIApplication().launch()
        }

    }
    
    func whenITapOnHelloButton() {
        XCTContext.runActivity(named: "When I tap on Hello Button") { (activity) in
            HelloBDDXElements.helloButton.element.tap()
            
            
        }
    }
    
    func thenIShouldSeeWelcomeMessage() {
        XCTContext.runActivity(named: "Then I should See Welcome Text ") { (activity) in
            XCTAssertTrue(HelloBDDXElements.welcomeText.element.exists)
        }

    }
    
}




class BDDUITests: XCTestCase, HelloBDDX {

    
    
    func testWelcomeUser() {
        givenILaunchedApp()
        whenITapOnHelloButton()
        thenIShouldSeeWelcomeMessage()
    }
    
    


        
    override func setUp() {
        super.setUp()
        
       
        continueAfterFailure = false
    
        

       
    }
    
    override func tearDown() {
        
        super.tearDown()
    }

    
}

//
//  SkyTrainingUITests.swift
//  SkyTrainingUITests
//
//  Created by Gary Behan on 23/08/2022.
//

import XCTest

class Lesson1_IntroductionUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        app.launch()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app.terminate()
    }

    func testAlert() throws {
        app.buttons["Alert"].tap()
        
        XCTAssert(app.alerts.element.staticTexts["This is a native alert"].exists)
        XCTAssertEqual(app.alerts.element.label, "Alert Test")
        
        app.alerts.scrollViews.otherElements.buttons["OK"].tap()
    }
    
    func testTextField() throws {
        let textToEnter = "Sky App Training Lesson 1"
        
        app.buttons["Text Field"].tap()
        
        let textField = app.textFields["TextField"]
        textField.tap()
        textField.typeText(textToEnter)
        
        XCTAssertEqual(app.staticTexts["SubmittedTextLabel"].label, textToEnter)
    }
}

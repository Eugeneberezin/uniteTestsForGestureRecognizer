//
//  UnitTestTapGestureTests.swift
//  UnitTestTapGestureTests
//
//  Created by Eugene Berezin on 7/11/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import XCTest
@testable import UnitTestTapGesture

class UnitTestTapGestureTests: XCTestCase {

    var window: UIWindow!
    var viewController: ViewController!
 
    
    override func setUpWithError() throws {
        super.setUp()
        window = UIWindow()
        let bundle = Bundle(for: ViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        loadView()
    }
    
    private func loadView() {
        window.addSubview(viewController.view)
        RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.5))
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTapGesture() throws {
        let tapGesture = UITapGestureRecognizer()
        tapGesture.state = .ended
        viewController.handleTap(tapGesture)
        XCTAssert(viewController.imageView.image == UIImage(systemName: "flag"))
        XCTAssert(viewController.imageLabel.text == "Flag image")
     
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

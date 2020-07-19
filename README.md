# How to unit test gesture recongizers. 

## Setup for unit test for a view controller:

1. Create a variable for the UIWindow and your view controller

    var window: UIWindow!
    var viewController: ViewController!
    
2.      window = UIWindow()

        let bundle = Bundle(for: ViewController.self)
        
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
        
3. Create a method to load your view:

        private func loadView() {
        window.addSubview(viewController.view)
        RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.5))
    }
    
4. Create a test for your gesture recognizer. Create an opbect for your gesture recognizer and provide a state of the gesture recognizer then assert the result of the tap gesture. 

       func testTapGesture() throws {
       
        let tapGesture = UITapGestureRecognizer()
        tapGesture.state = .ended
        viewController.handleTap(tapGesture)
        XCTAssert(viewController.imageView.image == UIImage(systemName: "flag"))
        XCTAssert(viewController.imageLabel.text == "Flag image")
        
     }

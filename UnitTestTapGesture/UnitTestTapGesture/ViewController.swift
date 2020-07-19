//
//  ViewController.swift
//  UnitTestTapGesture
//
//  Created by Eugene Berezin on 7/11/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLabel()
    }
    
    func configureLabel() {
        if imageView.image == UIImage(systemName: "flame.fill") {
            imageLabel.text = "Flame image"
        } else {
            imageLabel.text = "Flag image"
        }
    }
    
    
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        switch sender.state {
        case .began, .changed, .ended:
            if imageView.image == UIImage(systemName: "flag") {
                imageView.image = UIImage(systemName: "flame.fill")
                imageLabel.text = "Flame image"
            } else {
                imageView.image = UIImage(systemName: "flag")
                imageLabel.text = "Flag image"
            }
            
            
        default:
            break
        }
    }
    

}


//
//  guestureViewController.swift
//  UIKitProgrammatically
//
//  Created by Dilip Kumar on 29/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class guestureViewController: UIViewController {
    
    @IBOutlet weak var tapView: UIView!
    @IBOutlet weak var pinchView: UIView!
    @IBOutlet weak var swipeView: UIView!
    @IBOutlet weak var rotateView: UIView!
    @IBOutlet weak var longPressView: UIView!
    @IBOutlet weak var panView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gestures()
        
    }
    
    func gestures() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped(swipe:)))
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped(swipe:)))
        swipeRight.direction = .right
        swipeLeft.direction = .left
        swipeView.addGestureRecognizer(swipeLeft)
        swipeView.addGestureRecognizer(swipeRight)
    }
   
    @objc func swiped(swipe: UISwipeGestureRecognizer) {
        switch swipe.direction {
        case .left:
            print("swiped left")
        case .right:
            print("Swiped Right")
        default:
            print("Din't swipe")
        }
    }

}

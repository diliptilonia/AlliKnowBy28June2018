//
//  ViewController.swift
//  UIKitProgrammatically
//
//  Created by Dilip Kumar on 28/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
        createLabel()
        createTextField()
        createSC()
    }
    
    func createSC() {
        let items = ["Item1", "Item2", "Item3"]
        let mySC = UISegmentedControl(items: items)
        mySC.frame = CGRect(x: 10, y: 400, width: 400, height: 40)
        mySC.tintColor = .white
        mySC.selectedSegmentIndex = 1
        mySC.backgroundColor = .red
        mySC.addTarget(self, action: #selector(mySCPicked(_:)), for: .valueChanged)
        self.view.addSubview(mySC)
    }
    
    func createTextField() {
        let myTextField = UITextField()
        myTextField.frame = CGRect(x: 100, y: 130, width: 100, height: 40)
        myTextField.borderStyle = .line
        myTextField.layer.cornerRadius = 1
        myTextField.placeholder = "Type here"
        myTextField.keyboardType = .numbersAndPunctuation
        view.addSubview(myTextField)
    }

    func createButton()  {
        let myButton = UIButton()
        myButton.setTitle("Click Here", for: .normal)
        myButton.setTitleColor(UIColor.black, for: .focused)
        myButton.backgroundColor = .red
        myButton.frame = CGRect(x: 30, y: 300, width: 100, height: 30)
        myButton.addTarget(self, action: #selector(ViewController.myButtonClicked(_:)), for: .touchUpInside)
        view.addSubview(myButton)
    }
    
    func createLabel() {
        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 100, y: 50, width: 150, height: 39)
        myLabel.text = "Hello this is text"
        myLabel.textColor = .brown
        view.addSubview(myLabel)
    }
    
    @objc func myButtonClicked(_ sender: UIButton) {
    
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @objc func mySCPicked(_ sender: UISegmentedControl) {
        print("Print anythign")
    }

}


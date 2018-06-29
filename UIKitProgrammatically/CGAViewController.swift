//
//  CGAViewController.swift
//  UIKitProgrammatically
//
//  Created by Dilip Kumar on 29/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class CGAViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    let itemList = ["Item1", "Item2", "Item3"]
    let gender = ["Male", "Female"]
    
    var textfieldf: UITextField?
    var activeData = [String]()

    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self
        textfield2.delegate = self
        textfield1.delegate = self
        textfield2.inputView = picker
        textfield1.inputView = picker
        
        showPicker()
    }
    
    func showPicker() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneClicked))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelClicked))
        toolBar.setItems([doneButton, spaceButton, cancel], animated: true)
        textfield1.inputAccessoryView = toolBar
        textfield2.inputAccessoryView = toolBar
    }
    
    @objc func doneClicked() {
        textfieldf?.resignFirstResponder()
        self.view.endEditing(true)
    }
    
    @objc func cancelClicked() {
        textfieldf?.resignFirstResponder()
        dismiss(animated: true, completion: nil)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activeData.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldf?.text = activeData[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activeData[row]
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textfieldf = textField
        if textfieldf == textfield1 {
            activeData = itemList
        } else if textfieldf == textfield2 {
            activeData = gender
        }
    }
  

}

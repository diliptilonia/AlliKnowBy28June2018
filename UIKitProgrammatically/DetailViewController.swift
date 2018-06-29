//
//  DetailViewController.swift
//  UIKitProgrammatically
//
//  Created by Dilip Kumar on 29/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contactNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        contactNameTextField.text = sendDataToDetailView.name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

struct sendDataToDetailView {
    static var name: String?
    
    
}

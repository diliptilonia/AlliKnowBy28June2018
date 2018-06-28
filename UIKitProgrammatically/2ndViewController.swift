//
//  2ndViewController.swift
//  UIKitProgrammatically
//
//  Created by Dilip Kumar on 28/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class _ndViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var myTableView = UITableView()
    var contacts = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
     let urlString = URL(string: "http://jsonplaceholder.typicode.com/users")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, responce, error) in
                let json = try! JSONSerialization.jsonObject(with: data!, options: [])
                let wholeData = json as! NSArray
                self.contacts = wholeData.value(forKey: "name") as! [NSString] as [String]
                print(self.contacts)
            }
            task.resume()
        }
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayHeight: CGFloat = self.view.frame.height
        let displayWight: CGFloat = self.view.frame.width
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight + 20, width: displayWight, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        myTableView.delegate = self
        myTableView.dataSource = self
        self.view.addSubview(myTableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row]
        return cell
    }
    

}

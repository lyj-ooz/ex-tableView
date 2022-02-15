//
//  ViewController.swift
//  TablePractice
//
//  Created by YJ on 2022/02/15.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    let myData = ["first", "second", "third", "fourth", "fifth"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
    
        /*
        var content = cell.defaultContentConfiguration()
        content.text = myData[indexPath.row]
        cell.contentConfiguration = content
        */
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.backgroundColor = .orange
        return cell
    }

}


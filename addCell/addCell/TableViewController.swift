//
//  TableViewController.swift
//  addCell
//
//  Created by 김대연 on 2022/04/06.
//
import UIKit
class TableViewController : UITableViewController {
    
    let arr = ["a","b","c","d"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseldentifier", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        print("aaaa")
        return cell
    }
}

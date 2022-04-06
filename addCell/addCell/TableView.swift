//
//  TableView.swift
//  addCell
//
//  Created by 김대연 on 2022/04/06.
//

import UIKit

class TableView : ViewController,UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellindentifier = "this is zedd's cell"
    let arr = ["a","b","c","d"]
 
    override func viewDidLoad() {
     super.viewDidLoad()
        
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellindentifier)
   

     
        tableView.delegate = self
        tableView.dataSource = self
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellindentifier, for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
        
    }

    
    
}

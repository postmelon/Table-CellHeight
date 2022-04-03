//
//  ListViewController.swift
//  Table-CellHeight
//
//  Created by 김대연 on 2022/04/03.
//

import UIKit
class ListViewController : UITableViewController {
    
    var list = [String]()


    @IBAction func add(_ sender: Any) {
        let alert = UIAlertController(title: "루틴입력", message: "오늘의 루틴을 입력하새요", preferredStyle: .alert)
        
        alert.addTextField() { (tf) in
            tf.placeholder = "내용을 입력하세요"
        }
        let ok = UIAlertAction(title: "ok", style: .default) {(_) in
            
            if let title = alert.textFields?[0].text {
                self.list.append(title)
                self.tableView.reloadData()
            }
        }
        
        let cancel = UIAlertAction (title: "취소", style : .cancel, handler: nil)
        // 핸들러는 최소 누를때 할거 있으면 입력
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        
        self.present(alert, animated: true)
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
   
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.estimatedRowHeight = 50
        self.tableView.rowHeight = UITableView.automaticDimension
    }
    
    
    
}

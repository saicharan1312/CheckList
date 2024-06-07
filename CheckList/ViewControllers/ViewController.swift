//
//  ViewController.swift
//  CheckList
//
//  Created by Sai Charan Thummalapudi on 6/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkListTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initTable()
    }
    
    func initTable() {
        checkListTable.delegate = self
        checkListTable.dataSource = self
        checkListTable.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listObj.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = checkListTable.dequeueReusableCell(withIdentifier: "CheckListTableViewCell", for: indexPath) as! CheckListTableViewCell
        cell.itemImage.image = listObj[indexPath.row].image
        cell.itemLabel.text = listObj[indexPath.row].item
        cell.notificationLabel.text = listObj[indexPath.row].notification
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddListViewController") as! AddListViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


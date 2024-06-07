//
//  ListItemsViewController.swift
//  CheckList
//
//  Created by Sai Charan Thummalapudi on 6/5/24.
//

import UIKit

class ListItemsViewController: UIViewController {

    @IBOutlet weak var itemsTable: UITableView!
    var selected:[Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initItemsTable()
    }
    
    @IBAction func itemAction(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddItemViewController") as! AddItemViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func initItemsTable() {
        itemsTable.delegate = self
        itemsTable.dataSource = self
        itemsTable.reloadData()
    }
}

extension ListItemsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itemsTable.dequeueReusableCell(withIdentifier: "ItemsTableViewCell", for: indexPath) as! ItemsTableViewCell
        cell.itemName.text = listItems[indexPath.row]
        if selected.contains(indexPath.row) {
            cell.checkMark.isHidden = false
        } else {
            cell.checkMark.isHidden = true
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let index = selected.firstIndex(of: indexPath.row) {
            selected.remove(at: index)
        } else {
            selected.append(indexPath.row)
        }
        itemsTable.reloadData()
    }
}

//
//  PickIconViewController.swift
//  CheckList
//
//  Created by Sai Charan Thummalapudi on 6/5/24.
//

import UIKit

class PickIconViewController: UIViewController {

    @IBOutlet weak var pickIconTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initTable()
    }
    
    func initTable() {
        pickIconTable.delegate = self
        pickIconTable.dataSource = self
        pickIconTable.reloadData()
    }
}

extension PickIconViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconListObj.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = pickIconTable.dequeueReusableCell(withIdentifier: "PickIconTableViewCell", for: indexPath) as! PickIconTableViewCell
        if (indexPath.row == 0) {
            cell1.iconImageView.isHidden = true
        }
        else {
            cell1.iconImageView.image = iconListObj[indexPath.row].image1
        }
        cell1.iconName.text = iconListObj[indexPath.row].icon
        return cell1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ListItemsViewController") as! ListItemsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

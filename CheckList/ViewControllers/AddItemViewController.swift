//
//  AddItemViewController.swift
//  CheckList
//
//  Created by Sai Charan Thummalapudi on 6/6/24.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet weak var `switch`: UISwitch!
    @IBAction func addItemTf(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func dateTime(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DateViewController") as! DateViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

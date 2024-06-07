//
//  AddListViewController.swift
//  CheckList
//
//  Created by Sai Charan Thummalapudi on 6/5/24.
//

import UIKit

class AddListViewController: UIViewController {
    
    @IBOutlet weak var listTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pickIconAction(_ sender: Any) {
        let icontext = listTextField.text
        if (icontext!.count > 0) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PickIconViewController") as! PickIconViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
}

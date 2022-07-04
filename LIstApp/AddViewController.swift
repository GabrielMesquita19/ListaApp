//
//  AddViewController.swift
//  LIstApp
//
//  Created by User on 28/06/22.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var tfProduct: UITextField!
    @IBOutlet weak var tfQuantity: UITextField!
    
    var lt = ListManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func addItem(_ sender: Any){
        
        let pr = String(tfProduct.text ?? "0" )
        let qt = String(tfQuantity.text ?? "0")
        
        let list = Lists(product: pr, quantity: qt)
        lt.addItem(lista: list)
        navigationController?.popViewController(animated: true)
        
    }

}

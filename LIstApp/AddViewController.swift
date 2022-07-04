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
    
    
    func showMessage()  {
        let alert = UIAlertController(title: "Atenção", message: "Por favor, preencher todos os campos", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func addItem(_ sender: Any){
        
        let pr = String(tfProduct.text ?? "" )
        let qt = String(tfQuantity.text ?? "")
        
        if !pr.isEmpty && !qt.isEmpty {
            let list = Lists(product: pr, quantity: qt)
            lt.addItem(lista: list)
            navigationController?.popViewController(animated: true)
        }else{
            showMessage()
        }
        
        
    }
    
}

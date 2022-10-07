//
//  ViewController.swift
//  myfirstapp
//
//  Created by APPLE on 01/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pricetax: UITextField!
    
    @IBOutlet weak var salestax: UITextField!
    
    @IBOutlet weak var totalpricetax: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculatetotalprice(_ sender: Any) {
      
            let price = Double(pricetax.text!)!
            
            let salesTax = Double(salestax.text!)!
            
            let totalSalesTax = price*salesTax
            
            let totalPrice = price+totalSalesTax
            
            totalpricetax.text = "$\(totalPrice)"
            
        
    }
    
}


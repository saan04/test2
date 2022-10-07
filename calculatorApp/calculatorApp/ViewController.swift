//
//  ViewController.swift
//  calculatorApp
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNymber: Double = 0
    var performMathOp = false
    var operation = 0
    
    @IBOutlet weak var calclabel: UILabel!
    
    @IBAction func operatorbtn(_ sender: UIButton) {
        if calclabel.text != "" && sender.tag != 16 && sender.tag != 15{
            if sender.tag == 11{//addition
                calclabel.text = "+"
            }else if sender.tag == 12{//subtraction
                calclabel.text = "-"
            }else if sender.tag == 13{//division
                calclabel.text = "/"
            }else if sender.tag == 14{//multiplication
                calclabel.text = "*"
            }
            operation = sender.tag
            performMathOp = true
        }
        
    }
    
    @IBAction func operandbtn(_ sender: UIButton) {
        if performMathOp == true{
            calclabel.text = String(sender.tag-1)
            numberOnScreen = Double(calclabel.text!)!
            performMathOp = false
        }else{
            calclabel.text = calclabel.text! + String(sender.tag-1)
            numberOnScreen = Double(calclabel.text!)!
        }
        
    }
    
    @IBAction func resultbtn(_ sender: Any) {
    }
    
    @IBAction func clearbtn(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}


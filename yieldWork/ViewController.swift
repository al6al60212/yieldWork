//
//  ViewController.swift
//  yieldWork
//
//  Created by 董禾翊 on 2022/9/8.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var putInTextField: UITextField!
    @IBOutlet weak var yieldTextField: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var goodProductTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtn(_ sender: Any) {
        let putIn = Double(putInTextField.text!)
        let yield = Double(yieldTextField.text!)
        let goodProduct = Double(goodProductTextField.text!)
        if putIn != nil, yield != nil, goodProduct != nil{
            let resultYield = goodProduct! / putIn! * 100
            let need = putIn! * yield! / 100 - goodProduct!
            if resultYield < yield!{
                resultLable.text = "良率為\(String(format: "%.2f", resultYield))％，尚不足\(yield!)%，請補投\(String(format: "%.0f", need))以符合良率標準。"
            }else{
                resultLable.text = "良率為\(String(format: "%.2f", resultYield))%，以達到良率標準，請過帳至下製程。"
            }
            view.endEditing(true)
        }
        
    }
    @IBAction func clearBtn(_ sender: Any) {
        putInTextField.text = ""
        yieldTextField.text = ""
        goodProductTextField.text = ""
        resultLable.text = ""
        view.endEditing(true)
    }
}


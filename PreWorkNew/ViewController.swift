//
//  ViewController.swift
//  PreWorkNew
//
//  Created by sunhyeok on 2021/01/29.
//

import SwiftUI
import UIKit

extension UIColor {
    class var Color1dark: UIColor {
        return UIColor(named: "Color1dark")!
    }
    class var Color1light: UIColor {
        return UIColor(named: "Color1light")!
    }
    class var Color2dark: UIColor {
        return UIColor(named: "Color2dark")!
    }
    class var Color2light: UIColor {
        return UIColor(named: "Color2light")!
    }
}

class ViewController: UIViewController {
    
    

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var partiSize: UILabel!
    @IBOutlet weak var perperson: UILabel!
    @IBOutlet weak var navigationbar: UINavigationItem!
    
    
    @IBOutlet weak var billamountview: UIView!
    
    @IBOutlet weak var partysizeview: UIView!
    
    @IBOutlet weak var tipview: UIView!
    
    @IBOutlet weak var totalview: UIView!
    
    
    @IBOutlet weak var a: UILabel!
    @IBOutlet weak var b: UILabel!
    @IBOutlet weak var c: UILabel!
    @IBOutlet weak var d: UILabel!
    @IBAction func editing(_ sender: Any) {
        calculateTip()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"

        
        
        billAmountTextField.becomeFirstResponder()
        billAmountTextField.keyboardType = .decimalPad
        
        totalview.layer.cornerRadius = 3
        totalview.layer.masksToBounds = true
        billamountview.layer.cornerRadius = 3
        billamountview.layer.masksToBounds = true
        partysizeview.layer.cornerRadius = 3
        partysizeview.layer.masksToBounds = true
        tipview.layer.cornerRadius = 3
        tipview.layer.masksToBounds = true
        totalLabel.adjustsFontSizeToFitWidth = true
        
    }
    

    @IBAction func darkmode(_ sender: UISwitch) {
        if sender.isOn{
            billamountview.backgroundColor = .Color1dark
            partysizeview.backgroundColor = .Color1dark
            tipview.backgroundColor = .Color1dark
            totalview.backgroundColor = .Color2dark
            view.backgroundColor = .black
            partiSize.textColor = .white
            tipAmountLabel.textColor = .white
            totalLabel.textColor = .white
            a.textColor = .white
            b.textColor = .white
            c.textColor = .white
            d.textColor = .white
            
        }
        else{
            billamountview.backgroundColor = .Color1light
            partysizeview.backgroundColor = .Color1light
            tipview.backgroundColor = .Color1light
            totalview.backgroundColor = .Color2light
            view.backgroundColor = .white
            partiSize.textColor = .black
            tipAmountLabel.textColor = .black
            totalLabel.textColor = .black
            a.textColor = .black
            b.textColor = .black
            c.textColor = .black
            d.textColor = .black

        }
    }
    
    @IBAction func partisizeupdown(_ sender: UIStepper) {
        partiSize.text = Int(sender.value).description
        calculateTip()
    }
    
    
    @IBAction func butto(_ sender: Any) {
        calculateTip()
    }
    
    @IBAction func tipp(_ sender: Any) {
        calculateTip()
    }
    
   
    func calculateTip(){
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let partizsize = Double(partiSize.text!) ?? 0
        let per = (bill + tip) / partizsize
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perperson.text = String(format: "($%.2f per person)", per)
    }
    

    
    
    
    
}
    

    
    
    





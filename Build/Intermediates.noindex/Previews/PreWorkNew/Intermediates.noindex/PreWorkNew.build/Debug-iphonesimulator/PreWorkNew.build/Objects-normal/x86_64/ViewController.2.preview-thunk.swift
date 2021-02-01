@_private(sourceFile: "ViewController.swift") import PreWorkNew
import SwiftUI
import SwiftUI
import UIKit

extension ViewController_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/sunhyeok/Desktop/PreWorkNew/PreWorkNew/ViewController.swift", line: 46)
        /*@START_MENU_TOKEN@*/AnyView(Text(__designTimeString("#6102.[3].[0].property.[0].[0].arg[0].value", fallback: "Hello, World!")))/*@END_MENU_TOKEN@*/
    #sourceLocation()
    }
}

extension ViewController {
    @_dynamicReplacement(for: calculateTip(sender:)) @IBAction private func __preview__calculateTip(  sender: Any) {
        #sourceLocation(file: "/Users/sunhyeok/Desktop/PreWorkNew/PreWorkNew/ViewController.swift", line: 30)
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [__designTimeFloat("#6102.[2].[5].[1].value.[0]", fallback: 0.15), __designTimeFloat("#6102.[2].[5].[1].value.[1]", fallback: 0.18), __designTimeFloat("#6102.[2].[5].[1].value.[2]", fallback: 0.2)]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    #sourceLocation()
    }
}

extension ViewController {
    @_dynamicReplacement(for: viewDidLoad()) private func __preview__viewDidLoad() {
        #sourceLocation(file: "/Users/sunhyeok/Desktop/PreWorkNew/PreWorkNew/ViewController.swift", line: 24)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    #sourceLocation()
    }
}

import class PreWorkNew.ViewController
import struct PreWorkNew.ViewController_Previews
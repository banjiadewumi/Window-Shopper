//
//  ViewController.swift
//  Window Shopper
//
//  Created by Banji Adewumi on 12/12/18.
//  Copyright © 2018 Banji Adewumi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60.0))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.7581974334, blue: 0.05730451032, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) // Always use "setTitle" on a button instead of just "title".
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hideLabels()
        
    }

    @objc func calculate() {
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
               
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        hideLabels()
    }
    
    func hideLabels() {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        resultLbl.text! = ""
        hoursLbl.text! = ""
    }
    
}


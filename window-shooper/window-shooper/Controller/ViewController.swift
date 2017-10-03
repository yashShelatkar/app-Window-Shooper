//
//  ViewController.swift
//  window-shooper
//
//  Created by Yash Shelatkar on 2/10/17.
//  Copyright © 2017 Yash Shelatkar. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        // Do any additional setup after loading the view, typically from a nib.
    
            resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    
    @objc func calculate ()  {
        
        if let wageTxt = wageTxt.text , let priceText = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceText){
                
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage:wage, andPrice: price))"
            }
        }
        
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
    
            resultLbl.isHidden = true
            hoursLbl.isHidden = true
        wageTxt.text = " "
        priceTxt.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


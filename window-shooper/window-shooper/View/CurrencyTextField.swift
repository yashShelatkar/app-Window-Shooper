//
//  CurrencyTextField.swift
//  window-shooper
//
//  Created by Yash Shelatkar on 2/10/17.
//  Copyright © 2017 Yash Shelatkar. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLable = UILabel(frame:CGRect(x:5 , y: (frame.size.height/2) - size / 2 , width: size , height: size))
       currencyLable.backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.3024668236)
        currencyLable.textAlignment = .center
        currencyLable.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        currencyLable.layer.cornerRadius = 5.0
        currencyLable.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLable.text = formatter.currencySymbol
        addSubview(currencyLable)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
        
    }
        func customizeView(){
        
            backgroundColor = #colorLiteral(red: 0.9957658648, green: 0.9963412881, blue: 0.987329185, alpha: 0.25)
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            if placeholder == nil{
                placeholder = " "
            }
            
            if let p = placeholder{
                
                let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                clipsToBounds = true
                
            }
            
            
        }
        
    
    
    
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

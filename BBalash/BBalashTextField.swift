//
//  BBalashTextField.swift
//  BBalash
//
//  Created by karim saad on 9/10/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class BBalashTextField: UITextField {

    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.height/2
        self.layer.backgroundColor=UIColor.gray.cgColor
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 3
        self.textAlignment = .center
        self.textColor = UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        self.font = UIFont.systemFont(ofSize: self.frame.height*0.5)

        self.clipsToBounds = true
        
        self.attributedPlaceholder =
            NSAttributedString(string: self.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor.white])
        
        
    }
    func change_background(){
        let count1=self.text?.characters.count
        if(count1==0){
            self.layer.backgroundColor=UIColor.gray.cgColor
            self.layer.borderColor = UIColor.white.cgColor
        }else{
            self.layer.backgroundColor=UIColor.white.cgColor
            self.layer.borderColor = UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1).cgColor
        }
    
    }
    

}

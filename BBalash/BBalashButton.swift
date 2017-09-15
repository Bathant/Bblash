//
//  BBalashButton.swift
//  BBalash
//
//  Created by karim saad on 9/11/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class BBalashButton: UIButton {

    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.height/2
        self.layer.backgroundColor=UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 3
        self.setTitleColor(UIColor.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: self.frame.height*0.5)
        
        self.clipsToBounds = true
    }
    func change_background(num:Int){
        
        if(num==0){
            self.layer.backgroundColor=UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
        }else{
            self.layer.backgroundColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1).cgColor
            
        }
        
    }

}

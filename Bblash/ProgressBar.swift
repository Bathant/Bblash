//
//  ProgressBar.swift
//  Bblash
//
//  Created by starwallet on 9/11/17.
//  Copyright © 2017 starwallet. All rights reserved.
//

import UIKit
import Foundation
class ProgressBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
        print("iam here ?? ")
       
    let backview  =  UIView(frame: CGRect(x: rect.maxX, y: rect.maxY, width: 100   , height: 100))
        backview.backgroundColor  = UIColor.blue
        backview.layer.cornerRadius = backview.frame.height/2
        
      
        
        
   // let frontview  =  UIView(frame: CGRect(x: 0, y: view.frame.height*0.1, width: view.frame.width*0.2, height: view.frame.height*0.4))
        
    }
    

}

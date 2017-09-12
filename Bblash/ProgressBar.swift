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
     override func draw(_ rect: CGRect)  {
      
        

        
    }
    
    
    
    func ProgressBarDraw(_ rect: CGRect)->UIView{
    
        print("iam here ?? ")
        let progressbarview = UIView(frame: rect)
        progressbarview.backgroundColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1)
        progressbarview.layer.cornerRadius = progressbarview.frame.height/2
        let movableview = UIView(frame: CGRect(x: 0, y: 0, width: progressbarview.frame.width*0.07, height: progressbarview.frame.height))
        movableview.backgroundColor = UIColor(red: 0, green: 162/255, blue: 255/255, alpha: 1)
        movableview.layer.cornerRadius = movableview.frame.height/2
        let label  = UILabel(frame: CGRect(x: 0 , y: 0, width: movableview.frame.width, height: movableview.frame.height))
        label.text = "10"
        label.textColor = .white
        label.textAlignment = .center
        
        movableview.addSubview(label)
        
        let trackview = UILabel(frame: CGRect(x: progressbarview.frame.width*0.85, y: 0, width: progressbarview.frame.width*0.2, height: progressbarview.frame.height))
        trackview.text =  "120 جنيه"
        trackview.textColor = .red
        trackview.font = UIFont.boldSystemFont(ofSize:  UIScreen.main.bounds.width*0.03)
        
        
        progressbarview.addSubview(trackview)
        
        progressbarview.addSubview(movableview)
    
    return progressbarview
    
    }
    

}

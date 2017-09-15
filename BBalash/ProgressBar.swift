//
//  ProgressBar.swift
//  BBalash
//
//  Created by karim saad on 9/11/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class ProgressBar: UIView {

    var minprogress : CGFloat!
    var maxprogress : CGFloat!
    var Max : CGFloat!
    var label:UILabel!
    var label2:UILabel!
    var text_Max:String!
    var text_prog:String!
    var perviousMax:CGFloat!
    
   
    
    override func draw(_ rect: CGRect) {
        
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds=true
        
        
        let progressGray=UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width  , height: self.frame.height))
        progressGray.layer.cornerRadius = self.frame.height/2
        progressGray.backgroundColor=UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        progressGray.clipsToBounds=true
        self.addSubview(progressGray)
        
        if(minprogress==nil){
            minprogress=0
        }
        if(perviousMax==nil)
        {
            perviousMax = Max
        }
        print(minprogress)
        print(maxprogress)
        let progressBlue=UIView(frame: CGRect(x: 0, y: 0, width: minprogress*self.frame.width/perviousMax  , height: self.frame.height))
       //
        progressBlue.layer.cornerRadius = self.frame.height/2
        progressBlue.backgroundColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        progressBlue.clipsToBounds=true
        self.addSubview(progressBlue)
       
        UIView.animate(withDuration: 1.5){
           
            progressBlue.frame.size = CGSize(width: self.maxprogress*self.frame.width/self.Max, height: self.frame.height)
        }
        minprogress = maxprogress
        
        label = UILabel(frame: CGRect(x: 10, y: self.frame.height/4, width: self.frame.width/2, height: self.frame.height/2))
        label.textColor =  UIColor.init(red:1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: self.frame.height/2)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "0"
        
        
        label2 = UILabel(frame: CGRect(x: self.frame.width/2, y: self.frame.height/4, width: self.frame.width/2-10, height: self.frame.height/2))
        label2.textColor =  UIColor.init(red:1, green: 0, blue: 0, alpha: 1)
        label2.font = UIFont.systemFont(ofSize: self.frame.height/2)
        label2.numberOfLines = 0
        label2.textAlignment = .right
        
        if(text_Max != nil){
            label2.text=text_Max
        }
        if(text_prog != nil){
            label.text=text_prog
        }

        
        
        self.addSubview(label)
        self.addSubview(label2)
       
        print("drawn")
      
        

    }
   
    
    func UpdateProgress(max:CGFloat,minprog:CGFloat,maxprog:CGFloat,text_max:String,text_progress: String){
        minprogress=minprog
        maxprogress=maxprog
        perviousMax = Max
        Max=max
        text_Max = text_max
        text_prog = text_progress
        
        setNeedsDisplay()
       
    }
    

}

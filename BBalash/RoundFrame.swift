//
//  RoundFrame.swift
//  BBalash
//
//  Created by karim saad on 9/10/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import Foundation
import UIKit

class RoundFrame{

    func AddFrame(viewx:UIView,x:CGFloat,
                  y:CGFloat,width:CGFloat,height:CGFloat,stroke:Bool,stroke_color:UIColor,fill_color:UIColor,text_color:UIColor,text:String) -> UIButton{
    
        let view=UIView(frame: CGRect(x: x, y: y, width: width, height: height))
        view.layer.cornerRadius = height/2
        view.backgroundColor=fill_color
        if(stroke){
            view.layer.borderColor = stroke_color.cgColor
            view.layer.borderWidth = 3
        }
        view.clipsToBounds = true
        
        let Button=UIButton(frame: CGRect(x: 0, y: 0, width: width, height: height))
        Button.setTitle(text, for: .normal)
        Button.titleLabel?.font = UIFont.boldSystemFont(ofSize: Button.frame.width/15)
        Button.setTitleColor(text_color, for: .normal)
        view.addSubview(Button)
        
        viewx.addSubview(view)
        
        return Button
    }

    func ModifyFrame(viewx:UIView,stroke_color:UIColor,fill_color:UIColor,stroke:Bool){
        
        
        viewx.backgroundColor=fill_color
        if(stroke){
            viewx.layer.borderColor = stroke_color.cgColor
            viewx.layer.borderWidth = 3
        }
    }

    func AddFrameToLabels(viewx:UIView,x:CGFloat,
                  y:CGFloat,width:CGFloat,height:CGFloat,stroke:Bool,stroke_color:UIColor,fill_color:UIColor,text_color:UIColor,text:String) -> UILabel{
        
        let view=UIView(frame: CGRect(x: x, y: y, width: width, height: height))
        view.layer.cornerRadius = height/2
        view.backgroundColor=fill_color
        if(stroke){
            view.layer.borderColor = stroke_color.cgColor
            view.layer.borderWidth = 3
        }
        view.clipsToBounds = true
        
        let label=UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: label.frame.width/15)
        label.textColor = text_color
        view.addSubview(label)
        
        viewx.addSubview(view)
        
        return label
    }

}

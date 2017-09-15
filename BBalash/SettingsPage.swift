//
//  SettingsPage.swift
//  BBalash
//
//  Created by karim saad on 9/13/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import Foundation
import UIKit

class SettingsPage :UIViewController{
    
    var labeltext =  ["ضبط المستهدف و الإحصائيات","دليل الإستخدام","الشروط و الأحكام","التواصل و الإعلان معنا"]
    var main:MainScreen!
    
    override func viewDidLoad() {
        print("hello")
      
        
    }
    func setupManin(m:MainScreen){
    
    main = m
    
    }
    func setupUI(){
    
        let y1=settings(y: 0,text: labeltext[0],tag: 0)
        let y2=settings(y: y1,text: labeltext[1],tag: 1)
        let y3=settings(y: y2,text: labeltext[2],tag: 2)
        let y4=settings(y: y3,text: labeltext[3],tag: 3)
        
        shareapp(y: y4)
    
    }
    func shareapp(y:CGFloat){
    
    let shareview = UIView(frame: CGRect(x: 0, y: y-1, width: view.frame.width, height: view.frame.height*0.10))
        shareview.backgroundColor = UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        view.addSubview(shareview)
    
    
    let button=RoundFrame().AddFrame(viewx: shareview, x: shareview.frame.width*0.275, y: shareview.frame.height*0.2, width: shareview.frame.width*0.45, height: shareview.frame.height*0.6, stroke: true, stroke_color: .white, fill_color: Colors().Blue(), text_color: .white, text: "مشاركة التطبيق ")
        
        button.addTarget(self, action: #selector(Settings1_Button), for: .touchUpInside)
        button.tag=4
    
    }
    
    func settings(y: CGFloat,text:String,tag:Int) -> CGFloat{
        let viex_all=UIView(frame: CGRect(x: 0, y: y, width: view.frame.width, height: view.frame.height*0.10))
        
        let label = UILabel(frame: CGRect(x: viex_all.frame.width*0.05, y: viex_all.frame.height/2 - viex_all.frame.height*0.125, width: viex_all.frame.width*0.7, height: viex_all.frame.height*0.25))
        label.text=text
        label.textAlignment = .left
        label.textColor = Colors().Blue()
        label.font=UIFont.systemFont(ofSize: viex_all.frame.height*0.25)
        
        viex_all.addSubview(label)
        
        
        let Arrowindicator = UIImageView(frame: CGRect(x: viex_all.frame.width*0.8, y:viex_all.frame.height/2-viex_all.frame.width*0.08/2, width: viex_all.frame.width*0.08, height: viex_all.frame.width*0.08))
        Arrowindicator.image = #imageLiteral(resourceName: "Bluearrow")

        
        viex_all.addSubview(Arrowindicator)
        
        let Button=UIButton(frame: CGRect(x: 0, y: 0, width: viex_all.frame.width, height: viex_all.frame.height))
        Button.addTarget(self, action: #selector(Settings1_Button), for: .touchUpInside)
        Button.tag=tag
        viex_all.addSubview(Button)
        
        view.addSubview(viex_all)
        
        let line=UIView(frame: CGRect(x: 0, y: viex_all.frame.origin.y+viex_all.frame.height, width: view.frame.width, height: 1))
        line.backgroundColor=UIColor.init(red: 97/255, green: 97/255, blue: 97/255, alpha: 1)
        view.addSubview(line)
        
        return viex_all.frame.origin.y+viex_all.frame.height+1
    }
    
    
    
     func Settings1_Button(_ sender: UIButton!) {
        if(sender.tag==0){
            main.OpenTargetSettings()
        }
        else if(sender.tag==1){
            print("settings2")
        }
        else if(sender.tag==2){
            print("settings3")
        }
        else if(sender.tag==3){
            print("settings4")
        }
        else if(sender.tag==4){
            print("share")
        }
        //self.performSegue(withIdentifier: "NetworkType", sender: nil)
    }

    
    
    
}

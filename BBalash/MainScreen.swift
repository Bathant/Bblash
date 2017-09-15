//
//  MainScreen.swift
//  BBalash
//
//  Created by karim saad on 9/11/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit


class MainScreen: UIViewController{
    
    
    
    
    
    
    var gray_line:UIView!
    var progress:ProgressBar!
    var container:UIView!
    var backBtnView: UIView!
    var backBtn:UIButton!
    var Settingview : UIView!
    var TargetSettingview:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        ScreenUi()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func ScreenUi(){
        DefaultLogo().AddLogo3(view: view)
        
        
        let settingsview = UIView(frame: CGRect(x: view.frame.width*0.90-5 , y: 30, width: view.frame.width * 0.10, height: view.frame.width*0.10))
        
        let settingImage = UIImageView(frame: CGRect(x:0 ,y: 0, width: settingsview.frame.width, height: settingsview.frame.height))
        settingImage.image = #imageLiteral(resourceName: "settings_image")
        let setting_Btn = UIButton(frame: CGRect(x: 0, y: 0, width: settingsview.frame.width, height: settingsview.frame.height))
        
        
        
        settingsview.addSubview(settingImage)
        settingsview.addSubview(setting_Btn)
        setting_Btn.addTarget(self, action: #selector(OpenSettings), for: .touchUpInside)
        view.addSubview(settingsview)
        
        
        
        backBtnView = UIView(frame: CGRect(x: view.frame.width*0.05 , y: 30, width: view.frame.width * 0.10, height: view.frame.width*0.10))
        
        let backBtnImage = UIImageView(frame: CGRect(x:0 ,y: 0, width: backBtnView.frame.width, height: backBtnView.frame.height))
        backBtnImage.image = #imageLiteral(resourceName: "Bluearrow-1")
        let backBtn = UIButton(frame: CGRect(x: 0, y: 0, width: backBtnView.frame.width, height: backBtnView.frame.height))
        
        
        
        backBtnView.addSubview(backBtnImage)
        backBtnView.addSubview(backBtn)
        backBtn.addTarget(self, action: #selector(pervious_view), for: .touchUpInside)
        view.addSubview(backBtnView)
        
        
        
        
        
        
        
        progress=ProgressBar(frame: CGRect(x: 5, y: 25+view.frame.width*0.33*0.4+10, width: view.frame.width-10, height: view.frame.height*0.05))
        
        view.addSubview(progress)
        
        
        let charge = UserDefaults.standard.float(forKey: "charge")
        var cur_charge=UserDefaults.standard.float(forKey: "cur_charge")
        if (cur_charge==nil) {
            cur_charge=0
        }
        print(cur_charge)
        updateMyProgress(max: CGFloat(charge),mincur: 0,maxcur: CGFloat(cur_charge),max_text: String(charge),cur_text: String(cur_charge))
        print ("the last y  >>>>>>")
        print(progress.frame.origin.y+view.frame.height*0.05+10)
        print ("the whole screeen   >>>>>>")
        print(view.frame.height)
        
        //print(view.frame.height)
        gray_line=UIView(frame: CGRect(x: 0, y: progress.frame.origin.y+view.frame.height*0.05+10, width: view.frame.width, height: 3))
        gray_line.backgroundColor=UIColor.gray
        view.addSubview(gray_line)
        
        OpenVideos()
        // OpenTargetSettings()
        //OpenSettings()
        //let settingPage1=SettingsPage().GetFrame(view: view,y:gray_line.frame.origin.y+3,main:self)
        
        
    }
    func updateMyProgress(max: CGFloat,mincur:CGFloat,maxcur:CGFloat,max_text:String,cur_text:String) {
        self.progress.UpdateProgress(max: max,minprog: CGFloat(mincur),maxprog:CGFloat(maxcur),text_max: max_text,text_progress: String(describing: maxcur))
        print("!!!!!!!!!!!!!!!!!")
        print(max)
        UserDefaults.standard.set(Float(maxcur), forKey: "cur_charge")
        UserDefaults.standard.set(Float(max), forKey: "charge")
    }
    
    
    
    func OpenVideos(){
        backBtnView.isHidden = true
        if container != nil{
            container.isHidden = true
            
        }
        
        container=UIView(frame: CGRect(x: 0, y: gray_line.frame.origin.y+3, width: view.frame.width, height: view.frame.height))
        
        let controller=VideoPage()
        
        addChildViewController(controller)
        
        container.addSubview((controller.view)!)
      
        controller.didMove(toParentViewController: self)
        
        view.addSubview(container)
        
        controller.getScreen(main: self)
        
        
    }
    func pervious_view(_ sender : UIButton){
//        print("pervious view!!")
//           var subview =  container.subviews
//        print(subview.count)
//        print(subview.)
//        print(SettingsPage().view.description)
//        print(TargetSettings().view.description)
//        print(VideoPage().view.description)
//        //let n = subview.popLast()
//        //print()
//        if subview[0].description.isEqual(SettingsPage().view.description) {
//        print("i entered here !!")
//         self.OpenVideos()
//        }
//        else{
//        
//            if   subview[0] == TargetSettings().view{
//                print("i entered here ??")
//                self.OpenSettings()
//            }
      if Settingview.isDescendant(of: container)
      {
        OpenVideos()
        }
      else {
        
        OpenSettings()
        }
        
      
    
        
    }
    
    func OpenTargetSettings(){
        container.isHidden = true
        backBtnView.isHidden = false
        container=UIView(frame: CGRect(x: 0, y: gray_line.frame.origin.y+3, width: view.frame.width, height: view.frame.height))
        print("containeeeeeeer ")
        print(container.frame.height)
        let controller=TargetSettings()
        controller.setupMain(main: self)
        controller.setuiScreen()
        addChildViewController(controller)
        
        container.addSubview((controller.view)!)
        TargetSettingview = (controller.view)!
        controller.didMove(toParentViewController: self)
        
        view.addSubview(container)
        
        
    }
    
    
    func OpenSettings(){
        container.isHidden = true
        backBtnView.isHidden = false
        container=UIView(frame: CGRect(x: 0, y: gray_line.frame.origin.y+3, width: view.frame.width, height: view.frame.height-(25+view.frame.width*0.33*0.4+13+view.frame.height*0.05)))
        let controller=SettingsPage()
        controller.setupManin(m: self)
        controller.setupUI()
        addChildViewController(controller)
        container.addSubview((controller.view)!)
        Settingview = (controller.view)!
        controller.didMove(toParentViewController: self)
        
        view.addSubview(container)
        
    }
    
    
}

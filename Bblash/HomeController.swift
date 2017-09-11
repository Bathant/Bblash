//
//  HomeController.swift
//  Bblash
//
//  Created by starwallet on 9/10/17.
//  Copyright © 2017 starwallet. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    var AppIconView :UIView?
    var contentView : UIView?
    var arabicBTN :UIButton!
    var leadingContentView :NSLayoutConstraint!
    var topRegularContentView:NSLayoutConstraint!
    var bottomRegularContentView:NSLayoutConstraint!
    var HeightoficonViewConstraint :NSLayoutConstraint!
    var trailingoficonViewConstraint:NSLayoutConstraint!
    var arabicBtnConstraint :NSLayoutConstraint!
    var CompactHeightAnyWidth :[NSLayoutConstraint] =  []
    let color = UIColor.init(red: 0, green: 162/255, blue: 255/255, alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
       setupBackgroundImage()
        setupAppIconView()
        setupContentandLabels()
       
        // Do any additional setup after loading the view.
    }
    func setupBackgroundImage()
    {
        var backgroundimageview = UIImageView()
        backgroundimageview.translatesAutoresizingMaskIntoConstraints = false
        backgroundimageview.image = #imageLiteral(resourceName: "background")
        view.addSubview(backgroundimageview)
        NSLayoutConstraint(item: backgroundimageview, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: backgroundimageview, attribute: .leading  , relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: backgroundimageview, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: backgroundimageview, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        
    }
    func setupAppIconView()
    {
        AppIconView = UIView()
        AppIconView?.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(AppIconView!)
        trailingoficonViewConstraint = NSLayoutConstraint(item: AppIconView!, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        trailingoficonViewConstraint.isActive = true
        NSLayoutConstraint(item: AppIconView!, attribute: .leading  , relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: AppIconView!, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true
         HeightoficonViewConstraint =  NSLayoutConstraint(item: AppIconView!, attribute: .height, relatedBy: .equal, toItem:view, attribute: .height, multiplier: 0.5, constant: 0)
        HeightoficonViewConstraint.isActive = true
        
        
        var appiconimage = UIImageView()
        appiconimage.translatesAutoresizingMaskIntoConstraints = false
        appiconimage.image = #imageLiteral(resourceName: "App_Icon")
        AppIconView?.addSubview(appiconimage)
        NSLayoutConstraint(item: appiconimage, attribute: .centerX, relatedBy: .equal, toItem: AppIconView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: appiconimage, attribute: .top, relatedBy: .equal, toItem: AppIconView, attribute: .topMargin, multiplier: 1, constant: view.frame.height*0.03).isActive = true
        
        let bblashlabel = UILabel()
        bblashlabel.text = "bbalash بـــبــــلاش"
        bblashlabel.textColor = color
        bblashlabel.translatesAutoresizingMaskIntoConstraints = false
        bblashlabel.font = UIFont.init(name: "Helvetica-Bold", size: 35)
        AppIconView?.addSubview(bblashlabel)
        bblashlabel.topAnchor.constraint(equalTo: appiconimage.bottomAnchor, constant: 10).isActive = true
        bblashlabel.centerXAnchor.constraint(equalTo: AppIconView!.centerXAnchor, constant: 0).isActive = true
        
        let Engsubdetaillabel = UILabel()
        Engsubdetaillabel.text = "Your Mobile Bill Always Free"
        Engsubdetaillabel.textColor = .black
        Engsubdetaillabel.translatesAutoresizingMaskIntoConstraints = false
        Engsubdetaillabel.font = UIFont.init(name: "Helvetica", size: 16)
        AppIconView?.addSubview(Engsubdetaillabel)
        Engsubdetaillabel.topAnchor.constraint(equalTo: bblashlabel.bottomAnchor, constant: 10).isActive = true
        Engsubdetaillabel.centerXAnchor.constraint(equalTo: AppIconView!.centerXAnchor, constant: 0).isActive = true
        
        
        
        let Arabicsubdetaillabel = UILabel()
        Arabicsubdetaillabel.text = "فاتورة موبايلك ببلاش على طول"
        Arabicsubdetaillabel.textColor = .black
        Arabicsubdetaillabel.translatesAutoresizingMaskIntoConstraints = false
        Arabicsubdetaillabel.font = UIFont.init(name: "Helvetica", size: 16)
        AppIconView?.addSubview(Arabicsubdetaillabel)
        Arabicsubdetaillabel.topAnchor.constraint(equalTo: Engsubdetaillabel.bottomAnchor, constant: 5).isActive = true
        Arabicsubdetaillabel.centerXAnchor.constraint(equalTo: AppIconView!.centerXAnchor, constant: 0).isActive = true
        //Arabicsubdetaillabel.bottomAnchor.constraint(equalTo: AppIconView!.bottomAnchor, constant: 0).isActive = true
        

        
    }
    func setupContentandLabels()
    {
        
       
        contentView = UIView()
        contentView!.translatesAutoresizingMaskIntoConstraints = false
        //contentView?.backgroundColor = .black
        view.addSubview(contentView!)
        NSLayoutConstraint(item: contentView!, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
       leadingContentView =   NSLayoutConstraint(item: contentView!, attribute: .leading  , relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        leadingContentView.isActive = true
        topRegularContentView =  NSLayoutConstraint(item: contentView!, attribute: .top, relatedBy: .equal, toItem: AppIconView, attribute: .bottom, multiplier: 1, constant: 0)
        topRegularContentView.isActive = true
   bottomRegularContentView = NSLayoutConstraint(item: contentView!, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        bottomRegularContentView.isActive = true
        arabicBTN = setButton(Title: "عربي")
        contentView!.addSubview(arabicBTN)
        arabicBtnConstraint =  arabicBTN.topAnchor.constraint(equalTo: contentView!.topAnchor, constant: view.frame.height*0.16)
        arabicBtnConstraint.isActive = true
        arabicBTN.centerXAnchor.constraint(equalTo: contentView!.centerXAnchor, constant: 0).isActive = true
        NSLayoutConstraint(item: arabicBTN, attribute: .width, relatedBy: .equal, toItem: contentView, attribute: .width, multiplier: 0.5, constant: 0).isActive = true
        arabicBTN.heightAnchor.constraint(equalToConstant: 50)
       arabicBTN.titleLabel?.centerYAnchor.constraint(equalTo: arabicBTN.centerYAnchor, constant: -10).isActive = true
        var engBTN = setButton(Title: "English")
        contentView!.addSubview(engBTN)
        engBTN.topAnchor.constraint(equalTo: arabicBTN.bottomAnchor, constant: 20).isActive = true
        engBTN.centerXAnchor.constraint(equalTo: contentView!.centerXAnchor, constant: 0).isActive = true
        NSLayoutConstraint(item: engBTN, attribute: .width, relatedBy: .equal, toItem: contentView, attribute: .width, multiplier: 0.5, constant: 0).isActive = true
        engBTN.heightAnchor.constraint(equalToConstant: 45)
        
        //
        arabicBTN.addTarget(self, action:#selector(btnShowPasswordClickHoldDown), for: .touchDown)
        
        arabicBTN.addTarget(self, action:#selector(btnShowPasswordClickRelease), for: .touchUpInside)
        
        
        
        engBTN.addTarget(self, action:#selector(btnShowPasswordClickHoldDown), for: .touchDown)
        
        engBTN.addTarget(self, action:#selector(btnShowPasswordClickRelease), for: .touchUpInside)
        
    }
    func btnShowPasswordClickHoldDown(Sender : UIButton ){
        Sender.layer.borderWidth = 4
    }
    
    func btnShowPasswordClickRelease(Sender : UIButton){
       Sender.layer.borderWidth = 0
    }
    
    
    
    func setButton (Title : String) -> UIButton
    {
        let btn = UIButton()
        btn.setTitle(Title, for:.normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(color, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica", size: 45)
        
        let btnColor =  UIColor(red: 248/255, green: 186/255, blue: 0, alpha: 1)
        btn.layer.borderColor = btnColor.cgColor
        btn.titleLabel?.baselineAdjustment = .alignCenters
        btn.layer.cornerRadius = 8
        return btn
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        if self.traitCollection.verticalSizeClass == .regular
        {
           
          self.view.removeConstraints(CompactHeightAnyWidth)
            
            topRegularContentView.isActive = true
            bottomRegularContentView.isActive = true
            leadingContentView.isActive = true
             HeightoficonViewConstraint.isActive = true
            trailingoficonViewConstraint.isActive = true
            arabicBtnConstraint.isActive = true

            
        }
            
        else if self.traitCollection.verticalSizeClass == .compact  {
            bottomRegularContentView.isActive = false
            topRegularContentView.isActive = false
            leadingContentView.isActive = false
            HeightoficonViewConstraint.isActive = false
            trailingoficonViewConstraint.isActive = false
            arabicBtnConstraint.isActive = false
            
         CompactHeightAnyWidth.append(NSLayoutConstraint(item: AppIconView!, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0))
           // contentView?.backgroundColor = .blue
             CompactHeightAnyWidth.append(
                NSLayoutConstraint(item: arabicBTN, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 30))
             CompactHeightAnyWidth.append(NSLayoutConstraint(item: contentView!, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: view.frame.height * 1/6))
             CompactHeightAnyWidth.append(NSLayoutConstraint(item: contentView!, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: view.frame.height * 1/6 * -1))
            print("***************")
            print(view.frame.height * 1/6 * -1)
            
            CompactHeightAnyWidth.append(NSLayoutConstraint(item: contentView!, attribute: .leading, relatedBy: .equal, toItem: AppIconView, attribute: .trailing, multiplier: 1, constant: 0))
           
            CompactHeightAnyWidth.append(NSLayoutConstraint(item: contentView!, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.5, constant: 0))
           CompactHeightAnyWidth.append( NSLayoutConstraint(item: AppIconView!, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.5, constant: 0))
            
            let verticalLine =  UIView()
            verticalLine.translatesAutoresizingMaskIntoConstraints = false
            verticalLine.backgroundColor = .gray
            view.addSubview(verticalLine)
           CompactHeightAnyWidth.append (NSLayoutConstraint(item: verticalLine, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.003, constant: 0))
            CompactHeightAnyWidth.append(NSLayoutConstraint(item: verticalLine, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1, constant: 0))
            CompactHeightAnyWidth.append(NSLayoutConstraint(item: view, attribute: .centerX, relatedBy: .equal, toItem: verticalLine, attribute: .centerX, multiplier: 1, constant: -20))
             CompactHeightAnyWidth.append(NSLayoutConstraint(item: view, attribute: .centerY, relatedBy: .equal, toItem: verticalLine, attribute: .centerY, multiplier: 1, constant: 0))
            
            self.view.addConstraints(CompactHeightAnyWidth)
           
            
        }
        
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

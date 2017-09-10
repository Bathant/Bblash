//
//  ViewController.swift
//  Bblash
//
//  Created by starwallet on 9/10/17.
//  Copyright © 2017 starwallet. All rights reserved.
//

import UIKit

class SplachViewController: UIViewController {
    var backgroundimageview : UIImageView?
    var AppIconView : UIView?
    var contentView : UIView?
    var appiconimage : UIImageView?
    var HeightoficonViewConstraint :NSLayoutConstraint!
    var temporaryconstraint :  NSLayoutConstraint?
    var temporaryconstraint2 :  NSLayoutConstraint?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackgroundImage()
        setupAppIconView()
        setupContentandLabels()
       
        Timer.scheduledTimer(timeInterval: 100, target: self, selector: #selector(self.splashTimeOut(sender:)), userInfo: nil, repeats: false)
    }
    
  
    func setupBackgroundImage()
    {
         backgroundimageview = UIImageView()
       backgroundimageview?.translatesAutoresizingMaskIntoConstraints = false
        backgroundimageview?.image = #imageLiteral(resourceName: "background")
        view.addSubview(backgroundimageview!)
        NSLayoutConstraint(item: backgroundimageview!, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: backgroundimageview!, attribute: .leading  , relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: backgroundimageview!, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: backgroundimageview!, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        
    }
    
    func setupAppIconView()
    {
        AppIconView = UIView()
        AppIconView?.translatesAutoresizingMaskIntoConstraints = false
       
        view.addSubview(AppIconView!)
        NSLayoutConstraint(item: AppIconView!, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: AppIconView!, attribute: .leading  , relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: AppIconView!, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true
        HeightoficonViewConstraint =  NSLayoutConstraint(item: AppIconView!, attribute: .height, relatedBy: .equal, toItem:view, attribute: .height, multiplier: 0.5, constant: 0)
        HeightoficonViewConstraint.isActive = true
        
        
     appiconimage = UIImageView()
        appiconimage!.translatesAutoresizingMaskIntoConstraints = false
         appiconimage!.image = #imageLiteral(resourceName: "App_Icon")
            AppIconView?.addSubview(appiconimage!)
        NSLayoutConstraint(item: appiconimage!, attribute: .centerX, relatedBy: .equal, toItem: AppIconView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
         NSLayoutConstraint(item: appiconimage!, attribute: .bottom, relatedBy: .equal, toItem: AppIconView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        
        
    }
    
    
    
    func setupContentandLabels()
    {
        contentView = UIView()
        contentView?.translatesAutoresizingMaskIntoConstraints = false
        //contentView?.backgroundColor = .black
        view.addSubview(contentView!)
        NSLayoutConstraint(item: contentView!, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: contentView!, attribute: .leading  , relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: contentView!, attribute: .top, relatedBy: .equal, toItem: AppIconView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: contentView!, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.4, constant: 0).isActive = true
        
        let color = UIColor.init(red: 0, green: 162/255, blue: 255/255, alpha: 1)
        let bblashlabel = UILabel()
        bblashlabel.text = "bbalash بـــبــــلاش"
        bblashlabel.textColor = color
        bblashlabel.translatesAutoresizingMaskIntoConstraints = false
        bblashlabel.font = UIFont.init(name: "Helvetica-Bold", size: 45)
        contentView?.addSubview(bblashlabel)
        bblashlabel.topAnchor.constraint(equalTo: contentView!.topAnchor, constant: 20).isActive = true
        bblashlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        let Engsubdetaillabel = UILabel()
        Engsubdetaillabel.text = "Your Mobile Bill Always Free"
        Engsubdetaillabel.textColor = .black
        Engsubdetaillabel.translatesAutoresizingMaskIntoConstraints = false
        Engsubdetaillabel.font = UIFont.init(name: "Helvetica", size: 18)
        contentView?.addSubview(Engsubdetaillabel)
        Engsubdetaillabel.topAnchor.constraint(equalTo: bblashlabel.bottomAnchor, constant: 10).isActive = true
        Engsubdetaillabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        
        
        let Arabicsubdetaillabel = UILabel()
        Arabicsubdetaillabel.text = "فاتورة موبايلك ببلاش على طول"
        Arabicsubdetaillabel.textColor = .black
        Arabicsubdetaillabel.translatesAutoresizingMaskIntoConstraints = false
        Arabicsubdetaillabel.font = UIFont.init(name: "Helvetica", size: 18)
        contentView?.addSubview(Arabicsubdetaillabel)
        Arabicsubdetaillabel.topAnchor.constraint(equalTo: Engsubdetaillabel.bottomAnchor, constant: 10).isActive = true
        Arabicsubdetaillabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        let loadingIndicator  = UIImageView()
        loadingIndicator.image = #imageLiteral(resourceName: "loading")
        loadingIndicator.translatesAutoresizingMaskIntoConstraints = false
        contentView?.addSubview(loadingIndicator)
        loadingIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        loadingIndicator.bottomAnchor.constraint(equalTo: view!.bottomAnchor, constant: -20).isActive = true
        startRefreshing(LoadingImageView: loadingIndicator)
        
        
    }
    
  
    private func startRefreshing(LoadingImageView : UIImageView) {
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.isRemovedOnCompletion = false
        animation.toValue = .pi * 2.0
        animation.duration = 0.8
        animation.isCumulative = true
        animation.repeatCount = Float.infinity
        LoadingImageView.layer.add(animation, forKey: "rotationAnimation")
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
            if self.traitCollection.verticalSizeClass == .regular
            {
                if let constraint = temporaryconstraint{
                constraint.isActive = false
                temporaryconstraint2?.isActive = false
                }
                self.HeightoficonViewConstraint.isActive = true
                
            }
           
             else if self.traitCollection.verticalSizeClass == .compact  {
              temporaryconstraint2 =   NSLayoutConstraint(item: self.appiconimage!, attribute: .height, relatedBy: .equal, toItem: self.AppIconView, attribute: .height, multiplier: 0.8, constant: 0)
                temporaryconstraint2?.isActive = true
                self.HeightoficonViewConstraint.isActive = false
               temporaryconstraint = NSLayoutConstraint(item: self.AppIconView!, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.4, constant: 0)
                temporaryconstraint?.isActive = true
               
                
                
            }
            
        
    }
    
    func splashTimeOut(sender : Timer){
        let homecontr = HomeController()
        AppDelegate.sharedInstance().window?.rootViewController = homecontr
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   


}


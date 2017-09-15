//
//  ViewController.swift
//  BBalash
//
//  Created by karim saad on 9/10/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Arabic_frame : UIImageView?
    var English_frame : UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        ScreenUi();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func ScreenUi(){
        DefaultLogo().AddLogo1(view: view)
        
        let EnglishView=UIView(frame: CGRect(x: (view.frame.width/2)-(view.frame.height*0.14/2), y: view.frame.height-20-(view.frame.height*0.07), width: view.frame.height*0.14, height: view.frame.height*0.07))
        
        let EnglishButton=UIButton(frame: CGRect(x: 0, y: 0, width: EnglishView.frame.width, height: EnglishView.frame.height))
        EnglishButton.setTitle("English", for: .normal)
        EnglishButton.setTitleColor(UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1), for: .normal)
        EnglishButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: EnglishButton.frame.width/5)
        EnglishButton.addTarget(self, action: #selector(EnglishAction), for: .touchUpInside)
        EnglishView.addSubview(EnglishButton)
        
         English_frame=UIImageView(frame: CGRect(x: 0, y: 0, width: EnglishView.frame.width, height: EnglishView.frame.height))
        English_frame?.image=#imageLiteral(resourceName: "yellow_frame_image")
        English_frame?.isHidden=true
        EnglishView.addSubview(English_frame!)
        
        view.addSubview(EnglishView)
        
        
        let ArabicView=UIView(frame: CGRect(x: (view.frame.width/2)-(view.frame.height*0.14/2), y: EnglishView.frame.origin.y-(view.frame.height*0.07)-20, width: view.frame.height*0.14, height: view.frame.height*0.07))
        
        let ArabicButton=UIButton(frame: CGRect(x: 0, y: 0, width: ArabicView.frame.width, height: ArabicView.frame.height))
        ArabicButton.setTitle("عربي", for: .normal)
        ArabicButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: ArabicButton.frame.width/5)
        ArabicButton.setTitleColor(UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1), for: .normal)
       // ArabicButton.addTarget(self, action: #selector(ArabicAction), for: .touchUpInside)
        ArabicView.addSubview(ArabicButton)
        
         Arabic_frame=UIImageView(frame: CGRect(x: 0, y: 0, width: ArabicView.frame.width, height: ArabicView.frame.height))
        Arabic_frame?.image=#imageLiteral(resourceName: "yellow_frame_image")
        Arabic_frame?.isHidden=true
        ArabicView.addSubview(Arabic_frame!)
        ArabicButton.addTarget(self, action: #selector(ArabicAction), for: .touchUpInside)
        
        view.addSubview(ArabicView)

    }
    
    func EnglishAction(sender: UIButton!) {
        English_frame?.isHidden=false
        Arabic_frame?.isHidden=true
        UserDefaults.standard.set("en", forKey: "lang")
        self.performSegue(withIdentifier: "ToNetwork", sender: nil)
    }
    
    func ArabicAction(sender: UIButton!) {
        Arabic_frame?.isHidden=false
        English_frame?.isHidden=true
        UserDefaults.standard.set("ar", forKey: "lang")
        self.performSegue(withIdentifier: "ToNetwork", sender: nil)
    }
}


//
//  Networks.swift
//  BBalash
//
//  Created by karim saad on 9/10/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class Networks: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ScreenUi();
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func ScreenUi(){
        DefaultLogo().AddLogo1(view: view)
        
        let networks_view=UIView(frame: CGRect(x: 10, y: view.frame.height-10-view.frame.height*0.15, width: view.frame.width-20, height: view.frame.height*0.15))
        
        AddVodafone(viewx: networks_view)
        AddOrange(viewx: networks_view)
        AddEtisalat(viewx: networks_view)
        
        let title=UILabel(frame: CGRect(x: 5, y: networks_view.frame.origin.y-30, width: view.frame.width-10, height: 30))
        if(UserDefaults.standard.string(forKey: "lang")=="en"){
            title.text="Choose Network"
        }else{
            title.text="إختر شبكتك"
        }
        title.textAlignment = .center
        title.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        title.font = UIFont.boldSystemFont(ofSize: view.frame.width/20)
        view.addSubview(title)
        
        view.addSubview(networks_view)
    }
    
    func AddVodafone(viewx: UIView){
        let View=UIView(frame: CGRect(x: 0, y: 0, width: viewx.frame.width/3, height: viewx.frame.height))
        
        let Button=UIButton(frame: CGRect(x: 0, y: 0, width: View.frame.width, height: View.frame.height))
        Button.addTarget(self, action: #selector(VodafoneButton), for: .touchUpInside)
        View.addSubview(Button)
        
        let Image=UIImageView(frame: CGRect(x: View.frame.width/10, y: View.frame.height/10, width: View.frame.width-View.frame.width/5, height: View.frame.height-View.frame.height/5))
        Image.image=#imageLiteral(resourceName: "vodafone")
        
        View.addSubview(Image)
        
        viewx.addSubview(View)
    }
    func AddOrange(viewx: UIView){
        let View=UIView(frame: CGRect(x: viewx.frame.width/3, y: 0, width: viewx.frame.width/3, height: viewx.frame.height))
        
        let Button=UIButton(frame: CGRect(x: 0, y: 0, width: View.frame.width, height: View.frame.height))
        Button.addTarget(self, action: #selector(OrangeButton), for: .touchUpInside)
        View.addSubview(Button)
        
        let Image=UIImageView(frame: CGRect(x: View.frame.width/10, y: View.frame.height/10, width: View.frame.width-View.frame.width/5, height: View.frame.height-View.frame.height/5))
        Image.image=#imageLiteral(resourceName: "orange")
        
        View.addSubview(Image)
        
        viewx.addSubview(View)
    }
    func AddEtisalat(viewx: UIView){
        let View=UIView(frame: CGRect(x: viewx.frame.width*2/3, y: 0, width: viewx.frame.width/3, height: viewx.frame.height))
        
        let Button=UIButton(frame: CGRect(x: 0, y: 0, width: View.frame.width, height: View.frame.height))
        Button.addTarget(self, action: #selector(EtisalatButton), for: .touchUpInside)
        View.addSubview(Button)
        
        let Image=UIImageView(frame: CGRect(x: View.frame.width/10, y: View.frame.height/10, width: View.frame.width-View.frame.width/5, height: View.frame.height-View.frame.height/5))
        Image.image=#imageLiteral(resourceName: "etisalat")
        
        View.addSubview(Image)
        
        viewx.addSubview(View)
    }
    
    func VodafoneButton(sender: UIButton!) {
        UserDefaults.standard.set("vodafone", forKey: "lang")
        self.performSegue(withIdentifier: "NetworkType", sender: nil)
    }
    func OrangeButton(sender: UIButton!) {
        UserDefaults.standard.set("orange", forKey: "lang")
        self.performSegue(withIdentifier: "NetworkType", sender: nil)
    }
    func EtisalatButton(sender: UIButton!) {
        UserDefaults.standard.set("etisalat", forKey: "lang")
        self.performSegue(withIdentifier: "NetworkType", sender: nil)
    }
}

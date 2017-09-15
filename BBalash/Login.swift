//
//  Login.swift
//  BBalash
//
//  Created by karim saad on 9/10/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class Login: UIViewController {
    var charge : BBalashTextField?
    var number : BBalashTextField?
    var login : BBalashButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        ScreenUi()
        // Do any additional setup after loading the view.
    }

    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    
            ScreenUi()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func ScreenUi(){
        let logoy=DefaultLogo().AddLogo2(view: view)
        
        
        number=BBalashTextField(frame: CGRect(x: view.frame.width*0.1, y: CGFloat(logoy+view.frame.height*0.05), width: view.frame.width-view.frame.width*0.2, height: view.frame.height*0.07))
        number?.addTarget(self, action: #selector(numberDidChange(_:)), for: .editingChanged)
        number?.keyboardType = .decimalPad
        number?.placeholder="رقم المحمول"
        view.addSubview(number!)
        
         charge=BBalashTextField(frame: CGRect(x: view.frame.width*0.1, y: number!.frame.origin.y+view.frame.height*0.07+view.frame.height*0.01, width: view.frame.width-view.frame.width*0.2, height: view.frame.height*0.07))
        charge?.keyboardType = .decimalPad
        charge?.placeholder="قيمة الفاتورة / الشحن"
        charge?.addTarget(self, action: #selector(numberDidChange(_:)), for: .editingChanged)
        view.addSubview(charge!)
        
        login=BBalashButton(frame: CGRect(x: view.frame.width/4,y: (charge?.frame.origin.y)!+view.frame.height*0.05+view.frame.height*0.07,width: view.frame.width/2,height: view.frame.height*0.07))
        login?.setTitle("تسجيل الدخول", for: .normal)
        login?.addTarget(self, action: #selector(login_button), for: .touchUpInside)
        view.addSubview(login!)
        
    }
    
    func numberDidChange(_ textField: BBalashTextField) {
        textField.change_background()
        if((number?.text?.characters.count)!>0&&(charge?.text?.characters.count)!>0){
            login?.change_background(num: 1)
        }else{
            login?.change_background(num: 0)
        }
    }
    
    func login_button(sender: UIButton!) {
      
        
            UserDefaults.standard.set(Float((charge?.text)!), forKey: "charge")
            self.performSegue(withIdentifier: "Camera", sender: nil)
       
    }
    

}

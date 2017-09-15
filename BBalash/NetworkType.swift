//
//  NetworkType.swift
//  BBalash
//
//  Created by karim saad on 9/10/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class NetworkType: UIViewController {

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
        
        let nocart=RoundFrame().AddFrame(viewx: view,x: view.frame.width/4,y: view.frame.height-30-view.frame.height*0.07,width: view.frame.width/2,height: view.frame.height*0.07,stroke: false,stroke_color: UIColor.init(red: 247/255, green: 186/255, blue: 11/255, alpha: 1),fill_color: UIColor.init(red: 247/255, green: 186/255, blue: 11/255, alpha: 1),text_color: UIColor.init(red: 1, green: 1, blue: 1, alpha: 1),text: "إشتراك شهري - خط")
        nocart.addTarget(self, action: #selector(noCart), for: .touchUpInside)
        
        let cart=RoundFrame().AddFrame(viewx: view,x: view.frame.width/4,y: view.frame.height-30-view.frame.height*0.07-30-view.frame.height*0.07,width: view.frame.width/2,height: view.frame.height*0.07,stroke: false,stroke_color: UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1),fill_color: UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1),text_color: UIColor.init(red: 1, green: 1, blue: 1, alpha: 1),text: "إشتراك فوري - كارت")
        cart.addTarget(self, action: #selector(Cart), for: .touchUpInside)
    }
    
    func noCart(sender: UIButton!) {
        UserDefaults.standard.set("noCart", forKey: "type")
        self.performSegue(withIdentifier: "Login", sender: nil)
    }
    func Cart(sender: UIButton!) {
        UserDefaults.standard.set("Cart", forKey: "type")
        self.performSegue(withIdentifier: "Login", sender: nil)
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

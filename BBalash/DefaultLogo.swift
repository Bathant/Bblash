//
//  DefaultLogo.swift
//  BBalash
//
//  Created by karim saad on 9/10/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import Foundation
import UIKit

class DefaultLogo{
    
   

    func AddLogo1(view:UIView) -> Double{
        let image_background=UIImageView(frame:CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height))
        image_background.image=#imageLiteral(resourceName: "background")
        
        view.addSubview(image_background)
        
        let yellow_circle=UIImageView(frame:CGRect(x: (view.frame.width*0.5)-(view.frame.height*0.370/2), y: 30, width: view.frame.height*0.370, height: view.frame.height*0.370))
        yellow_circle.image=#imageLiteral(resourceName: "ring")
        
        view.addSubview(yellow_circle)
        
        let title=UILabel(frame: CGRect(x: 5, y: yellow_circle.frame.origin.y+yellow_circle.frame.height+10, width: view.frame.width-10, height: 30))
        title.text="bbalash بـــبــــلاش"
        title.textAlignment = .center
        title.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        title.font = UIFont.boldSystemFont(ofSize: view.frame.width/10)
        
        view.addSubview(title)
        
        let subtitle1=UILabel(frame: CGRect(x: 5, y: title.frame.origin.y+view.frame.width/10+10, width: view.frame.width-10, height: 20))
        subtitle1.text="Your Mobile Bill Always Free"
        subtitle1.textAlignment = .center
        subtitle1.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        subtitle1.font = UIFont.boldSystemFont(ofSize: view.frame.width*0.04533333)
        
        view.addSubview(subtitle1)
        
        let subtitle2=UILabel(frame: CGRect(x: 5, y: subtitle1.frame.origin.y+view.frame.width*0.04533333+5, width: view.frame.width-10, height: 20))
        subtitle2.text="فاتورة موبايلك ببلاش على طول"
        subtitle2.textAlignment = .center
        subtitle2.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        subtitle2.font = UIFont.boldSystemFont(ofSize: view.frame.width*0.04533333)
        
        view.addSubview(subtitle2)
        
        
        return Double(subtitle2.frame.origin.y+view.frame.width*0.04533333)
    
    }
    
    func AddLogo2(view:UIView) -> CGFloat{
        let image_background=UIImageView(frame:CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height))
        image_background.image=#imageLiteral(resourceName: "background")
        
        view.addSubview(image_background)
        
        let yellow_circle=UIImageView(frame:CGRect(x: (view.frame.width*0.25), y: 30, width: view.frame.width*0.20, height: view.frame.width*0.20))
        yellow_circle.image=#imageLiteral(resourceName: "ring2")
        
        view.addSubview(yellow_circle)
        
        let title=UILabel(frame: CGRect(x: view.frame.width*0.45+5, y: 40, width: yellow_circle.frame.height*0.3*7, height: yellow_circle.frame.height*0.3))
        title.text="bbalash"
        title.textAlignment = .left
        title.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        title.font = UIFont.boldSystemFont(ofSize: yellow_circle.frame.height*0.4)
        
        view.addSubview(title)
        
        let title2=UILabel(frame: CGRect(x: view.frame.width*0.45+5, y: 40+yellow_circle.frame.height*0.3, width: yellow_circle.frame.height*0.3*7, height: yellow_circle.frame.height*0.4))
        title2.text="بـــبـــــلاش"
        title2.textAlignment = .left
        title2.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        title2.font = UIFont.boldSystemFont(ofSize: yellow_circle.frame.height*0.3)
        
        view.addSubview(title2)
        
        let subtitle1=UILabel(frame: CGRect(x: 5, y: yellow_circle.frame.origin.y+view.frame.width*0.20+5, width: view.frame.width-10, height: 20))
        subtitle1.text="Your Mobile Bill Always Free"
        subtitle1.textAlignment = .center
        subtitle1.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        subtitle1.font = UIFont.boldSystemFont(ofSize: view.frame.width*0.035)
        
        view.addSubview(subtitle1)
        
        let subtitle2=UILabel(frame: CGRect(x: 5, y: subtitle1.frame.origin.y+view.frame.width*0.040+5, width: view.frame.width-10, height: 20))
        subtitle2.text="فاتورة موبايلك ببلاش على طول"
        subtitle2.textAlignment = .center
        subtitle2.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        subtitle2.font = UIFont.boldSystemFont(ofSize: view.frame.width*0.035)
        
        view.addSubview(subtitle2)
        
        
        return subtitle2.frame.origin.y+view.frame.width*0.040
        
    }

    func AddLogo3(view:UIView){
        let logo_view=UIView(frame: CGRect(x: view.frame.width/2-view.frame.width*0.33/2, y: 25, width: view.frame.width*0.33, height: view.frame.width*0.33*0.4))
        
        
        let yellow_circle=UIImageView(frame:CGRect(x: 0, y: 0, width: logo_view.frame.width*0.4, height: logo_view.frame.height))
        yellow_circle.image=#imageLiteral(resourceName: "ring2")
        
        logo_view.addSubview(yellow_circle)
        
        let title=UILabel(frame: CGRect(x: yellow_circle.frame.width+1, y: 2, width: logo_view.frame.width*0.6-1, height: logo_view.frame.height/2))
        title.text="bbalash"
        title.textAlignment = .center
        title.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        title.font = UIFont.boldSystemFont(ofSize: logo_view.frame.height/3-2)
        
        logo_view.addSubview(title)
        
        let title2=UILabel(frame: CGRect(x: yellow_circle.frame.width+1, y: logo_view.frame.height/2-3, width: logo_view.frame.width*0.6-1, height: logo_view.frame.height/2-1))
        title2.text="بـــبـــــلاش"
        title2.textAlignment = .center
        title2.textColor=UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        title2.font = UIFont.boldSystemFont(ofSize: logo_view.frame.height/3-2)
        
        logo_view.addSubview(title2)
        
        
        view.addSubview(logo_view)

    
    }


}

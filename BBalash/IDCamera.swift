//
//  IDCamera.swift
//  BBalash
//
//  Created by karim saad on 9/11/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class IDCamera: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    var backID:UIImageView!
    var frontID:UIImageView!
    var back_buton:UIButton!
    var front_buton:UIButton!
    var cameratype=0;
    override func viewDidLoad() {
        super.viewDidLoad()
        ScreenUi()
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ScreenUi(){
        let logoy=DefaultLogo().AddLogo2(view: view)
      
        let label = UILabel(frame: CGRect(x: view.frame.width*0.05, y: logoy, width: view.frame.width - view.frame.width*0.05*2, height: view.frame.height*0.35))
        label.textColor =  UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: view.frame.width*0.05)
        label.numberOfLines = 0
        label.textAlignment = .center
            label.text = "برجاء تجهيز البطاقة الشخصية لتصويرها و حفظها في الملف الخاص بحسابك لدينا و ذلك للتحقق من هوية صاحب فاتورة المحمول و مطابقتها مع شركة المحمول التابعة لخدمتكم. علماً بأن صورة بطاقتكم لن يتم تداولها مع أي جهة أخري."
            view.addSubview(label)
        
        
         frontID=UIImageView(frame: CGRect(x: view.frame.width*0.05, y: label.frame.origin.y + label.frame.height+10, width: view.frame.width*0.40, height: view.frame.width*0.40))
        frontID.image=#imageLiteral(resourceName: "yellow_frame_image")
        
         front_buton = UIButton(frame: CGRect(x: view.frame.width*0.05, y:label.frame.origin.y + label.frame.height+10, width: view.frame.width*0.40, height: view.frame.width*0.40))
        front_buton.setTitle("Front ID", for: .normal)
        front_buton.setTitleColor(UIColor.black, for: .normal)
        
        view.addSubview(frontID)
        view.addSubview(front_buton)

         backID=UIImageView(frame: CGRect(x: view.frame.width*0.55, y: label.frame.origin.y + label.frame.height+10, width: view.frame.width*0.40, height: view.frame.width*0.40))
        backID.image=#imageLiteral(resourceName: "yellow_frame_image")
        
         back_buton = UIButton(frame: CGRect(x: view.frame.width*0.55, y:label.frame.origin.y + label.frame.height+10, width: view.frame.width*0.40, height: view.frame.width*0.40))
        back_buton.setTitle("Back ID", for: .normal)
        back_buton.setTitleColor(UIColor.black, for: .normal)
        
        view.addSubview(backID)
        view.addSubview(back_buton)

        back_buton.addTarget(self, action: #selector(openCamera), for: .touchUpInside)
        front_buton.addTarget(self, action: #selector(openCamera), for: .touchUpInside)
        
        let Apply=RoundFrame().AddFrame(viewx: view,x: view.frame.width/4,y: front_buton.frame.origin.y+10+front_buton.frame.height,width: view.frame.width/2,height: view.frame.height*0.07,stroke: false,stroke_color: UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1),fill_color: UIColor.init(red: 32/255, green: 141/255, blue: 1, alpha: 1),text_color: UIColor.init(red: 1, green: 1, blue: 1, alpha: 1),text: "متابعة")
        Apply.addTarget(self, action: #selector(ApplyButton), for: .touchUpInside)
       
    }
    
    
    func openCamera(sender: UIButton!) {
        if(sender.titleLabel?.text=="Front ID"){
            cameratype=1
        }else if(sender.titleLabel?.text=="Back ID"){
            cameratype=2
        }
        let imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    func ApplyButton(sender: UIButton!) {
        self.performSegue(withIdentifier: "VideosScreen", sender: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickerImage=info[UIImagePickerControllerOriginalImage]as? UIImage{
            if(cameratype==1){
                frontID.image=pickerImage
                frontID.contentMode = .scaleToFill
                front_buton.setTitle("", for: .normal)
            }else{
            backID.image = pickerImage
                backID.contentMode = .scaleToFill
                back_buton.setTitle("", for: .normal)
            }
            picker.dismiss(animated: true, completion: nil)
        
        }
    }
 

}

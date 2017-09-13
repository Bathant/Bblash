//
//  SettingTableViewController.swift
//  Bblash
//
//  Created by starwallet on 9/12/17.
//  Copyright © 2017 starwallet. All rights reserved.
//

import UIKit

class SettingTableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var tableview :UITableView!
    var labeltext =  ["ضبط المستهدف و الإحصائيات","دليل الإستخدام","الشروط و الأحكام","التواصل و الإعلان معنا"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1)
        
        setuiscreen ()
        tableview.delegate = self
        tableview.dataSource = self
         tableview.register(SettingsTableViewCell.classForCoder(), forCellReuseIdentifier: "settingcell")
        // Do any additional setup after loading the view.
    }

 
    
    
    func setuiscreen()
    {
       let y = setUPProgressBar()
       
        SetupTableview(starty: y)
        
        let sharelabel  = UILabel(frame: CGRect(x: view.frame.width*0.12, y: view.frame.height*0.68, width: view.frame.width*0.7, height: view.frame.height*0.1))
        sharelabel.text = "إدعي أصدقائك لإستخدام تطبيق ببلاش"
        sharelabel.textAlignment = .center
        
        view.addSubview(sharelabel)
        
        
        let social_mediaviews =  UIView(frame: CGRect(x: view.frame.width*0.15, y: view.frame.height*0.8, width:  view.frame.width*0.7, height:  view.frame.height*0.05))
        //social_mediaviews.backgroundColor = .blue
        let facebookimage  = UIImageView(frame: CGRect(x: social_mediaviews.frame.width*0.1, y: 0, width: social_mediaviews.frame.width/16 , height: social_mediaviews.frame.height))
        facebookimage.image = #imageLiteral(resourceName: "Facebook-SocialMedia")
         social_mediaviews.addSubview(facebookimage)
          let twitterimage  = UIImageView(frame: CGRect(x: social_mediaviews.frame.width/4, y: 0, width: social_mediaviews.frame.width/6 , height: social_mediaviews.frame.height))
        twitterimage.image = #imageLiteral(resourceName: "Twiter-SocialMedia")
        social_mediaviews.addSubview(twitterimage)
        
      
        let whatsimage  = UIImageView(frame: CGRect(x: social_mediaviews.frame.width/2, y: 0, width: social_mediaviews.frame.width/8 , height: social_mediaviews.frame.height))
        whatsimage.image = #imageLiteral(resourceName: "Whatsapp-SocialMedia")
        social_mediaviews.addSubview(whatsimage)
        
        
        let gmailimage  = UIImageView(frame: CGRect(x: social_mediaviews.frame.width*0.7, y: 0, width: social_mediaviews.frame.width*0.18 , height: social_mediaviews.frame.height))
        gmailimage.image = #imageLiteral(resourceName: "Gmail-SocialMedia")
        social_mediaviews.addSubview(gmailimage)
        view.addSubview(social_mediaviews)
        
        
        
    }
    func SetupTableview(starty: CGFloat)
    {
    
   tableview = UITableView(frame: CGRect(x: 0, y: starty+view.frame.height*0.015, width: view.frame.width, height: view.frame.height/10*4))
        
    view.addSubview(tableview)
    
    }
    
    func  setUPProgressBar() -> CGFloat{
         let viewx = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height*0.15))
            viewx.backgroundColor = .white
        view.addSubview(viewx)
        let progressbarview =  ProgressBar().ProgressBarDraw(CGRect(x: 2, y: view.frame.height*0.1, width: view.frame.width-4  , height: view.frame.height*0.04))
        
        view.addSubview(progressbarview)
        return view.frame.height * 0.04 + view.frame.height*0.1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //*************************** Tableview Protocols  Functionalities *******************************//
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labeltext.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingcell", for: indexPath as IndexPath) as! SettingsTableViewCell
        
       cell.label.text = labeltext[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1).cgColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("height from tableview !!!!")
        print(view.frame.height/10)
        return view.frame.height/10
    }
  
    

    
    
    //#############   END OF Tableview Protocols  Functionalities #####################################//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

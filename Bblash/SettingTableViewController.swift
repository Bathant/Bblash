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
        
        
        
        
    }
    func SetupTableview(starty: CGFloat)
    {
    
   tableview = UITableView(frame: CGRect(x: 0, y: starty+view.frame.height*0.05, width: view.frame.width, height: view.frame.height/4+view.frame.height*0.01))
        
    view.addSubview(tableview)
    
    }
    
    func  setUPProgressBar() -> CGFloat{
         let viewx = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height*0.15))
            viewx.backgroundColor = .white
        view.addSubview(viewx)
        let progressbarview =  ProgressBar().ProgressBarDraw(CGRect(x: 2, y: view.frame.height*0.2, width: view.frame.width-4  , height: view.frame.height*0.04))
        
        view.addSubview(progressbarview)
        return view.frame.height * 0.04 + view.frame.height*0.2
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
    
    
  
    

    func settableview(starty:CGFloat){
        
        tableview = UITableView(frame: CGRect(x: 0, y: starty+view.frame.height*0.01, width: view.frame.width, height: view.frame.height - starty))
        view.addSubview(tableview)
        
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

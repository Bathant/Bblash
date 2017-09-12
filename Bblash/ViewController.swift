//
//  ViewController.swift
//  Bblash
//
//  Created by starwallet on 9/11/17.
//  Copyright © 2017 starwallet. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource,UITableViewDelegate,UITableViewDataSource {
    
    
    var list = ["الاقل قيمه","الاكثر قيمه ", "لاقل قيمه","الاكثر قيمه "]
    var imagesarr = [#imageLiteral(resourceName: "ads_image2"),#imageLiteral(resourceName: "ads_image1"),#imageLiteral(resourceName: "ads_image2"),#imageLiteral(resourceName: "ads_image1")]
    
    var searchDropDownView_labelres:UILabel!
    var dropdownmenu : UIPickerView!
    
    var tableview : UITableView!
    var   searchContainer : UIView!
    override func viewDidLoad() {
        print("*******************")
        print(view.frame.size.width)
        super.viewDidLoad()
        view.backgroundColor = .white
        let bottomY =  setUPProgressBar()
        let bottomSearchBar =  setupSearchBar(starty: bottomY)
        settableview(starty: bottomSearchBar)
    
        
        
        
        view.addSubview(searchContainer)
        self.dropdownmenu.delegate = self
        self.dropdownmenu.dataSource = self
        self.tableview.delegate = self
        
        self.tableview.dataSource = self
        tableview.register(CustomCellTableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
    }
    
    //*************************** Tableview Protocols  Functionalities *******************************//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       present(SettingTableViewController(), animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! CustomCellTableViewCell
        
        cell.backgroundImage.image = imagesarr[indexPath.row]
        
        cell.backgroundImage.contentMode = .center
        cell.price_label.text = "4.5"
        cell.addtitlelabel.text = "Mercedes GL 2017 Ad"
        cell.numofviewsView_label.text = "327k"
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 1
       // let image = UIImage(named: "playBtn")
            //   cell.accessoryType = .disclosureIndicator
       
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellimageheight  = CGFloat(#imageLiteral(resourceName: "ads_image1").size.height)
        
        return cellimageheight
    }
    
    
    func settableview(starty:CGFloat){
        
        tableview = UITableView(frame: CGRect(x: 0, y: starty+view.frame.height*0.01, width: view.frame.width, height: view.frame.height - starty))
        view.addSubview(tableview)
        
    }
    
    
    //#############   END OF Tableview Protocols  Functionalities #####################################//
    //*************************** UIPickerView Functionalities *******************************//
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
        
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        print(list.count)
        return list.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        // self.view.endEditing(true)
        
        return list[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        // self.pickerView(dropdownmenu, didSelectRow: row, inComponent: 1)
        var label: UILabel
        if let view = view as? UILabel { label = view }
        else { label = UILabel() }
        
        label.text = list[row]
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        
        return label
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.searchDropDownView_labelres.text = self.list[row]
        
        self.dropdownmenu.isHidden = true
        
    }
    
    //#######################End of  UIPickerView Functionalities ######################//
    
    func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        if(self.dropdownmenu.isHidden){
            
            self.dropdownmenu.isHidden = false
        } else{
            
            self.dropdownmenu.isHidden = true
        }
        
        
        // Your action
    }
    
    
    
    func setupSearchBar(starty: CGFloat)-> CGFloat{
         searchContainer  = UIView(frame: CGRect(x: 0, y: starty+starty*0.05, width: view.frame.width, height: view.frame.height*0.06))
        // searchContainer.backgroundColor = .black
        
        
        let searchDropDownView = UIView(frame: CGRect(x: searchContainer.frame.width*0.8, y: 0, width: searchContainer.frame.width*0.2, height: searchContainer.frame.height))
        // searchDropDownView.backgroundColor = .yellow
        
        let searchDropDownView_label = UILabel(frame: CGRect(x: searchDropDownView.frame.width*0.25, y: 0, width: searchDropDownView.frame.width*1/3, height: searchDropDownView.frame.height/2))
        
        searchDropDownView_label.text = "ترتيب"
        searchDropDownView_label.font = UIFont.systemFont(ofSize: searchDropDownView.frame.width*0.15)
        searchDropDownView_label.textColor = UIColor(red: 0, green: 162/255, blue: 255/255, alpha: 1)
        searchDropDownView_label.textAlignment = .center
        searchDropDownView.addSubview(searchDropDownView_label)
        
        
        let searchDropDownView_image = UIImageView(frame: CGRect(x: searchDropDownView.frame.width*2/3 , y: searchDropDownView.frame.height/2*0.3, width: searchDropDownView.frame.width*1/3*0.5 , height:searchDropDownView.frame.width*1/3*0.5))
        
        searchDropDownView_image.image = #imageLiteral(resourceName: "dropdownBtn")
        
        searchDropDownView.addSubview(searchDropDownView_image)
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        searchDropDownView_image.isUserInteractionEnabled = true
        searchDropDownView_image.addGestureRecognizer(tapGestureRecognizer)
        searchDropDownView_labelres = UILabel(frame: CGRect(x: 0, y: searchDropDownView.frame.height/2, width: searchDropDownView.frame.width, height: searchDropDownView.frame.height/2))
        
        searchDropDownView_labelres.text = "الاكثر قيمه "
        
        searchDropDownView_labelres.font = UIFont.systemFont(ofSize: searchDropDownView.frame.width*0.15)
        searchDropDownView_labelres.textColor = .gray
        searchDropDownView_labelres.textAlignment = .center
        searchDropDownView.addSubview(searchDropDownView_labelres)
        
        
        //dropdownmenu
        dropdownmenu  = UIPickerView(frame: CGRect(x: 0, y: searchDropDownView.frame.height/2, width: searchDropDownView.frame.width, height: searchDropDownView.frame.height*2))
        
        self.dropdownmenu.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        self.dropdownmenu.isHidden = true
        self.dropdownmenu.layer.cornerRadius = dropdownmenu.frame.height/3
        searchDropDownView.addSubview(dropdownmenu)
        searchContainer.addSubview(searchDropDownView)
        
        
        
        let searchBar = UIView(frame: CGRect(x: searchContainer.frame.width*0.05, y: 2, width: searchContainer.frame.width*0.75, height: searchContainer.frame.height-2))
        // searchBar.backgroundColor = .blue
        searchBar.layer.cornerRadius = searchBar.frame.height/2*0.8
        searchBar.layer.borderColor = UIColor(red: 248/255, green: 186/255, blue: 0, alpha: 1).cgColor
        searchBar.layer.borderWidth = 1
        searchContainer.addSubview(searchBar)
        let searchbar_image = UIImageView(frame: CGRect(x: searchBar.frame.width*0.87, y: searchBar.frame.height/2*0.3, width: searchBar.frame.width * 0.08, height:searchBar.frame.width * 0.12 - searchBar.frame.height/2*0.3))
        searchbar_image.image = #imageLiteral(resourceName: "search-icon")
        searchBar.addSubview(searchbar_image)
        
        let searchbar_textField = UITextField(frame: CGRect(x: 3, y: 2, width: searchBar.frame.width * 0.80, height: searchBar.frame.height-4))
        //searchbar_label.backgroundColor = .yellow
        searchbar_textField.placeholder = "بحث"
        searchbar_textField.font = UIFont.systemFont(ofSize: searchBar.frame.width*0.06)
        searchbar_textField.textColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1)
        searchbar_textField.textAlignment = .right
        searchBar.addSubview(searchbar_textField)
        
        view.addSubview(searchContainer)
        
        
        
        return starty+starty*0.05+view.frame.height*0.06
        
    }
    
    
    func  setUPProgressBar() -> CGFloat{
       let progressbarview =  ProgressBar().ProgressBarDraw(CGRect(x: 2, y: view.frame.height*0.2, width: view.frame.width-4  , height: view.frame.height*0.04))
       
        view.addSubview(progressbarview)
        return view.frame.height * 0.04 + view.frame.height*0.2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

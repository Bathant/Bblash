//
//  TargetSettings.swift
//  BBalash
//
//  Created by starwallet on 9/15/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit


class TargetSettings: UIViewController {
    var targetlabel:UILabel!
    var labels = ["إعلانات لم تشاهد حتى الأن","مشاهدات ناجحة","الأيام المتبقية لإتمام المستهدف","مشاهدات متبقية لإتمام المستهدف"]
    var labels_value  = ["3", "18", "20","34"]
    var main : MainScreen!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor=UIColor.init(red: 237/255, green: 236/255, blue: 239/255, alpha: 1)
        // setuiScreen()
        
        // Do any additional setup after loading the view.
    }
    func setupMain(main : MainScreen){
        
        
        self.main = main
        
    }
    
    
    func setuiScreen()
    {
        let headertxt = UILabel(frame: CGRect(x: view.frame.width*0.25, y: 0, width: view.frame.width*0.5, height: view.frame.height*0.1))
        // headertxt.backgroundColor = .black
        headertxt.text = "ضبط المستهدف و الرصيد"
        headertxt.textColor = Colors().Blue()
        headertxt.font = UIFont.systemFont(ofSize: view.frame.height*0.03)
        headertxt.textAlignment = .center
        view.addSubview(headertxt)
        
        targetlabel = UILabel(frame: CGRect(x: view.frame.width*0.25, y: headertxt.frame.height+view.frame.height*0.06/2*0.5, width: view.frame.width*0.5, height: view.frame.height*0.06))
        // targetlabel.backgroundColor = .black
        targetlabel.text = String(Int(main.progress.Max!))
        targetlabel.textColor = UIColor.darkGray
        targetlabel.font = UIFont.boldSystemFont(ofSize: targetlabel.frame.width*0.2)
        targetlabel.textAlignment = .center
        view.addSubview(targetlabel)
        
        let geneh = UILabel(frame: CGRect(x: view.frame.width*0.24, y:targetlabel.frame.origin.y+targetlabel.frame.height-1, width: view.frame.width*0.5, height: view.frame.height*0.01))
        //geneh.backgroundColor = .red
        geneh.text = "جنيه"
        geneh.textColor = UIColor.gray
        geneh.font = UIFont.boldSystemFont(ofSize: geneh.frame.width*0.05)
        geneh.textAlignment = .center
        view.addSubview(geneh)
        
        
        let DecButton = UIButton(frame: CGRect(x: view.frame.width*0.1, y: headertxt.frame.height, width: view.frame.width*0.15, height: view.frame.width*0.15))
        DecButton.layer.cornerRadius = DecButton.frame.width/2
        
        DecButton.setTitle("-", for: .normal)
        DecButton.setTitleColor(.white, for: .normal)
        
        DecButton.titleLabel?.font = UIFont.systemFont(ofSize: DecButton.frame.height*0.8)
        DecButton.titleLabel?.textAlignment = .center
        DecButton.clipsToBounds = true
        DecButton.backgroundColor = Colors().Blue()
        view.addSubview(DecButton)
        DecButton.addTarget(self, action: #selector(EditTargetLabel), for: .touchUpInside)
        let DecButton_label = UILabel(frame: CGRect(x: view.frame.width*0.1, y: DecButton.frame.origin.y+DecButton.frame.height, width: view.frame.width*0.15, height: view.frame.height*0.05))
        //DecButton_label.backgroundColor = .gray
        DecButton_label.text = "تقليل المستهدف"
        DecButton_label.numberOfLines = 2
        
        DecButton_label.textColor = UIColor.gray
        DecButton_label.font = UIFont.boldSystemFont(ofSize: view.frame.height*0.02)
        DecButton_label.textAlignment = .center
        view.addSubview(DecButton_label)
        
        
        
        
        
        
        
        let IncButton = UIButton(frame: CGRect(x: view.frame.width*0.75, y: headertxt.frame.height, width: view.frame.width*0.15, height: view.frame.width*0.15))
        IncButton.layer.cornerRadius = IncButton.frame.width/2
        
        IncButton.setTitle("+", for: .normal)
        IncButton.setTitleColor(.white, for: .normal)
        IncButton.contentVerticalAlignment = .top
        //IncButton.contentHorizontalAlignment = .center
        IncButton.titleLabel?.font = UIFont.systemFont(ofSize: IncButton.frame.height*0.8)
        
        IncButton.clipsToBounds = true
        IncButton.backgroundColor = UIColor(red: 248/255, green: 186/255, blue: 0, alpha: 1)
        view.addSubview(IncButton)
        IncButton.addTarget(self, action: #selector(EditTargetLabel), for: .touchUpInside)
        let IncButton_label = UILabel(frame: CGRect(x: view.frame.width*0.75, y: IncButton.frame.origin.y+IncButton.frame.height, width: view.frame.width*0.15, height: view.frame.height*0.05))
        // IncButton_label.backgroundColor = .gray
        IncButton_label.text = "زيادة المستهدف "
        IncButton_label.numberOfLines = 2
        IncButton_label.textColor = UIColor.gray
        IncButton_label.font = UIFont.boldSystemFont(ofSize: view.frame.height*0.02)
        IncButton_label.textAlignment = .center
        view.addSubview(IncButton_label)
        
        
        
        let savechanges  = RoundFrame().AddFrame(viewx: view, x:  targetlabel.frame.origin.x, y: IncButton_label.frame.origin.y+IncButton_label.frame.height+view.frame.height*0.02 , width: view.frame.width*0.5, height: view.frame.height*0.1, stroke: false, stroke_color: .white, fill_color: .white, text_color: Colors().Blue(), text: "حفظ التغيير")
        
        let y = IncButton_label.frame.origin.y+IncButton_label.frame.height+view.frame.height*0.02
        
        
        savechanges.titleLabel?.font = UIFont.systemFont(ofSize: savechanges.frame.width*0.1)
        savechanges.addTarget(self, action: #selector(EditTargetLabel), for: .touchUpInside)
        
        
        let statsticslabel = UILabel(frame: CGRect(x: view.frame.width*0.1, y: y+savechanges.frame.height+view.frame.height*0.05 , width: view.frame.width*0.5, height: view.frame.height*0.075))
        print("view of controller ")
        print(view.frame.height)
        
        // headertxt.backgroundColor = .black
        statsticslabel.text = "إحصائيات الشهر الحالي"
        statsticslabel.textColor = Colors().Blue()
        statsticslabel.font = UIFont.systemFont(ofSize: view.frame.height*0.03)
        statsticslabel.textAlignment = .left
        view.addSubview(statsticslabel)
        
        var label : UILabel!
        label = LabelWithInfo(labels :labels[0], label_info :labels_value[0], y:statsticslabel.frame.origin.y+statsticslabel.frame.height,label_infowidth:view.frame.width*0.15,stroke:false, strockcolor:.white , fillcolor: .gray ,textcolor: .white )
        label = LabelWithInfo(labels :labels[1], label_info :labels_value[1], y:label.frame.origin.y+label.frame.height+view.frame.height*0.053,label_infowidth:view.frame.width*0.30,stroke:false, strockcolor:.white , fillcolor: Colors().Blue() ,textcolor: .white )
        
        label = LabelWithInfo(labels :labels[2], label_info :labels_value[2], y: label.frame.origin.y+label.frame.height+view.frame.height*0.053,label_infowidth:view.frame.width*0.35,stroke:false, strockcolor:.white , fillcolor: Colors().Yellow() ,textcolor: .white )
        
        label = LabelWithInfo(labels :labels[3], label_info :labels_value[3], y: label.frame.origin.y+label.frame.height+view.frame.height*0.053,label_infowidth:view.frame.width*0.43,stroke:true, strockcolor:Colors().Yellow() , fillcolor: UIColor.init(red: 237/255, green: 236/255, blue: 239/255, alpha: 1) ,textcolor: Colors().Blue() )
        
        
        
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func LabelWithInfo(labels :String, label_info : String, y:CGFloat,label_infowidth:CGFloat,stroke:Bool, strockcolor:UIColor, fillcolor: UIColor ,textcolor: UIColor )->UILabel
    {
        let label1 =   Createlabel(y:y, text: labels)
        
        let label1_info = RoundFrame().AddFrameToLabels(viewx: view, x:  view.frame.width*0.05, y: label1.frame.origin.y+label1.frame.height, width: label_infowidth, height: view.frame.height*0.045, stroke: stroke, stroke_color: strockcolor, fill_color: fillcolor, text_color: textcolor, text: label_info)
        label1_info.font = UIFont.boldSystemFont(ofSize:view.frame.width*0.03)
        
        return label1
        
        
    }
    func Createlabel(y : CGFloat, text : String ) ->UILabel {
        let statsticslabel = UILabel(frame: CGRect(x: view.frame.width*0.1, y:y, width: view.frame.width*0.5, height: view.frame.height*0.03))
        print("view of controller ")
        print(view.frame.height)
        
        // headertxt.backgroundColor = .black
        statsticslabel.text = text
        statsticslabel.textColor = .darkGray
        statsticslabel.font = UIFont.systemFont(ofSize: view.frame.width*0.025)
        statsticslabel.textAlignment = .left
        view.addSubview(statsticslabel)
        
        return statsticslabel
        
        
    }
    
    func EditTargetLabel(_ sender: UIButton!){
        var number  = Int(targetlabel.text!)!
        if sender.titleLabel?.text == "+"{
            
            number  = number+5
            targetlabel.text = String (number)
            
        }
        else if sender.titleLabel?.text == "-"{
            if(number==0 || number<0 ){
                targetlabel.text = "0"
            }
            else{
                number  = number-5
                targetlabel.text = String( number)
            }
            
            
        }
            
        else if sender.titleLabel?.text == "حفظ التغيير"{
            
            main.updateMyProgress(max: CGFloat(number)
                , mincur: main.progress.minprogress, maxcur: main.progress.maxprogress, max_text: String(number), cur_text: main.progress.text_prog)
            targetlabel.text  = String(number)
            print("it's pressed ")
            
        }
        
        
        
        
        
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

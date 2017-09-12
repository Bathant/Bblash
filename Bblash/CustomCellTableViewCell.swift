//
//  CustomCellTableViewCell.swift
//  Bblash
//
//  Created by starwallet on 9/12/17.
//  Copyright © 2017 starwallet. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    var backgroundImage:UIImageView!
    var price_label : UILabel!
    var addtitlelabel :UILabel!
    var numofviewsView_label :UILabel!
    var  Playbtn :UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame = newFrame
            let height = #imageLiteral(resourceName: "ads_image1").size.height
            frame.size.height = height
            super.frame = frame
            
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //background view
        backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height))
        
        //Price_View
        
        let Price_view = UIView(frame: CGRect(x: contentView.frame.width*0.1, y: contentView.frame.height*0.85, width: contentView.frame.width*0.2, height: contentView.frame.height*0.1))
        price_label = UILabel(frame: CGRect(x:0 , y: 0, width: Price_view.frame.width, height: Price_view.frame.height))
        //price_label.text = "4.5 LE"
        price_label.textAlignment = .center
        price_label.textColor = .white
        price_label.font = UIFont.boldSystemFont(ofSize:contentView.frame.height*0.07)
        Price_view.backgroundColor = UIColor(red: 0, green: 162/255, blue: 255/255, alpha: 1)
        Price_view.layer.cornerRadius = Price_view.frame.height/2
        
        contentView.addSubview(backgroundImage)
        Price_view.addSubview(price_label)
        contentView.addSubview(Price_view)
        
        // title for ad
        
         addtitlelabel = UILabel(frame: CGRect(x: contentView.frame.width * 0.35, y: contentView.frame.height*0.85, width: contentView.frame.width*0.45, height: contentView.frame.height*0.1))
       // addtitlelabel.text = "Mercedes GL 2017 Ad"
        addtitlelabel.textColor = .white
        addtitlelabel.font = UIFont.boldSystemFont(ofSize:contentView.frame.height*0.05)
        
        contentView.addSubview(addtitlelabel)
        
        // number of views
        
       
        let numofviewsView = UIView(frame: CGRect(x: contentView.frame.width*0.9, y: contentView.frame.height*0.85, width: contentView.frame.width*0.25, height: contentView.frame.height*0.1))
        let  numofviewsView_image = UIImageView(frame: CGRect(x:numofviewsView.frame.width*0.05 , y: numofviewsView.frame.height*0.27, width: numofviewsView.frame.width/3, height: numofviewsView.frame.width/3*0.5))
        numofviewsView_image.image = #imageLiteral(resourceName: "numviews")
        numofviewsView_label = UILabel(frame: CGRect(x:numofviewsView.frame.width/3 , y: 0, width: numofviewsView.frame.width*2/3, height: numofviewsView.frame.height))
        numofviewsView_label.textAlignment = .center
        numofviewsView_label.textColor = .white
        //numofviewsView_label.text = "327K"
        numofviewsView_label.font = UIFont.systemFont(ofSize:contentView.frame.height*0.05)
        numofviewsView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)
        numofviewsView.layer.cornerRadius = numofviewsView.frame.height/2
        
        numofviewsView.addSubview(numofviewsView_image)
        numofviewsView.addSubview(numofviewsView_label)
        contentView.addSubview(numofviewsView)
        //!!
        
        // Play Button 
        
        let play_image  = UIImageView(frame: CGRect(x: contentView.frame.width/2*0.84, y: contentView.frame.height/2*0.68, width: contentView.frame.width/2*0.5, height: contentView.frame.width/2*0.5))
        play_image.image = #imageLiteral(resourceName: "playBtn")
        
        
         Playbtn = UIButton(frame: CGRect(x: contentView.frame.origin.x - contentView.frame.origin.x*0.1, y: contentView.frame.origin.y, width: contentView.frame.width/2, height: contentView.frame.height/2))
        
        contentView.addSubview(play_image)
        contentView.addSubview(Playbtn)
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}

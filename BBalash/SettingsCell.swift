//
//  SettingsCell.swift
//  BBalash
//
//  Created by karim saad on 9/13/17.
//  Copyright © 2017 karim saad. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {

    var label:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override var frame: CGRect{
    
        set{
            
            frame.size.width = UIScreen.main.bounds.maxX -  UIScreen.main.bounds.minX
            frame.size.height = (UIScreen.main.bounds.maxY -  UIScreen.main.bounds.minY)*0.15
            
            super.frame = frame
            
            
        }
        get{
            return super.frame
        }
    
    
    
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        label = UILabel(frame: CGRect(x: contentView.frame.width*0.05, y: 0, width: contentView.frame.width*0.7, height: contentView.frame.height))
        
         let Arrowindicator = UIImageView(frame: CGRect(x: contentView.frame.width*0.8, y:contentView.frame.height/2*0.6, width: contentView.frame.width*0.08, height: contentView.frame.width*0.08))
        Arrowindicator.image = #imageLiteral(resourceName: "Bluearrow")
        
        
        contentView.addSubview(label)
        contentView.addSubview(Arrowindicator)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

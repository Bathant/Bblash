//
//  SettingsTableViewCell.swift
//  Bblash
//
//  Created by starwallet on 9/12/17.
//  Copyright © 2017 starwallet. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    var label : UILabel!
    var Arrowindicator :UIImageView!
    
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
            frame.size.width = UIScreen.main.bounds.maxX-UIScreen.main.bounds.minX
            super.frame = frame
            
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        label = UILabel(frame: CGRect(x: contentView.frame.width*0.05, y: 0, width: contentView.frame.width*0.7, height: contentView.frame.height))
        
       Arrowindicator = UIImageView(frame: CGRect(x: contentView.frame.width*0.8, y: contentView.frame.height*0.05, width: contentView.frame.width*0.1, height: contentView.frame.width*0.1))
        Arrowindicator.image = #imageLiteral(resourceName: "Bluearrow")
        
        
        contentView.addSubview(label)
        contentView.addSubview(Arrowindicator)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

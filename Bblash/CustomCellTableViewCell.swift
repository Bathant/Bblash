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
        backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height))
        
        
        
        
        contentView.addSubview(backgroundImage)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

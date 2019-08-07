//
//  myCell.swift
//  SimpleCollection
//
//  Created by Larry Mcdowell on 8/7/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

class myCell: UICollectionViewCell {
    
    var text:String?{
        didSet{
            if let more = text {
                textLabel.text = more
                print("made")
            } else {
                return
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var textLabel:UILabel = {
        let content = UILabel()
        content.backgroundColor = .white
        content.textAlignment = .center
        content.layer.cornerRadius = 8
        content.layer.borderColor = UIColor.blue.cgColor
        content.layer.borderWidth = 2
        return content
    }()
}

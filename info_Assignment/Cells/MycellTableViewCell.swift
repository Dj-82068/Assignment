//
//  MycellTableViewCell.swift
//  info_Assignment
//
//  Created by Admin on 16/12/19.
//  Copyright © 2019 ccs. All rights reserved.
//

import UIKit

class MycellTableViewCell: UITableViewCell {
    let profileImageView:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 35
        img.clipsToBounds = true
        return img
    }()
    let Title:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor =  _ColorLiteralType(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let DetailedLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor =  _ColorLiteralType(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(profileImageView)
        self.contentView.addSubview(Title)
        self.contentView.addSubview(DetailedLabel)
        profileImageView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo:self.contentView.leadingAnchor, constant:10).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant:70).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant:70).isActive = true
        
        Title.topAnchor.constraint(equalTo:self.contentView.topAnchor).isActive = true
        Title.leadingAnchor.constraint(equalTo:self.profileImageView.trailingAnchor,constant:10).isActive = true
        Title.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor,constant:-10).isActive = true
        Title.numberOfLines = 0
        
        
        DetailedLabel.topAnchor.constraint(equalTo:self.Title.bottomAnchor).isActive = true
        DetailedLabel.leadingAnchor.constraint(equalTo:self.profileImageView.trailingAnchor,constant:10).isActive = true
        DetailedLabel.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor,constant:-10).isActive = true
        
        DetailedLabel.bottomAnchor.constraint(equalTo:self.contentView.bottomAnchor).isActive = true
        DetailedLabel.numberOfLines = 0
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

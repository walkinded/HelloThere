//
//  CommentCell.swift
//  HelloThere
//
//  Created by Роман Лабунский on 28.11.2021.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.desc.text = comment.body
    }
    
    
}

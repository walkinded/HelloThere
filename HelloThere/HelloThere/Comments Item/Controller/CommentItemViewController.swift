//
//  CommentItemViewController.swift
//  HelloThere
//
//  Created by Роман Лабунский on 28.11.2021.
//

import UIKit
import SnapKit

class CommentItemViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    func configure(with comment: Comment) {
        self.nameLable.text = comment.name
        self.descLable.text = comment.body
    }
    
    lazy var imgView: UIImageView = {
       let img = UIImageView()
        img.image = UIImage(named: "defaultImg")
        view.addSubview(img)
        img.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().inset(70)
//            maker.left.right.equalToSuperview().inset(20)
            maker.width.height.equalTo(100)
        }
        return img
    }()
    
    lazy var nameLable: UILabel = {
       let name = UILabel()
        name.text = "Name"
        name.numberOfLines = 0
        view.addSubview(name)
        name.snp.makeConstraints { (maker) in
            maker.left.right.equalToSuperview().inset(20)
            maker.top.equalTo(imgView).inset(120)
        }
        return name
    }()
    
    lazy var descLable: UILabel = {
       let desc = UILabel()
        desc.text = "Descriptoin"
        desc.numberOfLines = 0
        view.addSubview(desc)
        desc.snp.makeConstraints { (maker) in
            maker.left.right.equalToSuperview().inset(20)
            maker.top.equalTo(nameLable).inset(50)
        }
        return desc
    }()
    
}

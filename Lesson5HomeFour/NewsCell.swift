//
//  NewsCell.swift
//  Lesson5HomeFour
//
//  Created by user on 18/1/22.
//

import Foundation
import UIKit
import SnapKit


class NewsCell: UITableViewCell {
    
    lazy var titleImage: UIImageView = {
        let view = UIImageView()
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var titleName: UILabel = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 15)
        view.numberOfLines = 0
        return view
    }()
    
    lazy var titleDescription: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 15)
        view.textColor = .black
        view.numberOfLines = 0
        return view
    }()
    
    override func layoutSubviews() {
        
        addSubview(titleImage)
        titleImage.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
            make.centerY.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(80)
        }
        
        addSubview(titleName)
        titleName.snp.makeConstraints { make in
            make.right.equalTo(titleImage.snp.left).offset(-10)
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(40)
        }

        addSubview(titleDescription)
        titleDescription.snp.makeConstraints { make in
            make.right.equalTo(titleImage.snp.left).offset(-10)
            make.top.equalTo(titleName.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(15)
            make.bottom.equalToSuperview().offset(-6)
        }
        
    }
}

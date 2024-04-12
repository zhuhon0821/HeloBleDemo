//
//  BleDeviceCollectionViewCell.swift
//  HeloBleDemo
//
//  Created by AppleDev_9527 on 2024/4/12.
//

import UIKit

class BleDeviceCollectionViewCell: UICollectionViewCell {
    
    public var title:String? {
        didSet {
            titleLabel.text = title
        }
    }
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createSubview() {
        self.addSubview(self.titleLabel)
        self.titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
        }
    }
}

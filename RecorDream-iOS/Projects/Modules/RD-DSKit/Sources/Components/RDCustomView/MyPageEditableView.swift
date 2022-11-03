//
//  MyPageEditableView.swift
//  RD-DSKit
//
//  Created by Junho Lee on 2022/11/03.
//  Copyright © 2022 RecorDream. All rights reserved.
//

import UIKit

import RD_Core

import SnapKit
import RxSwift
import RxCocoa

public class MyPageEditableView: UIView {
    
    // MARK: - Properties
    
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let resultLabel: UILabel = {
        let label = UILabel()
        label.text = " "
        label.font = RDDSKitFontFamily.Pretendard.semiBold.font(size: 16.adjusted)
        label.textColor = .white
        label.sizeToFit()
        return label
    }()
    
    private let editingTextField: UITextField = {
        let tf = UITextField()
        tf.textColor = .white
        tf.font = RDDSKitFontFamily.Pretendard.semiBold.font(size: 16.adjusted)
        tf.tintColor = .white
        tf.sizeToFit()
        tf.isHidden = true
        return tf
    }()
    
    // MARK: - View Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setLayout()
        bind()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI & Layouts

extension MyPageEditableView {
    private func setUI() {
        self.backgroundColor = RDDSKitAsset.Colors.dark.color
    }
    
    private func setLayout() {
        self.addSubviews(resultLabel, editingTextField)
        
        self.snp.makeConstraints { make in
            make.height.equalTo(resultLabel)
        }
        
        resultLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        editingTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

// MARK: - Methods

extension MyPageEditableView {
    private func bind() {
    }
}


//
//  DreamNotePage.swift
//  Presentation
//
//  Created by 김수연 on 2022/12/20.
//  Copyright © 2022 RecorDream. All rights reserved.
//

import UIKit

import RD_DSKit

import RxSwift
import SnapKit

public final class DreamNoteViewController: UIViewController {

    // MARK: - Properties

    private enum Metric {
        static let noteLabelTop = 12.f
    }

    private var noteContent: String

    // MARK: - UI Components

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = RDDSKitFontFamily.Pretendard.semiBold.font(size: 14)
        label.textColor = RDDSKitAsset.Colors.white01.color
        label.text = "노트"
        return label
    }()

    private let placeHolder: UILabel = {
        let label = UILabel()
        label.text = "기록된 내용이 없어요."
        label.font = RDDSKitFontFamily.Pretendard.regular.font(size: 14)
        label.textColor = RDDSKitAsset.Colors.white04.color
        return label
    }()

    private let noteLabel: UILabel = {
        let label = UILabel()
        label.font = RDDSKitFontFamily.Pretendard.regular.font(size: 14)
        label.textColor = RDDSKitAsset.Colors.white01.color
        label.numberOfLines = 0
        return label
    }()


    // MARK: - View Life Cycle

    init(noteContent: String) {
        self.noteContent = noteContent
        super.init(nibName: nil, bundle: nil)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        self.setUI()
        self.setLayout()
        self.initView()
        self.bindNoteData()
    }

    // MARK: - UI & Layout
    private func setUI() {
        self.view.backgroundColor = .none
    }

    private func setLayout() {
        self.view.addSubviews(titleLabel, placeHolder, noteLabel)

        titleLabel.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
        }

        placeHolder.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(Metric.noteLabelTop)
            $0.leading.equalToSuperview()
        }

        noteLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(Metric.noteLabelTop)
            $0.leading.trailing.equalToSuperview()
        }
    }

    private func initView() {
        self.placeHolder.isHidden = true
        self.noteLabel.isHidden = true
    }

    private func bindNoteData() {
        if noteContent.isEmpty {
            self.placeHolder.isHidden = false
        } else {
            self.noteLabel.isHidden = false
            self.noteLabel.text = noteContent
        }
    }
}

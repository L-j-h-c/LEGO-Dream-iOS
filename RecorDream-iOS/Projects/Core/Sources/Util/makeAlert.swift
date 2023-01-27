//
//  makeAlert.swift
//
//  Created by Junho Lee on 2022/09/24.
//  Copyright © 2022 RecorDream. All rights reserved.
//

import UIKit

/**

  - Description:
 
            요청하는(OK,취소)버튼만 있는 UIAlertController를 간편하게 만들기 위한 extension입니다.

  - parameters:
    - title: 알림창에 뜨는 타이틀 부분입니다.
    - message: 타이틀 밑에 뜨는 메세지 부분입니다.
    - okAction: 확인버튼을 눌렀을 때 동작하는 부분입니다.
    - cancelAction: 취소버튼을 눌렀을 때 동작하는 부분입니다.
    - completion: 해당 UIAlertController가 띄워졌을 때, 동작하는 부분입니다.

  
 */
public extension UIViewController {
    func makeAlert(title: String,
                   message: String,
                   okAction: ((UIAlertAction) -> Void)? = nil,
                   completion : (() -> Void)? = nil) {
        makeVibrate()
        let alertViewController = UIAlertController(title: title, message: message,
                                                    preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: okAction)
        alertViewController.addAction(okAction)
        self.present(alertViewController, animated: true, completion: completion)
    }
    
    func makeAlertWithCancelDestructive(title: String,
                   message: String,
                   okActionTitle: String,
                   okAction: ((UIAlertAction) -> Void)? = nil,
                   completion : (() -> Void)? = nil) {
        makeVibrate()
        let alertViewController = UIAlertController(title: title, message: message,
                                                    preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "취소", style: .default)
        let okAction = UIAlertAction(title: okActionTitle, style: .destructive, handler: okAction)
        alertViewController.addAction(cancelAction)
        alertViewController.addAction(okAction)
        self.present(alertViewController, animated: true, completion: completion)
    }
    
    func makeAlertWithCancelDestructiveWithAction(title: String,
                   message: String,
                   okActionTitle: String,
                   okAction: ((UIAlertAction) -> Void)? = nil,
                   cancelAction : ((UIAlertAction) -> Void)? = nil) {
        makeVibrate()
        let alertViewController = UIAlertController(title: title, message: message,
                                                    preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: cancelAction)
        let okAction = UIAlertAction(title: okActionTitle, style: .destructive, handler: okAction)
        alertViewController.addAction(cancelAction)
        alertViewController.addAction(okAction)
        self.present(alertViewController, animated: true)
    }
}

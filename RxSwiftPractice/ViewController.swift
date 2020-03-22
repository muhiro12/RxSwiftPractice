//
//  ViewController.swift
//  RxSwiftPractice
//
//  Created by Hiromu Nakano on 2020/03/22.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import UIKit
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var firstText: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var secondButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        secondText.delegate = self

        _ = secondText.rx.text
            .bind(to: firstText.rx.text)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

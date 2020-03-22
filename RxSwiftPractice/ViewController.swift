//
//  ViewController.swift
//  RxSwiftPractice
//
//  Created by Hiromu Nakano on 2020/03/22.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondText: UILabel!
    @IBOutlet weak var secondButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstText.delegate = self
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

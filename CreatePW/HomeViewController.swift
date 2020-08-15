//
//  HomeViewController.swift
//  CreatePW
//
//  Created by 居朝強 on 2020/08/15.
//  Copyright © 2020 Cloud.Ju. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var englishCheckBox: CheckboxLabelView!
    @IBOutlet weak var numberCheckBox: CheckboxLabelView!
    @IBOutlet weak var symbolCheckbox: CheckboxLabelView!    
    @IBOutlet weak var custumSymbolBtn: UIButton!
    @IBOutlet weak var pwLengthTextField: UITextField!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var pwLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func custumSymbolBtnTouchInside(_ sender: Any) {
    }
    
    @IBAction func createBtnTouchInside(_ sender: Any) {
    }
    
    @IBAction func copyToTouchInside(_ sender: Any) {
    }
}


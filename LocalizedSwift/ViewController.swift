//
//  ViewController.swift
//  LocalizedSwift
//
//  Created by qq on 2020/2/22.
//  Copyright © 2020 yhy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func onButtonTap(_ sender: Any) {
        let language = Localisation.currentLanguage()
        if language == "en" {
            Localisation.setLanguage(language: "zh-Hans")
        }else{
            Localisation.setLanguage(language: "en")
        }
        label.text = Localisation.Trade.labelText
        
    }
}


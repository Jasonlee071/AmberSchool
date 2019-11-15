//
//  ViewController.swift
//  unit1_swift_helloworld
//
//  Created by JasonMBP on 2019/11/15.
//  Copyright © 2019 JasonMBP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController:viewDidLoad")
        let width = view.bounds.size.width
        let height = view.bounds.size.height
        label = UILabel(frame: CGRect(x: (width - 300) / 2, y: (height - 40) / 2, width: 300.0, height: 40.0))
        label.textAlignment = .center
        label.backgroundColor = .lightText
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 5.0
        
        let button = UIButton(frame: CGRect(x: (width - 150) / 2, y: label.frame.maxY + 20, width: 150, height: 44))
        button.setTitle("請點我", for: UIControl.State.normal)
        button.setTitle("恢復", for: .selected)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5;
        button.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 5.0
        button.addTarget(
            self,
            action: #selector(handleButtonClicked(button:)),
            for: .touchUpInside
        )
        
//        [button setTitle:@"請點我" forState:UIControlStateNormal];
//        [button setTitle:@"恢復" forState:UIControlStateSelected];
//        [button setBackgroundColor:[UIColor whiteColor]];
//        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//        button.layer.borderColor = [[UIColor blackColor] CGColor];
//        button.layer.shadowOpacity = 0.5;
//        button.layer.shadowOffset = CGSizeMake(3.0, 3.0);
//        button.layer.borderWidth = 1.0f;
//        button.layer.cornerRadius = 5.0f;
//        [button addTarget:self action:@selector(handleButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        
        view.backgroundColor = .cyan
        view.addSubview(label)
        view.addSubview(button)
    }

   @objc func handleButtonClicked(button: UIButton) {
        label.text = button.isSelected == true ? "" : "Hello World!!! Amber AppTeam"
        button.isSelected = !button.isSelected
    }

}


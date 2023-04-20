//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Eyüp Ensar Pirol on 20.04.2023.
//  Copyright © 2023 Eyüp Ensar Pirol. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        //overrideUserInterfaceStyle = .light
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
              
              if userInterfaceStyle == .dark {
                  changeButton.tintColor = UIColor.white
              } else {
                  changeButton.tintColor = UIColor.blue
              }
              
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
                    
                    if userInterfaceStyle == .dark {
                        changeButton.tintColor = UIColor.white
                    } else {
                        changeButton.tintColor = UIColor.blue
                    }
    }
    
    


}


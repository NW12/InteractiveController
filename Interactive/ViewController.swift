//
//  ViewController.swift
//  Interactive
//
//  Created by Nick Wilson on 13/11/2016.
//  Copyright © Nick Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diractioLockSwitch: UISwitch!
    @IBOutlet weak var dismissDirectionControll: UISegmentedControl!
    @IBOutlet weak var maskTypeSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showIntractive(_ sender: Any) {
    
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ExampleViewController") as? InteractiveViewController {
            
            vc.allowedDismissDirection = dismissDirection(rawValue: dismissDirectionControll.selectedSegmentIndex)!
            vc.directionLock = diractioLockSwitch.isOn
            vc.maskType = InteractiveMaskType(rawValue: UInt(maskTypeSegmentedControl.selectedSegmentIndex))!
            
            vc.showInteractive()
        }
        
        
    }
}


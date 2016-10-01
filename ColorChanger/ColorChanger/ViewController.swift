//
//  ViewController.swift
//  ColorChanger
//
//  Created by Ryan Flach on 10/1/16.
//  Copyright © 2016 Ryan Flach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColor(sender: UIButton) {
        if self.view.backgroundColor == UIColor.purple {
            self.view.backgroundColor = UIColor.white
        } else {
            self.view.backgroundColor = UIColor.purple
        }
    }

}

